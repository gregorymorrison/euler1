/* Generated from recurse.cob by cobc 1.1.0 */
/* Built -    Feb  9 2011 03:57:02 */
/* Packaged - Mon Aug 11 11:27:01 CEST 2008 */

#define  __USE_STRING_INLINES 1
#include <stdio.h>
#include <stdlib.h>
#include <string.h>
#include <math.h>
#include <libcob.h>

#define COB_SOURCE_FILE		"recurse.cob"
#define COB_PACKAGE_VERSION	"1.1"
#define COB_PATCH_LEVEL		0

/* function prototypes */
static int recurse_ (const int, unsigned char *);

int recurse (void);

int
main (int argc, char **argv)
{
  cob_init (argc, argv);
  cob_stop_run (recurse ());
}

/* functions */

int
recurse ()
{
  return recurse_ (0, NULL);
}

int
_3300_2Derr (unsigned char *b_10)
{
  return recurse_ (1, b_10);
}

/* end functions */

static int
recurse_ (const int entry, unsigned char *b_10)
{

#include "recurse.c.h"  /* local variables */

  static int initialized = 0;
  static cob_field *cob_user_parameters[COB_MAX_FIELD_PARAMS];
  static cob_module module = { NULL, NULL, &f_11, NULL, cob_user_parameters, 0, '.', '$', ',', 1, 1, 1, 0};


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
      memset (b_5, 48, 3);
      memset (b_6, 0, 4);
      *(b_7) = 0;
      memset (b_8, 0, 2);
      memset (b_9, 0, 4);
      memset (b_11, 48, 4);


      initialized = 1;
    }

  /* initialize frame stack */
  frame_index = 0;
  frame_stack[0].perform_through = -1;

  /* initialize number of call params */
  (*(int *) (b_3))   = cob_call_params;
  cob_save_call_params = cob_call_params;

  switch (entry)
    {
    case 0:
      goto l_2;
    case 1:
      goto l_7;
    }

  /* PROCEDURE DIVISION */


  /* recurse: */

  l_2:;

  /* MAIN SECTION: */

  /* 100-main: */

  /* recurse.cob:18: SET */
  cob_set_location ("recurse", "recurse.cob", 18, "MAIN SECTION", "100-main", "SET");
  {
    (*(void **) (b_6)) = cob_call_resolve (&c_1);
  }
  /* recurse.cob:20: CALL */
  cob_set_location ("recurse", "recurse.cob", 20, "MAIN SECTION", "100-main", "CALL");
  {
    {

      module.cob_procedure_parameters[0] = &f_7;
      module.cob_procedure_parameters[1] = &f_6;
      module.cob_procedure_parameters[2] = NULL;
      module.cob_procedure_parameters[3] = NULL;
      module.cob_procedure_parameters[4] = NULL;
      module.cob_procedure_parameters[5] = NULL;
      cob_call_params = 2;
      (*(int *) (b_1)) = CBL_ERROR_PROC (b_7, b_6);
      cob_set_int (&f_8, (*(int *) (b_1)));
    }
  }
  /* recurse.cob:24: IF */
  cob_set_location ("recurse", "recurse.cob", 24, "MAIN SECTION", "100-main", "IF");
  {
    if (((int)cob_cmp_u16_binary (b_8, 0) != 0))
      {
        /* recurse.cob:25: DISPLAY */
        cob_set_location ("recurse", "recurse.cob", 25, "MAIN SECTION", "100-main", "DISPLAY");
        {
          cob_new_display (0, 1, 1, &c_2);
        }
        /* recurse.cob:26: STOP */
        cob_set_location ("recurse", "recurse.cob", 26, "MAIN SECTION", "100-main", "STOP");
        {
          cob_stop_run ((*(int *) (b_1)));
        }
      }
  }
  /* recurse.cob:29: MOVE */
  cob_set_location ("recurse", "recurse.cob", 29, "MAIN SECTION", "100-main", "MOVE");
  {
    memset (b_5, 48, 3);
  }
  /* recurse.cob:30: DISPLAY */
  cob_set_location ("recurse", "recurse.cob", 30, "MAIN SECTION", "100-main", "DISPLAY");
  {
    cob_new_display (0, 1, 1, &c_3);
  }
  /* recurse.cob:31: PERFORM */
  cob_set_location ("recurse", "recurse.cob", 31, "MAIN SECTION", "100-main", "PERFORM");
  {
    /* PERFORM 200-mung THRU 200-mung */
    if (unlikely(++frame_index >= COB_STACK_SIZE))
        cob_fatal_error (COB_FERROR_STACK);
    frame_stack[frame_index].perform_through = 5;
    frame_stack[frame_index].return_address = &&l_8;
    goto l_5;
    l_8:
    frame_index--;
  }
  /* recurse.cob:32: DISPLAY */
  cob_set_location ("recurse", "recurse.cob", 32, "MAIN SECTION", "100-main", "DISPLAY");
  {
    cob_new_display (0, 1, 1, &c_4);
  }
  /* recurse.cob:33: STOP */
  cob_set_location ("recurse", "recurse.cob", 33, "MAIN SECTION", "100-main", "STOP");
  {
    cob_stop_run ((*(int *) (b_1)));
  }

  /* 200-mung: */

  l_5:;
  /* recurse.cob:36: ADD */
  cob_set_location ("recurse", "recurse.cob", 36, "MAIN SECTION", "200-mung", "ADD");
  {
    cob_add (&f_5, &c_5, 2);
  }
  /* recurse.cob:37: DISPLAY */
  cob_set_location ("recurse", "recurse.cob", 37, "MAIN SECTION", "200-mung", "DISPLAY");
  {
    cob_new_display (0, 1, 1, &f_5);
  }
  /* recurse.cob:38: PERFORM */
  cob_set_location ("recurse", "recurse.cob", 38, "MAIN SECTION", "200-mung", "PERFORM");
  {
    /* PERFORM 200-mung THRU 200-mung */
    if (unlikely(++frame_index >= COB_STACK_SIZE))
        cob_fatal_error (COB_FERROR_STACK);
    frame_stack[frame_index].perform_through = 5;
    frame_stack[frame_index].return_address = &&l_9;
    goto l_5;
    l_9:
    frame_index--;
  }

  if (frame_stack[frame_index].perform_through == 5)
    goto *frame_stack[frame_index].return_address;

  /* 300-err: */

  /* recurse.cob:40: ENTRY */
  cob_set_location ("recurse", "recurse.cob", 40, "MAIN SECTION", "300-err", "ENTRY");

  /* _3300_2Derr: */

  l_7:;
  /* recurse.cob:41: PERFORM */
  cob_set_location ("recurse", "recurse.cob", 41, "MAIN SECTION", "_3300_2Derr", "PERFORM");
  {
    (*(int *)(b_9)) = 1;
    while (1)
      {
        if ((((int)(int)(*(b_10 + ((*(int *)(b_9)) - 1)) - 0) == 0) || ((int)cob_cmp_s32_binary (b_9, 325) == 0)))
          break;
        {
          /* recurse.cob:43: CONTINUE */
          cob_set_location ("recurse", "recurse.cob", 43, "MAIN SECTION", "_3300_2Derr", "CONTINUE");
          {
            ;
          }
        }
        (*(int *)(b_9)) = ((*(int *)(b_9)) + 1);
      }
  }
  /* recurse.cob:46: DISPLAY */
  cob_set_location ("recurse", "recurse.cob", 46, "MAIN SECTION", "_3300_2Derr", "DISPLAY");
  {
    cob_new_display (0, 1, 1, (f0.size = (*(int *)(b_9)), f0.data = b_10 + 0, f0.attr = &a_2, &f0));
  }

  cob_current_module = cob_current_module->next;
  return (*(int *) (b_1));

}

/* end function stuff */

