/*
  This file is part of LilyPond, the GNU music typesetter.

  Copyright (C) 2016 David Kastrup <dak@gnu.org>

  LilyPond is free software: you can redistribute it and/or modify
  it under the terms of the GNU General Public License as published by
  the Free Software Foundation, either version 3 of the License, or
  (at your option) any later version.

  LilyPond is distributed in the hope that it will be useful,
  but WITHOUT ANY WARRANTY; without even the implied warranty of
  MERCHANTABILITY or FITNESS FOR A PARTICULAR PURPOSE.  See the
  GNU General Public License for more details.

  You should have received a copy of the GNU General Public License
  along with LilyPond.  If not, see <http://www.gnu.org/licenses/>.
*/

#include "lily-guile.hh"
#include "context.hh"
#include "input.hh"
#include "international.hh"
#include "moment.hh"
#include "music.hh"
#include "music-wrapper-iterator.hh"

class Wait_iterator : public Music_wrapper_iterator
{
  bool triggered_;
  SCM procedure_;
protected:
  virtual void derived_mark () const;
  virtual Moment pending_moment () const;
  virtual void process (Moment);
  virtual bool ok () const;
  virtual bool run_always () const;
public:
  Wait_iterator ();
  DECLARE_SCHEME_CALLBACK (constructor, ());
  virtual void construct_children ();
};

Wait_iterator::Wait_iterator ()
  : triggered_ (false), procedure_ (SCM_UNDEFINED)
{
}

void
Wait_iterator::derived_mark () const
{
  scm_gc_mark (procedure_);
}

Moment
Wait_iterator::pending_moment () const
{
  if (triggered_)
    return Moment (0);
  Moment m;
  m.set_infinite (1);
  return m;
}

bool
Wait_iterator::run_always () const
{
  return triggered_
    || !Music_wrapper_iterator::ok ()
    || Music_wrapper_iterator::run_always ();
}
  
void
Wait_iterator::process (Moment m)
{
  if (triggered_)
    return;
  if (scm_is_true (scm_call_1 (procedure_, get_outlet ()->self_scm ())))
    {
      triggered_ = true;
      return;
    }
  if (!Music_wrapper_iterator::ok ())
    {
      Music_wrapper_iterator::construct_children ();
      if (!Music_wrapper_iterator::ok ())
        return;
    }
  Music_wrapper_iterator::process (m);
}

bool
Wait_iterator::ok () const
{
  return !triggered_;
}

void
Wait_iterator::construct_children ()
{
  procedure_ = get_music ()->get_property ("procedure");
  if (!ly_is_procedure (procedure_))
    {
      get_music ()->origin ()->warning (_ ("Bad procedure"));
      triggered_ = true;
      return;
    }

  Music_iterator::construct_children ();
}

IMPLEMENT_CTOR_CALLBACK (Wait_iterator)
