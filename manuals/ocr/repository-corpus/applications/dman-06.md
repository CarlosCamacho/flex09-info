# DMAN-06

> Source: `apps/dataman/DATAMAN - DataMan Database - Documentation and Examples.zip!DATAMAN.DSK!DMAN-06.TXT`  
> Method: FLEX disk extraction

OCR and media-decoding errors may remain.

.NR X 6
.LM 5
.NF
.DB
6.0.0
.DB
THE THEORY OF
.DB
DATABASE MANAGEMENT
.FI
.LM 55
.SP3
In this section we are going to discuss some of the technology and theories of database management as it applies to DATAMAN.
It is important for the user of DATAMAN to understand these theories because designing the database structure
to be entered into the computer is one of the most important tasks related to DATAMAN.
No computer can design a database for you.
Unless you put the right data into your database, you could find the database useless for the task you need it for.


What is a database?
Simply stated a database is a collection of pertinent information on a subject.
The more information about your subject in a database, the more useful that database can be.
For example, you could build a database on your personal inventory.
The furniture, appliances, tools, etc you own.


What kind of information would you want to include in your personal inventory database?
The name of each item and it's replacement cost.
The serial number of each item (if available).
The date of purchase and it's present condition.
The location of each item could also be helpful.
Can you think of additional information on each item you might want to include in your personal inventory database?


Another example could be a database of all the people you know.
You would need each persons name, address, and telephone number.
How about their birthdate or their relationship to you (cousin, freind, etc.)?
This database could be used to address Christmas cards, be a telephone number index, or a means to keep track of birthdays.
If you went to a printer and had index cards with the information lables printed, it might look like this...
.sp15
What if you wanted to be able to keep track of the Christmas gifts received (if any) from each person in the database?
You would have to add another heading.
You could call it 'X-MAS GIFT'.
But how could you tell from the cards if the gift listed on a given card was last years or one that was
received 5 years ago?
You could add another heading called 'DATE OF X-MAS GIFT'.
This would tell you when the last gift was received.
The point is, you must know what you want a database to do before you can design it.
A database can be only as useful as the information it contains.


The fact is, that we all deal with databases all the time.
For instance, the telephone book is a large database of all the people who have telephones in your town.
I think it would be nice if the telephone book also included Zip Codes along with addresses.
The telephone company, on the other hand, wants to limit the use of it's database.


.LM 10
.NF
6.1.0
BUILDING A SAMPLE
DATABASE
.FI
.LM 55
We are now going to construct a database that we will be using in the next section.
Imagine you are a realtor, you sell houses for a company called ACME REALTY in Wacoville, TX.
Now as a realtor your job is to match up the houses you have for sale with the home buyers that you are given by
your company.
Each home buyer comes to you with some idea of how much he can spend on the house, the age of the house he is looking for, and
the general area in Wacoville he wants to live.
There are, of course, other things the buyer needs in a house, the number of bedrooms for instance, but for our example
we will forget these other things.
In your job as a realtor, you find you are always trying to keep track of all the houses in your mind.
To help yourself remember, you decide to build a card index of all the houses you have for sale this week.


On each card you decide to have the owners name, the address of the house, the neighborhood it is in, the price of the house, and
when the house was built.
As I said before, you could put a lot more information on the card, but for this example, this will do.
You have 5 houses for sale this week.
You will need 5 cards to begin with.
After you have some cards printed up, they look like this...
.sp15
Now you fill out 5 cards, one for each house for sale.
In DATAMAN terminology, each card is called a 'record'.
You have 5 houses for sale, 5 cards, 5 records.
Now on each card you have 8 blanks to fill in and these are called 'fields'.
You have 8 fields on each of the 5 records.
Each of the 8 fields have what is called a 'field lable'.
The 'OWNERS NAME' is one field lable, 'ASKING PRICE' is another.
You have named your database 'HOUSES FOR SALE' or 'HOUSES' for short.


.LM 10
.NF
6.2.0
DATABASE FIELDS
.FI
.LM 55
Let's continue this discussion and take a closer look at the 8 fields in each record.
To begin with, let's break down the field data into 3 broad catagories.
.SP1
.nf
.lm 65
1)	ALPHANUMERIC: letters, numbers, punctuation marks.

2)	NUMERIC: all numbers with no letters.

