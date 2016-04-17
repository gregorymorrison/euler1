/* Generated from product.cob by cobc 1.1.0 */
/* Built -    Feb  9 2011 03:57:02 */
/* Packaged - Mon Aug 11 11:27:01 CEST 2008 */

#define  __USE_STRING_INLINES 1
#include <stdio.h>
#include <stdlib.h>
#include <string.h>
#include <math.h>
#include <libcob.h>

#define COB_SOURCE_FILE		"product.cob"
#define COB_PACKAGE_VERSION	"1.1"
#define COB_PATCH_LEVEL		0

static void
cob_decimal_set_int (cob_decimal *d, const int n)
{
	mpz_set_si (d->value, n);
	d->scale = 0;
}

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

#include "product.c.h"  /* local variables */

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
      memcpy (b_5, "003", 3);
      memcpy (b_6, "002", 3);
      memset (b_7, 48, 9);
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


  /* myTest: */

  l_2:;

  /* MAIN SECTION: */

  /* MAIN PARAGRAPH: */

  /* product.cob:11: CALL */
  cob_set_location ("myTest", "product.cob", 11, "MAIN SECTION", "MAIN PARAGRAPH", "CALL");
  {
    {
      int (*func)();
      unsigned char content_1[3] __attribute__((aligned));
      unsigned char content_2[3] __attribute__((aligned));

      memcpy (content_1, b_5, 3);
      memcpy (content_2, b_6, 3);
      module.cob_procedure_parameters[0] = &f_5;
      module.cob_procedure_parameters[1] = &f_6;
      module.cob_procedure_parameters[2] = &f_7;
      module.cob_procedure_parameters[3] = NULL;
      module.cob_procedure_parameters[4] = NULL;
      module.cob_procedure_parameters[5] = NULL;
      module.cob_procedure_parameters[6] = NULL;
      cob_call_params = 3;
      func = cob_resolve_1 ((const char *)"myMultiply");
      (*(int *) (b_1)) = func (content_1, content_2, b_7);
    }
  }
  /* product.cob:14: DISPLAY */
  cob_set_location ("myTest", "product.cob", 14, "MAIN SECTION", "MAIN PARAGRAPH", "DISPLAY");
  {
    cob_new_display (0, 1, 1, &f_7);
  }
  /* product.cob:15: STOP */
  cob_set_location ("myTest", "product.cob", 15, "MAIN SECTION", "MAIN PARAGRAPH", "STOP");
  {
    cob_stop_run ((*(int *) (b_1)));
  }

  cob_current_module = cob_current_module->next;
  return (*(int *) (b_1));

}

/* function prototypes */
static int myMultiply_ (const int, unsigned char *, unsigned char *, unsigned char *);

int myMultiply (unsigned char *, unsigned char *, unsigned char *);


/* functions */

int
myMultiply (unsigned char *b_13, unsigned char *b_14, unsigned char *b_15)
{
  return myMultiply_ (0, b_13, b_14, b_15);
}

/* end functions */

static int
myMultiply_ (const int entry, unsigned char *b_13, unsigned char *b_14, unsigned char *b_15)
{

#include "product.c.h"  /* local variables */

  static int initialized = 0;
  static cob_decimal d0;
  static cob_decimal d1;
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
  	mpz_clear (d0.value);
  	d0.scale = 0;
  	mpz_clear (d1.value);
  	d1.scale = 0;
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
        cob_set_cancel ((const char *)"myMultiply", (void *)myMultiply, (void *)myMultiply_);
      /* initialize decimal numbers */
      cob_decimal_init (&d0);
      cob_decimal_init (&d1);

      (*(int *) (b_9)) = 0;
      (*(int *) (b_10)) = 0;
      (*(int *) (b_11)) = 0;
      memset (b_16, 48, 4);


      initialized = 1;
    }

  /* initialize frame stack */
  frame_index = 0;
  frame_stack[0].perform_through = -1;

  /* initialize number of call params */
  (*(int *) (b_11))   = cob_call_params;
  cob_save_call_params = cob_call_params;

  goto l_5;

  /* PROCEDURE DIVISION */


  /* myMultiply: */

  l_5:;

  /* MAIN SECTION: */

  /* MAIN PARAGRAPH: */

  /* product.cob:27: MULTIPLY */
  cob_set_location ("myMultiply", "product.cob", 27, "MAIN SECTION", "MAIN PARAGRAPH", "MULTIPLY");
  {
    {
      {
        cob_decimal_set_int (&d0, cob_get_numdisp (b_13, 3));
        cob_decimal_set_int (&d1, cob_get_numdisp (b_14, 3));
        cob_decimal_mul (&d0, &d1);
        cob_decimal_get_field (&d0, (f_15.data = b_15, &f_15), 2);
      }
    }
  }
  /* product.cob:28: EXIT */
  cob_set_location ("myMultiply", "product.cob", 28, "MAIN SECTION", "MAIN PARAGRAPH", "EXIT");
  {
    if (module.next)
      goto exit_program;
  }

  exit_program:
  cob_current_module = cob_current_module->next;
  return (*(int *) (b_9));

}

/* end function stuff */

