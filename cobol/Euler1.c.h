/* Generated from Euler1.cob by cobc 1.1.0 */
/* Built -    Feb  9 2011 03:57:02 */
/* Packaged - Mon Aug 11 11:27:01 CEST 2008 */

/* PROGRAM-ID : myTest */

static unsigned char b_7[4] __attribute__((aligned));	/* COB-CRT-STATUS */
static unsigned char b_1[4] __attribute__((aligned));	/* RETURN-CODE */
static unsigned char b_2[4] __attribute__((aligned));	/* SORT-RETURN */
static unsigned char b_3[4] __attribute__((aligned));	/* NUMBER-OF-CALL-PARAMETERS */
static unsigned char b_5[4] __attribute__((aligned));	/* cnt */
static unsigned char b_6[9] __attribute__((aligned));	/* result */

/* attributes */
static cob_field_attr a_1	= {16, 4, 0, 0, NULL};
static cob_field_attr a_2	= {16, 9, 0, 0, NULL};

/* fields */
static cob_field f_6	= {9, b_6, &a_2};	/* result */
static cob_field f_5	= {4, b_5, &a_1};	/* cnt */
static cob_field f_7	= {4, b_7, &a_1};	/* COB-CRT-STATUS */


/* ---------------------------------------------- */

/* PROGRAM-ID : euler1 */

static unsigned char b_16[4] __attribute__((aligned));	/* COB-CRT-STATUS */
static unsigned char b_8[4] __attribute__((aligned));	/* RETURN-CODE */
static unsigned char b_9[4] __attribute__((aligned));	/* SORT-RETURN */
static unsigned char b_10[4] __attribute__((aligned));	/* NUMBER-OF-CALL-PARAMETERS */
static unsigned char b_12[3] __attribute__((aligned));	/* quot */
static unsigned char b_13[3] __attribute__((aligned));	/* rem */

/* attributes */
static cob_field_attr a_4	= {16, 4, 0, 0, NULL};
static cob_field_attr a_5	= {16, 1, 0, 0, NULL};
static cob_field_attr a_6	= {16, 3, 0, 0, NULL};
static cob_field_attr a_7	= {16, 9, 0, 0, NULL};
static cob_field_attr a_8	= {16, 1, 0, 3, NULL};

/* fields */
static cob_field f_13	= {3, b_13, &a_6};	/* rem */
static cob_field f_12	= {3, b_12, &a_6};	/* quot */
static cob_field f_16	= {4, b_16, &a_4};	/* COB-CRT-STATUS */

/* local/external fields */
static cob_field f_15	= {9, NULL, &a_7};	/* result */
static cob_field f_14	= {4, NULL, &a_4};	/* cnt */

/* constants */
static cob_field c_1	= {1, (unsigned char *)"3", &a_5};
static cob_field c_2	= {1, (unsigned char *)"5", &a_5};
static cob_field c_3	= {2, (unsigned char *)"1-", &a_8};

/* ---------------------------------------------- */