3)	MONEY: all numbers but having to do with money.
.lm 55
.fi
.sp1
Now let's look at each field and decide which category each field is.
'OWNERS NAME' would be a type #1 (alpha) as would be the 'ADDRESS', 'CITY', and 'STATE'.
What about the Zip Code?
Zip codes are always numbers so type #2 (numeric) is the category.
Another way to test for numeric is to see if you can add the data.
You can add two Zip Codes together even though the sum wouldn't tell you anything.
The 'NEIGHBORHOOD' (Woodlawn, Parkview, Eastgate, etc.) is a type #1 field.
The 'YEAR BUILT' (1935, 1960, etc.) is a type #2 field.
The field data of 'ASKING PRICE' would be a type #3 or money (12,230.00, etc.).
It should be noted that deciding the field data type is not always as simple as in the above example.
A more detailed explanation is given in the section 'ADVANCED DATABASE TECHNIQUES', but if you understand
what we have done already, you know enough to continue.


We now know how many records we have to start with, the number of fields in each record, the field lables,and the type of information
or data that will be contained in each field.
Let's say that when you have the printer print up your index cards you want to have blocks printed...one for each character of data in
each data field.
For example, you decide that for the first field, 'OWNERS NAME', you can write any persons name in 20 blocks.
This field would now look like this on the index card...
.sp6
Now let's fill in the first owners name which is John Doe.
The card would now look like this...
.pg
Notice that in the above example, we didn't use all 20 blocks, just 8 of them.


How many character spaces or blocks would you allow for the other 7 data fields?
20 character spaces should be enough for the 'ADDRESS' field, and 15 characters should take care of the 'CITY' data.
If we use the abbreviation for the 'STATE', we need only 2 character spaces.
The 'ZIP CODE' is now always 5 spaces long (45664, 00234, etc.).
We have decided that 15 spaces will allow any 'NEIGHBORHOOD' to be written.
Four spaces are all we need for the 'YEAR BUILT' (1908, 1944, etc.).
If we assume that none of the houses you have for sale will cost more than $999,999.99, we can assign 10 spaces
to the field 'ASKING PRICE'
(don't count the comma, but do count the '$' sign and the decimal point).


We now know quite a bit about the information on each card or record...
.sp15
This is the information you must figure out before putting any information into DATAMAN.


.lm10
.nf
6.2.0
DATABASE FILES
.FI
.LM 55
One more concept to think about.
We have 5 cards on 5 different houses for sale.
We buy ourselves a card box and lable it 'HOUSES' which is the name of our database.
This box now contains all the cards in our database (there are 5 now).
In DATAMAN terminology, this box is called a database file.
We buy another box and mark on it 'SOLD'.
If we sell any houses we will take the card out of the box marked 'HOUSES' and put it in the box marked 'SOLD'.
We could also, of course, take the sold records from the box marked 'HOUSES' and simply throw them away.


Let's say you want to sort the cards in the 'HOUSES' file box in ascending order using the field 'ASKING PRICE' as the 'key'.
In other words, the first card in the file box would be the least expensive house and the last card would be the
most expensive house.
We can sort our 5 cards in any order in our one file box, but because we have only one file, we can have the file sorted
only one way at a time, right?


You decide that you need another file box containing the same cards or records that are in the file 'HOUSES' but sorted
on the field 'NEIGHBORHOOD'.
This will allow you to have two identical files sorted two ways, one sorted by 'ASKING PRICE' and one
by 'NEIGHBORHOOD'.
You call this second file 'HOUSES1'.
Whenever you sell a house you will need to take the record out of both the 'HOUSES' file and the 'HOUSES1' file.
When you get a new house for sale you will need to make a new record for both files then re-sort both files.
With only 5 records this seems like a lot of work to do.
If we had 100 houses for sale there would be 100 records to keep track of in each file.
It would be much easier to put the information on each card record into DATAMAN records on a computer.


DATAMAN can do everything we have done in these examples and much more!
DATAMAN lets you define a database with as many records as your disk will store.
DATAMAN lets you define each record.
The number of fields.
The field lables, the type of data in each field, and the maximum space needed to store the field data.
DATAMAN allows you to input data, one record at a time.
You can add or delete records to your database at any time.
DATAMAN will let you sort your files, copy records from one file to another,and let you look up needed information in
your database.
DATAMAN can do much more than this.
Any thing you can do with a manual card file system, you can do with DATAMAN.
It's just that simple and just that powerful.
The next section 'THE DATAMAN SAMPLE RUN' will allow you to see how DATAMAN works.
