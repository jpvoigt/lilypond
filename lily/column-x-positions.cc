/*
  colhpos.cc -- implement Column_x_positions

  source file of the GNU LilyPond music typesetter

  (c)  1997--1999 Han-Wen Nienhuys <hanwen@cs.uu.nl>
*/

#include "column-x-positions.hh"
#include "simple-spacer.hh"	// ugh
#include "real.hh"
#include "debug.hh"

Column_x_positions::Column_x_positions()
{
  energy_f_ = infinity_f;
  satisfies_constraints_b_ = false;
  spacer_l_ =0;
}

Column_x_positions::~Column_x_positions()
{

}

void
Column_x_positions::add_paper_column (Paper_column*c)
{
  cols_.push (c);
}

void
Column_x_positions::print() const
{
#ifndef NPRINT
  DEBUG_OUT << "energy : " << energy_f_ << '\n';
  DEBUG_OUT << "line of " << config_.size() << " cols\n";
#endif
}








