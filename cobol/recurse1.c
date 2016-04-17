/* Generated from recurse1.cob by cobc 1.1.0 */
/* Built -    Feb  9 2011 03:57:02 */
/* Packaged - Mon Aug 11 11:27:01 CEST 2008 */

#define  __USE_STRING_INLINES 1
#include <stdio.h>
#include <stdlib.h>
#include <string.h>
#include <math.h>
#include <libcob.h>

#define COB_SOURCE_FILE		"recurse1.cob"
#define COB_PACKAGE_VERSION	"1.1"
#define COB_PATCH_LEVEL		0

/* function prototypes */
static int myTest_ (const int);

int myTest (void);

int
main (int argc, char **argv)
{
  cob_init (argc, argv);
  cob_stop_run (myTest ());
}

/* functions */

int
myTest ()
{
  return myTest_ (0);
}

/* end functions */

static int
myTest_ (const int entry)
{

#include "recurse1.c.h"  /* local variables */

  static int initialized = 0;
  static cob_field *cob_user_parameters[COB_MAX_FIELD_PARAMS];
  static cob_module module = { NULL, NULL, &f_7, NULL, cob_user_parameters, 0, '.', '$', ',', 1, 1, 1, 0};


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
      memcpy (b_5, "0999", 4);
      memset (b_6, 48, 9);
      memset (b_7, 48, 4);


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


  /* myTest: */

  l_2:;

  /* MAIN SECTION: */

  /* MAIN PARAGRAPH: */

  /* recurse1.cob:10: CALL */
  cob_set_location ("myTest", "recurse1.cob", 10, "MAIN SECTION", "MAIN PARAGRAPH", "CALL");
  {
    {
      int (*func)();
      unsigned char content_1[4] __attribute__((aligned));

      memcpy (content_1, b_5, 4);
      module.cob_procedure_parameters[0] = &f_5;
      module.cob_procedure_parameters[1] = &f_6;
      module.cob_procedure_parameters[2] = NULL;
      module.cob_procedure_parameters[3] = NULL;
      module.cob_procedure_parameters[4] = NULL;
      module.cob_procedure_parameters[5] = NULL;
      cob_call_params = 2;
      func = cob_resolve_1 ((const char *)"euler1");
      (*(int *) (b_1)) = func (content_1, b_6);
    }
  }
  /* recurse1.cob:12: DISPLAY */
  cob_set_location ("myTest", "recurse1.cob", 12, "MAIN SECTION", "MAIN PARAGRAPH", "DISPLAY");
  {
    cob_new_display (0, 1, 1, &f_6);
  }
  /* recurse1.cob:13: STOP */
  cob_set_location ("myTest", "recurse1.cob", 13, "MAIN SECTION", "MAIN PARAGRAPH", "STOP");
  {
    cob_stop_run ((*(int *) (b_1)));
  }

  cob_current_module = cob_current_module->next;
  return (*(int *) (b_1));

}

/* function prototypes */
static int euler1_ (const int, unsigned char *, unsigned char *);

int euler1 (unsigned char *, unsigned char *);


/* functions */

int
euler1 (unsigned char *b_14, unsigned char *b_15)
{
  return euler1_ (0, b_14, b_15);
}

/* end functions */

static int
euler1_ (const int entry, unsigned char *b_14, unsigned char *b_15)
{

#include "recurse1.c.h"  /* local variables */

  static int initialized = 0;
  static cob_field *cob_user_parameters[COB_MAX_FIELD_PARAMS];
  static cob_module module = { NULL, NULL, &f_16, NULL, cob_user_parameters, 0, '.', '$', ',', 1, 1, 1, 0};


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
      if (module.next)
        cob_set_cancel ((const char *)"euler1", (void *)euler1, (void *)euler1_);
      (*(int *) (b_8)) = 0;
      (*(int *) (b_9)) = 0;
      (*(int *) (b_10)) = 0;
      memset (b_12, 48, 3);
      memset (b_13, 48, 3);
      memset (b_16, 48, 4);


      initialized = 1;
    }

  /* initialize frame stack */
  frame_index = 0;
  frame_stack[0].perform_through = -1;

  /* initialize number of call params */
  (*(int *) (b_10))   = cob_call_params;
  cob_save_call_params = cob_call_params;

  goto l_5;

  /* PROCEDURE DIVISION */


  /* euler1: */

  l_5:;

  /* MAIN SECTION: */

  /* MAIN PARAGRAPH: */

  /* recurse1.cob:26: PERFORM */
  cob_set_location ("euler1", "recurse1.cob", 26, "MAIN SECTION", "MAIN PARAGRAPH", "PERFORM");
  {
    while (1)
      {
        if (((int)cob_cmp_numdisp (b_14, 4, 0) <= 0))
          break;
        {
          /* recurse1.cob:27: DIVIDE */
          cob_set_location ("euler1", "recurse1.cob", 27, "MAIN SECTION", "MAIN PARAGRAPH", "DIVIDE");
          {
            cob_div_quotient ((f_14.data = b_14, &f_14), &c_1, &f_12, 2);
            cob_div_remainder (&f_13, 2);
          }
          /* recurse1.cob:28: IF */
          cob_set_location ("euler1", "recurse1.cob", 28, "MAIN SECTION", "MAIN PARAGRAPH", "IF");
          {
            if (((int)cob_cmp_numdisp (b_13, 3, 0) == 0))
              {
                /* recurse1.cob:29: ADD */
                cob_set_location ("euler1", "recurse1.cob", 29, "MAIN SECTION", "MAIN PARAGRAPH", "ADD");
                {
                  cob_add ((f_15.data = b_15, &f_15), (f_14.data = b_14, &f_14), 2);
                }
              }
            else
              {
                /* recurse1.cob:31: DIVIDE */
                cob_set_location ("euler1", "recurse1.cob", 31, "MAIN SECTION", "MAIN PARAGRAPH", "DIVIDE");
                {
                  cob_div_quotient ((f_14.data = b_14, &f_14), &c_2, &f_12, 2);
                  cob_div_remainder (&f_13, 2);
                }
                /* recurse1.cob:32: IF */
                cob_set_location ("euler1", "recurse1.cob", 32, "MAIN SECTION", "MAIN PARAGRAPH", "IF");
                {
                  if (((int)cob_cmp_numdisp (b_13, 3, 0) == 0))
                    {
                      /* recurse1.cob:33: ADD */
                      cob_set_location ("euler1", "recurse1.cob", 33, "MAIN SECTION", "MAIN PARAGRAPH", "ADD");
                      {
                        cob_add ((f_15.data = b_15, &f_15), (f_14.data = b_14, &f_14), 2);
                      }
                    }
                }
              }
          }
          /* recurse1.cob:37: ADD */
          cob_set_location ("euler1", "recurse1.cob", 37, "MAIN SECTION", "MAIN PARAGRAPH", "ADD");
          {
            cob_add ((f_14.data = b_14, &f_14), &c_3, 2);
          }
        }
      }
  }
  /* recurse1.cob:39: EXIT */
  cob_set_location ("euler1", "recurse1.cob", 39, "MAIN SECTION", "MAIN PARAGRAPH", "EXIT");
  {
    if (module.next)
      goto exit_program;
  }

  exit_program:
  cob_current_module = cob_current_module->next;
  return (*(int *) (b_8));

}

/* end function stuff */

