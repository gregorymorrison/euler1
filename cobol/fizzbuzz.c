/* Generated from fizzbuzz.cob by cobc 1.1.0 */
/* Built -    Feb  9 2011 03:57:02 */
/* Packaged - Mon Aug 11 11:27:01 CEST 2008 */

#define  __USE_STRING_INLINES 1
#include <stdio.h>
#include <stdlib.h>
#include <string.h>
#include <math.h>
#include <libcob.h>

#define COB_SOURCE_FILE		"fizzbuzz.cob"
#define COB_PACKAGE_VERSION	"1.1"
#define COB_PATCH_LEVEL		0

/* function prototypes */
static int fizzbuzz_ (const int);

int fizzbuzz (void);

int
main (int argc, char **argv)
{
  cob_init (argc, argv);
  cob_stop_run (fizzbuzz ());
}

/* functions */

int
fizzbuzz ()
{
  return fizzbuzz_ (0);
}

/* end functions */

static int
fizzbuzz_ (const int entry)
{

#include "fizzbuzz.c.h"  /* local variables */

  static int initialized = 0;
  static cob_field *cob_user_parameters[COB_MAX_FIELD_PARAMS];
  static cob_module module = { NULL, NULL, &f_8, NULL, cob_user_parameters, 0, '.', '$', ',', 1, 1, 1, 0};


  /* perform frame stack */
  int frame_index;
  struct frame {
  	int  perform_through;
  	void *return_address;
  } frame_stack[255];

  /* Start of function code */

  if (unlikely(entry < 0)) {
  	if (!initialized) {
  		return 0;
  	}
  	initialized = 0;
  	return 0;
  }

  module.next = cob_current_module;
  cob_current_module = &module;

  if (unlikely(initialized == 0))
    {
      if (!cob_initialized) {
        cob_fatal_error (COB_FERROR_INITIALIZED);
      }
      cob_check_version (COB_SOURCE_FILE, COB_PACKAGE_VERSION, COB_PATCH_LEVEL);
      (*(int *) (b_1)) = 0;
      (*(int *) (b_2)) = 0;
      (*(int *) (b_3)) = 0;
      memcpy (b_5, "001", 3);
      memset (b_6, 48, 3);
      memset (b_7, 48, 3);
      memset (b_8, 48, 4);


      initialized = 1;
    }

  /* initialize frame stack */
  frame_index = 0;
  frame_stack[0].perform_through = -1;

  /* initialize number of call params */
  (*(int *) (b_3))   = cob_call_params;
  cob_save_call_params = cob_call_params;

  goto l_2;

  /* PROCEDURE DIVISION */


  /* fizzbuzz: */

  l_2:;

  /* MAIN SECTION: */

  /* MAIN PARAGRAPH: */

  /* fizzbuzz.cob:13: PERFORM */
  cob_set_location ("fizzbuzz", "fizzbuzz.cob", 13, "MAIN SECTION", "MAIN PARAGRAPH", "PERFORM");
  {
    while (1)
      {
        if (((int)cob_cmp_numdisp (b_5, 3, 100) >  0))
          break;
        {
          /* fizzbuzz.cob:14: DIVIDE */
          cob_set_location ("fizzbuzz", "fizzbuzz.cob", 14, "MAIN SECTION", "MAIN PARAGRAPH", "DIVIDE");
          {
            cob_div_quotient (&f_5, &c_1, &f_7, 2);
            cob_div_remainder (&f_6, 2);
          }
          /* fizzbuzz.cob:15: IF */
          cob_set_location ("fizzbuzz", "fizzbuzz.cob", 15, "MAIN SECTION", "MAIN PARAGRAPH", "IF");
          {
            if (((int)cob_cmp_numdisp (b_6, 3, 0) == 0))
              {
                /* fizzbuzz.cob:17: DISPLAY */
                cob_set_location ("fizzbuzz", "fizzbuzz.cob", 17, "MAIN SECTION", "MAIN PARAGRAPH", "DISPLAY");
                {
                  cob_new_display (0, 0, 1, &c_2);
                }
              }
            else
              {
                /* fizzbuzz.cob:19: DIVIDE */
                cob_set_location ("fizzbuzz", "fizzbuzz.cob", 19, "MAIN SECTION", "MAIN PARAGRAPH", "DIVIDE");
                {
                  cob_div_quotient (&f_5, &c_3, &f_7, 2);
                  cob_div_remainder (&f_6, 2);
                }
                /* fizzbuzz.cob:20: IF */
                cob_set_location ("fizzbuzz", "fizzbuzz.cob", 20, "MAIN SECTION", "MAIN PARAGRAPH", "IF");
                {
                  if (((int)cob_cmp_numdisp (b_6, 3, 0) == 0))
                    {
                      /* fizzbuzz.cob:22: DISPLAY */
                      cob_set_location ("fizzbuzz", "fizzbuzz.cob", 22, "MAIN SECTION", "MAIN PARAGRAPH", "DISPLAY");
                      {
                        cob_new_display (0, 0, 1, &c_4);
                      }
                    }
                  else
                    {
                      /* fizzbuzz.cob:24: DIVIDE */
                      cob_set_location ("fizzbuzz", "fizzbuzz.cob", 24, "MAIN SECTION", "MAIN PARAGRAPH", "DIVIDE");
                      {
                        cob_div_quotient (&f_5, &c_5, &f_7, 2);
                        cob_div_remainder (&f_6, 2);
                      }
                      /* fizzbuzz.cob:25: IF */
                      cob_set_location ("fizzbuzz", "fizzbuzz.cob", 25, "MAIN SECTION", "MAIN PARAGRAPH", "IF");
                      {
                        if (((int)cob_cmp_numdisp (b_6, 3, 0) == 0))
                          {
                            /* fizzbuzz.cob:27: DISPLAY */
                            cob_set_location ("fizzbuzz", "fizzbuzz.cob", 27, "MAIN SECTION", "MAIN PARAGRAPH", "DISPLAY");
                            {
                              cob_new_display (0, 0, 1, &c_6);
                            }
                          }
                        else
                          {
                            /* fizzbuzz.cob:29: DISPLAY */
                            cob_set_location ("fizzbuzz", "fizzbuzz.cob", 29, "MAIN SECTION", "MAIN PARAGRAPH", "DISPLAY");
                            {
                              cob_new_display (0, 0, 2, &f_5, &c_7);
                            }
                          }
                      }
                    }
                }
              }
          }
          /* fizzbuzz.cob:33: ADD */
          cob_set_location ("fizzbuzz", "fizzbuzz.cob", 33, "MAIN SECTION", "MAIN PARAGRAPH", "ADD");
          {
            cob_add (&f_5, &c_8, 2);
          }
        }
      }
  }
  /* fizzbuzz.cob:35: DISPLAY */
  cob_set_location ("fizzbuzz", "fizzbuzz.cob", 35, "MAIN SECTION", "MAIN PARAGRAPH", "DISPLAY");
  {
    cob_new_display (0, 1, 1, &c_9);
  }
  /* fizzbuzz.cob:36: STOP */
  cob_set_location ("fizzbuzz", "fizzbuzz.cob", 36, "MAIN SECTION", "MAIN PARAGRAPH", "STOP");
  {
    cob_stop_run ((*(int *) (b_1)));
  }

  cob_current_module = cob_current_module->next;
  return (*(int *) (b_1));

}

/* end function stuff */

