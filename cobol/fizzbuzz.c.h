/* Generated from fizzbuzz.cob by cobc 1.1.0 */
/* Built -    Feb  9 2011 03:57:02 */
/* Packaged - Mon Aug 11 11:27:01 CEST 2008 */

/* PROGRAM-ID : fizzbuzz */

static unsigned char b_8[4] __attribute__((aligned));	/* COB-CRT-STATUS */
static unsigned char b_1[4] __attribute__((aligned));	/* RETURN-CODE */
static unsigned char b_2[4] __attribute__((aligned));	/* SORT-RETURN */
static unsigned char b_3[4] __attribute__((aligned));	/* NUMBER-OF-CALL-PARAMETERS */
static unsigned char b_5[3] __attribute__((aligned));	/* CNT */
static unsigned char b_6[3] __attribute__((aligned));	/* REM */
static unsigned char b_7[3] __attribute__((aligned));	/* QUOTIENT */

/* attributes */
static cob_field_attr a_1	= {16, 4, 0, 0, NULL};
static cob_field_attr a_2	= {16, 3, 0, 0, NULL};
static cob_field_attr a_3	= {16, 2, 0, 0, NULL};
static cob_field_attr a_4	= {33, 0, 0, 0, NULL};
static cob_field_attr a_5	= {16, 1, 0, 0, NULL};

/* fields */
static cob_field f_6	= {3, b_6, &a_2};	/* REM */
static cob_field f_7	= {3, b_7, &a_2};	/* QUOTIENT */
static cob_field f_5	= {3, b_5, &a_2};	/* CNT */
static cob_field f_8	= {4, b_8, &a_1};	/* COB-CRT-STATUS */

/* constants */
static cob_field c_1	= {2, (unsigned char *)"15", &a_3};
static cob_field c_2	= {9, (unsigned char *)"FizzBuzz ", &a_4};
static cob_field c_3	= {1, (unsigned char *)"3", &a_5};
static cob_field c_4	= {5, (unsigned char *)"Fizz ", &a_4};
static cob_field c_5	= {1, (unsigned char *)"5", &a_5};
static cob_field c_6	= {5, (unsigned char *)"Buzz ", &a_4};
static cob_field c_7	= {1, (unsigned char *)" ", &a_4};
static cob_field c_8	= {1, (unsigned char *)"1", &a_5};
static cob_field c_9	= {0, (unsigned char *)"", &a_4};

/* ---------------------------------------------- */

