
#include "program-option.hh"
#include "source-file.hh"
#include "memory-stream.hh"
#include "open-type-font.hh"
#include "main.hh"
#include "warn.hh"

LY_DEFINE (ly_pfb_2_pfa, "ly:pfb->pfa",
           1, 0, 0, (SCM pfb_file_name),
           "Convert the contents of a Type@tie{}1 font in PFB format"
           " to PFA format.")
{
  LY_ASSERT_TYPE (scm_is_string, pfb_file_name, 1);

  string file_name = ly_scm2string (pfb_file_name);

  debug_output ("[" + file_name); // start message on a new line

  vector<char> pfb_string = gulp_file (file_name, 0);
  char *pfa = pfb2pfa ((Byte *) &pfb_string[0], pfb_string.size ());

  SCM pfa_scm = scm_from_latin1_string (pfa);
  free (pfa);

  debug_output ("]", false);

  return pfa_scm;
}

LY_DEFINE (ly_otf_2_cff, "ly:otf->cff",
           1, 0, 0, (SCM otf_file_name),
           "Convert the contents of an OTF file to a CFF file,"
           " returning it as a string.")
{
  LY_ASSERT_TYPE (scm_is_string, otf_file_name, 1);

  string file_name = ly_scm2string (otf_file_name);
  debug_output ("[" + file_name); // start message on a new line

  FT_Face face = open_ft_face (file_name, 0 /* index */);
  string table = get_otf_table (face, "CFF ");

  SCM asscm = scm_from_latin1_stringn ((char *) table.data (),
                                       table.length ());

  debug_output ("]", false);

  return asscm;
}
