/* Generated from recurse.cob by cobc 1.1.0 */
/* Built -    Feb  9 2011 03:57:02 */
/* Packaged - Mon Aug 11 11:27:01 CEST 2008 */

/* PROGRAM-ID : recurse */

static unsigned char b_11[4] __attribute__((aligned));	/* COB-CRT-STATUS */
static unsigned char b_1[4] __attribute__((aligned));	/* RETURN-CODE */
static unsigned char b_2[4] __attribute__((aligned));	/* SORT-RETURN */
static unsigned char b_3[4] __attribute__((aligned));	/* NUMBER-OF-CALL-PARAMETERS */
static unsigned char b_5[3] __attribute__((aligned));	/* depth-counter */
static unsigned char b_6[4] __attribute__((aligned));	/* install-address */
static unsigned char b_7[1] __attribute__((aligned));	/* install-flag */
static unsigned char b_8[2] __attribute__((aligned));	/* status-code */
static unsigned char b_9[4] __attribute__((aligned));	/* ind */

/* attributes */
static cob_field_attr a_1	= {16, 4, 0, 0, NULL};
static cob_field_attr a_2	= {33, 0, 0, 0, NULL};
static cob_field_attr a_3	= {17, 2, 0, 32, NULL};
static cob_field_attr a_4	= {17, 10, 0, 128, NULL};
static cob_field_attr a_5	= {17, 4, 0, 0, NULL};
static cob_field_attr a_6	= {16, 3, 0, 0, NULL};
static cob_field_attr a_7	= {16, 1, 0, 0, NULL};

/* fields */
static cob_field f_5	= {3, b_5, &a_6};	/* depth-counter */
static cob_field f_8	= {2, b_8, &a_5};	/* status-code */
static cob_field f_6	= {4, b_6, &a_4};	/* install-address */
static cob_field f_7	= {1, b_7, &a_3};	/* install-flag */
static cob_field f_11	= {4, b_11, &a_1};	/* COB-CRT-STATUS */

/* constants */
static cob_field c_1	= {7, (unsigned char *)"300-err", &a_2};
static cob_field c_2	= {27, (unsigned char *)"ERROR INSTALLING ERROR PROC", &a_2};
static cob_field c_3	= {19, (unsigned char *)"Mung until no good.", &a_2};
static cob_field c_4	= {8, (unsigned char *)"No good.", &a_2};
static cob_field c_5	= {1, (unsigned char *)"1", &a_7};


/* cob fields */
cob_field f0;

/* ---------------------------------------------- */

