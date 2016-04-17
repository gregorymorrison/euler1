/* Generated from product.cob by cobc 1.1.0 */
/* Built -    Feb  9 2011 03:57:02 */
/* Packaged - Mon Aug 11 11:27:01 CEST 2008 */

/* PROGRAM-ID : myTest */

static unsigned char b_8[4] __attribute__((aligned));	/* COB-CRT-STATUS */
static unsigned char b_1[4] __attribute__((aligned));	/* RETURN-CODE */
static unsigned char b_2[4] __attribute__((aligned));	/* SORT-RETURN */
static unsigned char b_3[4] __attribute__((aligned));	/* NUMBER-OF-CALL-PARAMETERS */
static unsigned char b_5[3] __attribute__((aligned));	/* x */
static unsigned char b_6[3] __attribute__((aligned));	/* y */
static unsigned char b_7[9] __attribute__((aligned));	/* z */

/* attributes */
static cob_field_attr a_1	= {16, 4, 0, 0, NULL};
static cob_field_attr a_2	= {16, 3, 0, 0, NULL};
static cob_field_attr a_3	= {16, 9, 0, 0, NULL};

/* fields */
static cob_field f_7	= {9, b_7, &a_3};	/* z */
static cob_field f_6	= {3, b_6, &a_2};	/* y */
static cob_field f_5	= {3, b_5, &a_2};	/* x */
static cob_field f_8	= {4, b_8, &a_1};	/* COB-CRT-STATUS */


/* ---------------------------------------------- */

/* PROGRAM-ID : myMultiply */

static unsigned char b_16[4] __attribute__((aligned));	/* COB-CRT-STATUS */
static unsigned char b_9[4] __attribute__((aligned));	/* RETURN-CODE */
static unsigned char b_10[4] __attribute__((aligned));	/* SORT-RETURN */
static unsigned char b_11[4] __attribute__((aligned));	/* NUMBER-OF-CALL-PARAMETERS */

/* attributes */
static cob_field_attr a_5	= {16, 4, 0, 0, NULL};
static cob_field_attr a_6	= {16, 9, 0, 0, NULL};

/* fields */
static cob_field f_16	= {4, b_16, &a_5};	/* COB-CRT-STATUS */

/* local/external fields */
static cob_field f_15	= {9, NULL, &a_6};	/* z */


/* ---------------------------------------------- */

