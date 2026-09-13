# IVHELP97

> Source: `apps/finance/LAKELAND - Finance and Accounting - Bootable FLEX System and Utilities.zip!LAKELAND.DSK!IVHELP97.TXT`  
> Method: FLEX disk extraction

OCR and media-decoding errors may remain.

********************	HELP97	************************************

	DATA FIELDS EXPLAINED

******************************************************************


	THE FOLLOWING IS A DISCUSSION OF THE VARIOUS PIECES OR FIELDS OF
DATA STORED FOR EACH INVENTORIED ITEM IN THE MASTER RECORDS FILE.

NOTES: "LENGTH" = MAXIMUM NUMBER OF CHARACTERS ALLOWED
	"TYPE"	= DATA TYPE: 'A'=ANY CHARACTERS

'F'=FLOATING POINT NUMBERS - 123.45

'I'=INTEGER NUMBERS	- 32767 (MAX)


******************************************************************

FIELD	LENGTH	TYPE	DESCRIPTION
===================================================================
	0	9	A	STOCK ID NUMBER,UNIQUE,INDEX SORTED BY THIS
	1	25	A	DESCRIPTION OF ITEM
	2	12	A	VENDOR NAME (MAY NEED TO ABBREVIATE)
	3	4	A	CLASS - WHATEVER YOU LIKE,"BOOK","TOOL",ETC
	4	6	A	LOCATION - PHYSICAL LOCATION IN STORE
	5	12	A	VENDOR PART NUMBER
	6	7	I	QUANTITY ON HAND	(Q.O.H.)
	7	4	A	UNIT OF MEASURE (UOM) EACH,BOX,PKG2,CRTN,ETC.
	8	7	I	ReOrder Point (ROP) if QOH <= ROP MEANS REORDER
	9	7	I	ReOrder Quantity (ROQ)
 10	9	F	NET COST TO YOU ($999,999.99 MAX)
 11	7	I	QTD - Quarter-To-Date USAGE/SALES
 12	7	I	YTD - Year-To-Date	USAGE/SALES
 13	9	F	LIST PRICE	($999,999.99 MAX)
 14	8	A	AUX1	!	THE 8 AUX FIELDS ARE FOR WHATEVER
 15	8	A	AUX2	!	YOU LIKE.	FOR MAXIMUM BENEFIT
 16	8	A	AUX3	!	PUT THE SAME TYPE OF INFO IN THE
 17	8	A	AUX4	!=	SAME AUX FIELD FOR EACH INVENTORIED
 18	8	A	AUX5	!	ITEM.	EXAMPLES:
 19	8	A	AUX6	!	LEAD TIMES, MINIMUM ORDER QTY,
 20	8	A	AUX7	!	SALES PERSONS, DATES, P.O.# 'S,
 21	8	A	AUX8	!	INVOICE #'S, TAX CODES, ETC.
 22	33	A	NOTE 1 - ANYTHING YOU LIKE- HOLD FOR CUSTOMER,
 23	30	A	NOTE 2 - SPECIAL ORDERING INSTRUCTIONS, ETC.


***********************************************************************
