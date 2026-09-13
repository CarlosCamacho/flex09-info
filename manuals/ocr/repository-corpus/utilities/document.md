# DOCUMENT

> Source: `utilities/dru-series/DRU_14 - DRU Utility Collection - Programs, Source, and Build Files - Includes CALENDAR, DIET, DIETER-F.zip!DRU_14.DSK!DOCUMENT.TXT`  
> Method: FLEX disk extraction

OCR and media-decoding errors may remain.

.LM 8
.CC 27
.CC 69
.SR
.AU 1
.DM HD
:SP 2
.TL 'DIET-TRAC'Diet Forecaster'Flex9 Version 1.0'
.TL '---------'---------------'-----------------'
:SP 2
..
.DM FT
:PG
..
.DM PP
.NL 3
.SP
.SI 5
..
.DM QQ
.NL 5
.SP
..
.AT 1 HD
.AT -6 FT
.SP 12
.CE 14
DIET-TRAC
.SP
Forecaster
.SP 2
A DIET PLANNING AND ANALYSIS PROGRAM
BASED ON FOOD EXCHANGES
.SP
Flex9 Version 1.0
.SP 5
by
.SP
Marty Petersen
.SP 12
Copyright 1982
by
South East Media
.SP
5900 Cassandra Smith Road
Hixson, Tennessee 37343
.SP 3
ALL RIGHTS RESERVED
.SP
June 14, 1982
.PG
.SP 16
.CE
Copyright 1982 by South East Media
.SP
All of the material in this manual, as well as the attached programs,
are copyrighted by South East Media.	No portion may be
reproduced in any form without express permission
from the publisher.
.SP
Sale of this manual or program conveys no rights, licenses or
privileges other than for use in a single computer system owned
by the purchaser.
.SP
This product is intended strictly for personal use. The publisher
does not guarantee it in any way, and does not warrant that it
will act as described in the manual, nor that it will be useful for
any other purpose than use on a single computer system.
Neither the publisher nor the author
shall be liable for any damages resulting from the
use or misuse of this product.
.SP
Whenever used in this manual, the terms FLEX and TSC are
trademarks of
Technical Systems Consultants, Inc.
.DM FT
:SP 2
.TL ''- #+X -''
:PG
..
.PG
.SP 10
.CE 2
TABLE OF CONTENTS
-----------------
.SP 3
.NF
.MS
GENERAL DESCRIPTION. . . . . . . . . . . . . . . . . .Section I
INSTALLATION. . . . . . . . . . . . . . . . . . . . . Section II
OPERATION. . . . . . . . . . . . . . . . . . . . . . .Section III
THEORY. . . . . . . . . . . . . . . . . . . . . . . . Section IV
IN CASE OF TROUBLE. . . . . . . . . . . . . . . . . . Section V
APPENDIXES:
.SS
.SP
	Sample summary sheets from 'PLAN' program. . . . . .Appendix A
	Sample data files fom 'FILE' program. . . . . . . . Appendix B
	Sample diet reports from 'REPORT' program . . . . . Appendix C
	Sample wallcharts from 'CALENDAR' program. . . . . .Appendix D
	Food exchange list. . . . . . . . . . . . . . . . . Appendix E
.DM HD
:SP 2
.TL 'DIET-TRAC	1.0'Diet Forecaster'SECTION I'
.TL '--------------'---------------'---------'
:SP 2
..
.PG
SECTION I - GENERAL DESCRIPTION
-------------------------------
.AR
.NR X 0
.DM FT
:SP 2
.TL ''- I-#+X -''
:PG
..
.FI
.SP 2
.PP
'DIET-TRAC Forecaster' is a series of menu-driven programs
that is designed to
help an individual plan and implement a nutritionally-sensible
diet based on food-exchanges for the pupose of achieving
and/or maintaining any given weight goal (either gain or loss).
.SP
Here is a description of the four programs:
.SP
'PLAN'
.PP
This program designs a customized diet for an individual. The dieter
identifies his name, sex, age, height, frame-size and activity level.
From this information the computer determines ideal weight,
sustaining calories, and metabolic rate.
The dieter then identifies his weight goal (which can be either a
gain or a loss) and the computer calculates the sustaining calories.
The dieter then enters either a number of calories or
a carbohydrate/protein/fat (C/P/F) plan suggested by his doctor or
nutritional advisor, and the computer predicts the date that the
weight goal will be reached. The dieter may change any of the options
(weight-goal or calorie plan) and the computer will re-predict the
date.
.PP
After the dieter is satisfied with the number of calories, the computer
reccomends a C/P/F balance (percentage of C, P and F by calories)
that the dieter
should follow for best nutrition. The dieter may enter this figure
or any other figure suggested by his doctor or advisor. The computer
then calculates the number of exchanges from each of the six
food groups the
dieter must consume in order to maintain the chosen calorie-C/P/F
plan. (The six food groups are Vegetable (V), Bread (B), Meat (E),
Milk (K), Fruit (U), and Fat (A) ).
With all the data in, the computer displays the entire plan including
the number of exchanges,
actual calories, actual C/P/F grams and percent, rate of loss or gain
(lbs/day start and lbs/day end) and target date when goal will be
reached. The dieter has final control and may change any of the
parameters of weight-goal, calories, C/P/F percent or grams, or number
of exchanges, and the computer will re-compute and display. When the
plan is satisfactory, a diskfile may be created, as well as a
printed summary.
.SP
.QQ
'FILE'
.PP
Once a diskfile for an individual dieter has been created by
the 'PLAN' program, it is updated and maintained by the
'FILE' program. On a daily basis the dieter need enter only
the date, his current weight, and the number of each of the six
food exchanges he consumed that day. No calorie figures are
entered as the computer calculates those from the number of exchanges.
.SP
.QQ
'REPORT'
.PP
This program assembles the data from the dieter's datafile and
prints a progress report. Either the entire file is analyzed
or a starting and ending date may be selected (this feature was
designed primarily for weight-loss clinics or clubs where
'weekly progress', perhaps for 'contest' purposes may be computed).
Three weights are tabulated: the actual weight which is what the
dieter records in his datafile, the calculated weight, which is
what the computer calculates he should weigh based on what he
told the computer he ate, and the predicted weight which is what
the dieter should have weighed if he followed his plan exactly.
All of the food exchanges consumed are tabulated, as well as the
number of grams of C/P/F and calories they represent.
The summary at the end of the report compares the dieter's actual
progress with the his plan, which serves as a visual motivator.
.SP
.QQ
'CALENDAR'
.PP
This program takes the necessary data of name, sex, height, age,
and activity level, and, starting from the present weight and
date, produces a calendar which the dieter may hang by his scale
to record daily weight progress. Next to each date that the dieter
records his weight is the computer's prediction of what he should
weigh that day. The chart ends according to the option of the
dieter (either weight goal or a specific date).
The wall-chart may be created from data entered at the keyboard
or pulled from any existing datafile. When a datafile is used, the
chart automatically starts at the last recorded date and weight
that is on file.
.DM HD
:SP 2
.TL 'DIET-TRAC	1.0'Diet Forecaster'SECTION II'
.TL '--------------'---------------'----------'
:SP 2
..
.PG
SECTION II - INSTALLATION
.BR
-------------------------
.NR X 0
.DM FT
:SP 2
.TL ''- II-#+X -''
:PG
..
.SP 2
.PP
Here are the system requirements for operating this program:
.SP
.NF
.IN +25
6809 Computer
48 K RAM
FLEX 9.0
TSC XBASIC
Two 5 1/4" Disk Drives
A Printer, such as an Epson MX-80.
.SP
.IN 0
.FI
After booting up your system, use the Flex 'ASN' utility and assign
S=0 AND W=1. Set RM (Reserve Memory) to 256 or whatever the is the
length of your own print driver routine. Be sure to name your print
driver "0.PRINT.SYS" as that is the name of the driver called for
in the program. (Certain versions of FLEX respond only to this name.)
Load in XBASIC. Remove the FLEX operating disk, and
install the DIET-TRAC program disk in Drive \# 0. Insert a blank disk
to be used for datafiles in Drive \# 1.
For test purposes, copy the 'Dieter-M' and 'Dieter-F' Data files
from the program disk in Drive \# 0 to your blank disk in Drive \#1.
.SP
.PP
The disk supplied is 40-track, single-sided, single-density
and contains the following files:
.SP
.NF
.IN +25
COPY	.CMD
PRINT	.SYS
DIET	.BAS (& BAC)
PLAN	.BAS (& BAC)
FILE	.BAS (& BAC)
REPORT	.BAS (& BAC)
CALENDAR.BAS (& BAC)
DIETER-M.DAT
DIETER-F.DAT
.SP
.IN 0
.FI
.PP
The COPY file is for your own convenience in transferring these
programs to additional disks if you library of datafiles grows
large. DIETER-M and DIETER-F are the datafiles of a typical male
and female dieter. The files were created by the PLAN program
and updated by the FILE program and are included for you to
run to help you become familiar with the program.
DIET.BAC is the menu program which runs the other four .BAC files.
.PG
The file 'PRINT.SYS' is called for in the programming whenever
printing is required. What it does is drive a parallel printer in
port number 7B. If your printer driver routine is different, just rename
your driver routine 'PRINT.SYS' and substitute it for the one
supplied. The
'PRINT.SYS' routine you use must be on Drive \# 0, as the
line instruction that calls the printer is 'OPEN "0.PRINT.SYS" AS 0'.
.PP
While any printer may be used, some of the commands in the program
refer specifically, but not exclusively, to the EPSON MX-80.
These are 1) PRINT\#0 CHR$(27);CHR$(69) which puts the printer in the
enhanced (darker) printing mode, 2) PRINT\#0 CHR$(14) which puts the
first line of the printed report in expanded lettering, and
3) PRINT\#0 CHR$(12) which issues a form-feed command. If your printer
does not have these features, they will simply be ignored by your
printer except that an additional line-feed may occur.
.PP
Be sure to make a backup disk for your own protection. Do not
put a 'write-protect' sticker on the notch of the data disk you use
(in Drive \# 1),
as some of the programs ('PLAN' and 'FILE') write files.
You may, however, write-protect the program disk in Drive \# 0.
.PP
You may want to copy "FLEX.SYS" onto your program disk. Don't
forget to LINK it. (See LINK instructions in FLEX manual.)
This way, you won't need to change system boot and DIET-TRAC
program disks in Drive \#0. Include a startup routine to bring
up XBASIC if you desire.
.DM HD
:SP 2
.TL 'DIET-TRAC	1.0'Diet Forecaster'SECTION III'
.TL '--------------'---------------'-----------'
:SP 2
..
.PG
SECTION III - OPERATION
.BR
-----------------------
.NR X 0
.DM FT
:SP 2
.TL ''- III-#+X -''
:PG
..
.SP
.PP
Here is a step-by-step procedure for operating the programs.
Theoretical explanations will be held to a minimum as they are
covered in more detail in the THEORY section.
.SP
1. Check your system and install the disks as per instructions
in the INSTALLATION section.
.SP
2. Boot up the system and type 'XBASIC' to bring up the
TSC interpreter.
.SP
3. Type:	RUN "0.DIET"
.SP
4. A menu of the four programs should appear. Type in the name
of the program you wish to run. (You need type only the first
letter of the name, and the computer will respond immediately.)
The programs are listed in the
order that you would naturally use them, so let's start with
the first one, PLAN.
.SP
PLAN
.BR
----
.SP
Here is a listing of the promptings you will receive which,
for the most part, are self-explanatory.
As a general rule, questions appear in CAPS. A model of what to
type is included in parentheses ( ).
To the right of each question is a set of brackets < >. These
contain either a default answer or a previous answer.
In either case, the indicated response can either be changed with
new information or accepted by tapping the space bar or 'RETURN'.
If you type in technically erroneous data the computer will
recycle you back to the question and allow you to correct it. You
may restart the program or abort it altogether at any time by
pressing 'Control-C' (the 'Control' key depressed simultaneously
with the 'C' key).
.QQ
PLANNING SESSION DATE (M,D,Y)	? < 12,10,81 >
.PP
The date inside the < > comes from FLEX's date generator, which
is the date you entered when you turned on your computer. You
may enter this date by tapping 'SPACE BAR' or 'RETURN', or use
a different date.
.QQ
NAME	? < >
.SP
SEX (M OR F)	? < >
.PP
This prompt, as will many others depending on their importance,
will recycle back if not answered exactly as "M" or "F". The
calculation of ideal weight and basal metabolism rate depend on
the correctness of this answer.
.QQ
AGE	? < >
.PP
The program is designed to be accurate for adults which is
defined as being 18 to 85.
The computer will not allow you to enter any age outside
this range.
.QQ
HEIGHT (feet,inches)	? < >
.PP
The limit here is 4'6" to 6'6" (54" to 78") as computations
outside this range, based on available information, may or
may not be accurate.
.QQ
FRAME SIZE - S, M or L	? < M >
.PP
Size really refers to your basic frame (bone) structure, and not
necessarily the amount of 'flab' you are carrying around if you
are overweight.Try to picture what your frame would look like when
you reach your ideal weight, and then answer the question.
The < M > indicated is the default answer for this question.
.SP
.NL 9
.NF
ACTIVITY LEVEL: (decimals acceptable)
.SP
1. SEDENTARY..Inactive most of the day. Very little standing.
2. LIGHT......Seated most of the day. Typical office worker.
3. MODERATE...Equal sitting/standing. Teacher, salesclerk.
4. HEAVY......Stand/walk most of the day. Farmer, factory work.
5. EXTREME....Very hard physical labor. Athlete-in-training.

	8? < 2.5 >
.FI
.PP
Most people, without reflecting on it, will assume they are average and
pick the middle (MODERATE) rating. But people are not as active
as they would like to believe, so if you are in doubt, pick a
lower number, not a higher number. The computer will handle
any fraction, so if you think you are a '2.75' instead of a
'2' or a '3', tell that to the computer.
The suggested default answer indicated here is 2.5.
.PP
The computer responds now with a calculation of your ideal
weight and the calories needed to sustain that weight.
.QQ
PRESENT WEIGHT	? < >
.PP
The computer will accept a weight range of 50 to 400 lbs.
Then the computer will respond with a calculation of sustaining
calories for your present weight.
It gives you a breakdown of these sustaining calories in terms
of activity level and basal metabolic rate (BMR). The BMR is the
amount of calories it takes to sustain your normal body functions
from an 'at rest' condition. The 'calories-per-pound' total of
these two factors (activity and metabolism), multiplied by your
weight, should be equal to your sustaining calories for that weight.
.QQ
WEIGHT GOAL	? < Ideal weight >
.PP
The computer has previously calculated your ideal weight, so it
inserts this in the brackets as a default answer, which you may
choose or change as you desire.
Most people think of dieting only as losing weight, but there
are many who need to diet to gain weight. If the goal weight
you enter is greater than your present weight, the computer will
set up for weight-gain calculations. Normally, however, your
goal weight entry will be lower than your present weight, and
the computer will set up for weight-loss calculations. The
computer, however, will still calculate a nutrition plan for
the sustaining calories at your present weight, if you are
interested in maintaining your present weight rather than
gaining or losing. In this latter case, the next instructions
pertaining to 'number of days to goal' will be bypassed
by the computer.
.PP
The computer then responds with the following message (depending
on whether you are gaining or losing weight):
.SP
.IN +5
.LN -10
"You have indicated that you want to lose weight.
To give you an effective loss-rate, you should choose an
amount of calories (or its CHO,PRO,FAT gram equivalent)
less than 10 times your present weight, or 'X' calories."
.SP
.IN -5
.LN +10
.QQ
DO YOU WISH TO PLAN YOUR DIET BY CALORIES (C) OR GRAMS (G)
OF CHO,PRO,FAT	? < >
.PP
Now that the computer knows enough about you to plan a diet
program, you must first decide how fast you want to lose or
gain weight, and this is a function strictly of calories. The
larger the difference between your present sustaining calories
and the amount of calories you tell the computer you want to
consume, the faster will be your weight change. Most people
think only in terms of calories, but your doctor or advisor
may have a specific plan spelled out in grams of CHO,PRO,FAT
(Carbohydrates, Protein and Fat) for
you. Hence, the computer needs to know now what type of
entry you plan to make. If you enter (C), the computer will
set up to convert your calorie amount to a date you can expect
to reach you goal. If you enter (G), the computer will first
convert the grams of CHO,PRO and FAT
to calories, and then make the
date calculation.
.QQ
HOW MANY CALORIES ? <X>	or	ENTER GRAMS (C,P,F) ? <X,Y,Z>
.PP
One or the other of the above prompts appears depending on
whether you specified (C) or (G) above.
Notice that the computer's suggestion of 'X' calories (calculated
previously as 10 times your present weight) or its gram equivalent
of X,Y,Z appears as a default answer.
There are several things that may happen here, depending on
whether you are serious or are trying to fool the computer.
If you are planning for a weight-loss, for instance, and have
chosen a number of calories significantly less than the
sustaining calories that represents your present weight, the
computer will project the goal target date. If you have chosen
less than your sustaining calories, but not enough less to
achieve your goal, the computer will not project the date
(because it quits when the weight-loss rate reaches 0) and
it will tell you that and ask you to re-enter your calories
(or grams if you have elected to plan your program by grams).
As a general rule-of-thumb, if you want to lose weight you
should choose an amount of calories that is 10 times your
present weight, since sustaining calories is about
15 times your present weight.
If you have chosen an amount of calories that represents a
weight gain rather than a loss, the computer will respond with
'TOO MANY CALORIES' and ask you to reconsider. If the
computer is set up for weight-gain, the reverse of all of
the above is true.
In any case, the computer will only accept a calorie range of
500 to 6000, or its gram or exchange equivalent.
.PP
If the calories or grams finally entered are reasonable, the
computer projects the goal target date, and the beginning and
ending rates of weight-change. (You always change weight faster
when starting a diet than at the end, so it's nice to know
what these rates are).
.QQ
IS THIS O.K.	? < >
.PP
If you are not satisfied up to this point, you can go back
and change either your weight goal or calorie or gram plan.
.QQ
Dieticians recommend a C/P/F \% ratio (by calories) of 45/20/35.
Your doctor or advisor may recommend some other percentage.
.SP
WHAT IS DESIRED C/P/F \% RATIO (C,P,F)	? < 45,20,35 >
.PP
Suffice it to say here, without getting into a 10-page tutorial,
that the reccomended balance of carbohydrates, proteins and
fats for best nutrition is (by calories) 45\% carbohydrates,
20\% protein, and 35\% fat, and is the default answer.
(by the U.S. Public Health Service).
If you have chosen to plan your diet by calories, then you must
enter this or some other ratio. My advice here is: follow your
doctor's advice. 'Fad' diets may work temporarily, but they do
so by destroying this delicate C/P/F balance.
If you have elected to plan your diet by specifying
grams of C,P and F, this question will not appear because the
percentage ratio is fixed by the number of grams.
.PP
The computer now does its main job for this program, converting
a calorie-C/P/F \% plan or a C,P,F grams plan to the number
of exchanges of each of the six food groups needed to satisfy
the mathematical requirements of the plan. Sixth-order determinants
are used in the algorhythm that makes these computations, and
because of the mathematical preciseness (computers being what they
are) sometimes the values required come up negative (-).
Obviously it is impossible to consume a negative number of
exchanges (who can eat -3 ounces of meat, for instance), and so
when the plan is displayed you will have to make some adjustments.
The computer could come exactly to the number of calories needed,
but that might mean a number of vegetable exchanges, for instance,
of 2.38973613, instead of 2, or 2.5. What the computer does,
then is choose to the nearest 1/2 exchange, and recompute the
actual calories and grams that these realistic number of
exchanges represents. Hence, in the projection, two columns
will appear. One is the plan you chose, and the second is
the computer's closest realization of this plan.
.QQ
PLAN O.K	? < >
.PP
If you are satisfied with the plan, continue to create a
diskfile (if desired) and a printed summary (if desired).
If not, the computer will allow you to change any of the
parameters or even start all over again.
If you start another planning session, all of the previous
answers will be retained so that you may do a different plan
for yourself if desired, and change only the parts you
want to change. If however, a new name is entered, then all
of the previous answers pertaining to the previous person
are reset to either zero or the appropriate default.
.SP 2
.PP
Now that the PLAN program is completed, the program
returns to the menu and you are ready to select the next program.
Here is a description of the FILE program:
.SP
.NL 7
FILE
.BR
----
.QQ
WHAT IS DATFILE NAME
.PP
The computer pulls the file, if it exists. If it does not
exist, the program will ask you if you want to repeat the
program. A 'N' response will cause an exit back to the menu.
In this program, as in all others, there is a 'bail-out'
feature. At any time during the program you may press
'Control-C' and this will immediately bring you to the last
question of the program (Repeat or Exit). If at any time
during your data entry, if you make a wrong entry on one
day's worth of data, and you can't 'back-up' to it, you may
press 'Control-C' to bail out. This will preserve the file
up to and including the previous day's entry. Then you may
recall your file and continue with the data entry.
.PP
A file header is printed, identifying the dieter, sex, age,
weight goal, calorie plan, grams and percent of C/P/F,
exchange plan, and file start-stop dates. The latest weight
recorded in the file is also displayed.
.QQ
IS THERE NEW DATA
.PP
If not, the file is closed and no further action is taken,
except the program will ask you if you want to look at another
file before returning to the menu. If you have data to
enter, the computer prompts you for the daily information
of date, weight, and number of exchanges. It might be pointed
out here that there are no safeguards against missing dates
or randomly entered dates. For the rest of the programs to
work as designed, the dates entered should be in ascending
order and continuous. If there are holes of information, it
is better to create separate files, even on the same person,
each having a continuous flow of data. The reason for this
is that averages such as "pounds-per-day" lost or gained are
meaningless if the dates are not continuous.
.PP
I have found from experience, however, from processing about
forty files with a week's data each at one sitting, that it
is faster to use the FLEX EDITOR, and edit the datafile
directly. However, for one file at a time, which is the
original intent, this program is adequate.
.SP 2
.NL 8
.PP
Here are instructions for the REPORT program:
.SP
REPORT
.BR
------
.QQ
WHAT IS DATAFILE NAME
.PP
Call the filename of an individual and the computer will let you know
the file status in terms of when the data starts (but not ends).
.QQ
DO YOU WANT THE ENTIRE DATE RANGE OF DATAFILES
.PP
If you answer yes, the entire file will be summarized.
If you answer no, then the computer will prompt you for a
start and stop date. Then it will proceed to process the file,
between the two selected dates.
.SP
.NL 10
.PP
Here are the instructions for operating the 'CALENDAR' program.
.SP
CALENDAR
.BR
--------
.QQ
IS DATA FROM KEYBOARD (K) OR DATAFILE (D)
.PP
If "K" is selected, you will be prompted to enter the necessary
information of name, sex, age, height, activity level, and
calorie plan (calories only, not grams or exchanges) so that the
computer can calculate predicted weight change. If "D" is selected
the computer pulls the information off the datafile you identify.
.QQ
END CHART ON WEIGHT GOAL (W) OR SPECIFIC DATE (D)
.PP
A long chart which hangs in one piece is nice by your scale if
you are enthusiastic about your program and are serious about
your progress. Many people, however, experience 'pig-outs',
and they get discouraged when they see that their actual weight gets
to be far different than the computer's projection. So it is
desirable to run charts for maybe a few weeks or a month at a
time, where the chart can be started with the person's present
weight and date at periodic intervals. If a specific date
is chosen, then the chart, or each chart in a group, will end
on the date specified. On datfiles, the starting weight is
always the latest weight recorded, hence if the last filedate
is later than the specified chart ending date, a chart will
not be printed and the file will be skipped over.
.QQ
RULED (R) or UNRULED (U) PAPER
.PP
If you are using plain paper, the computer will create the
horizontal dividing lines. If you are using ruled paper, there
is no need for the printer to waste time and print-head life.
.DM HD
:SP 2
.TL 'DIET-TRAC	1.0'Diet Forecaster'SECTION IV'
.TL '--------------'---------------'----------'
:SP 2
..
.PG
SECTION IV - THEORY
.BR
-------------------
.NR X 0
.DM FT
:SP 2
.TL ''- IV-#+X -''
:PG
..
.SP 2
.CE 2
THE MATHEMATICAL ASPECTS OF WEIGHT CONTROL
by Martin J. Petersen, Jr.
.SP
.PP
There is a direct and measureable relationship between
a person's sex, age, height and frame size (surface area),
present weight, metabolic rate and activity level to the amount
of calories needed to sustain his present weight or any given
weight goal.
It is not just a
mysterious happenstance whose results are not predictable.	We can
shape or mold the physical plant we are housed in with as much a
degree of confidence in the predicted results as an architect who
uses scientific formulas to design a beautiful building.
Equally important (if not more-so), there is also a direct
relationship between the type of calories we consume and our
nutritional well-being. Calories come from three sources,
carbohydrates, proteins and fat. The consideration of the correct
balance of these three elements must be considered as well as
merely choosing a number of calories.
.PP
A calorie is a unit of energy which our physical plants, the
body, either burns up or stores, depending on the size of the body
and its energy-consumption rate. 3500 calories represents one pound
of fat. Thus, if these 3500 units of energy are taken into the body
at a time they are not needed, they become one more pound of flesh.
Conversely, if the body needs 3500 more calories than it is getting
from the outside, it takes it from its 'fat storage'. The whole
concept of dieting is based on this simple, predictable principle.
.PP
Every body needs a certain amount of energy to sustain itself
without either gaining or losing fat storage, and that amount, for
the average person with an average metabolism and activity level,
is approximately
15 calories per pound per day. Thus, a 200-pound person requires
(200 x 15 =) 3,000 calories per day to sustain his/her weight,
while a 100-pound person only requires 1500 calories. Then,
if each of the above persons consumed 2200 calories a day, the
100-pound person would gain weight and the 200-pound person would
lose weight.
.PP
It is very easy to compute how much weight would be gained or
lost.	The 100-pound person needs only 1500 calories but has
consumed 2200. The extra amount, or 700 calories, is stored as fat.
Since we know that 3500 calories equals one pound of fat, that
extra 700 calories represents 700/3500, or one-fifth pounds of fat.
The 200-pound person consumes 500 calories less than is needed, so
he loses a little more than one-fifth pound.
.PP
It is interesting to note here that the 200-pound person,
(now, technically, the 199.7714286 pound person), if he sticks to
a 2200 calorie diet, will not lose the same amount of weight each
day. This is because after the first day, being one-fifth pound
lighter, his body needs fewer calories to sustain his new weight.
Therefore the difference between what he needs and what he consumes
is less, and the amount left over to be pulled from his fat storage
is less. This is what has always frustrated dieters! They lose a
lot of weight at the start, but as the rate slows down each day the
dieter thinks he is failing. Now that you know the reason for this
rate-reduction, you can cope with this psychological hurdle. Hint:
if you want to keep your weight-loss progress at a constant rate,
you must reduce your caloric intake gradually each day.
.PP
While the average of 15 calories/pound is a convenient yardstick,
the actual amount can vary from about 9 to as high as 30, depending
on whether the individual is a tiny person whose metabolic rate
is low, who sits all day watching TV hence having a low activity
rate. . . or a large person who may be an athlete in training.
Metabolic rate (the amount of energy needed to run the body engine
at rest, measured in calories/lb/day) decreases with age and
increases with surface area (height and weight). If you look at
the planning chart for DOROTHY DIETER (Appendix A) you will see
that the total of her mm|ijolic zate and ik|ivity(za|e |otal
about(1< cal/lb/day, but the metabolic rate will change as she
loses weight bmcau{e it is a function of her surface area which,
if she loses weigh|, will become smaller.
.PP
How is 'ideal weight' determined? The formula used by this
author (from which many height-weight charts hanging up in doctor's
offices are derived) is that an average man should weigh 106 lbs.
plus 6 pounds for every inch in height over 5 ft., and the average
woman should weigh 100 lbs. plus 5 lbs. for every inch over 5 ft.
To this basic equation are added factors which allow a range of
+/- 4 pounds and a +/- 9\% for frame size variations.
Thus, a 6' male should weigh 178 pounds ( with a sustaining caloric
intake at that weight of 2670 calories per day, right?) and a
5' 2" female should balance the scale at 110 pounds, and be
sustained by a 1650 calorie diet.
.PP
But, just considering the number of calories needed to lose weight
is only part of the story. Many dieters only look at the quantity
of calories per day, and fail miserably. The key to maintaining a
successful diet is to keep the body happy by maintaining its carbo-
hydrate/protein/fat (C/P/F) balance. This is why most 'fad' diets
fail. They brag about how many pounds you can lose in a week, but
they destroy the C/P/F balance in doing so. For instance, a high
protein diet (which is not good if you have a heart problem) is
low on carbohydrates which are needed to preserve 'ketone' balance.
The body can tolerate that for a while, but not long. So the body
sends S.O.S. signals to the brain, the dieter responds by scoffing
down a dozen donuts, and there goes another diet attempt down the
tubes. The only proper way to think about dieting is in terms
of a lifetime commitment and not just as a temporary expedient.
Dieting does not always mean losing weight, but it also means
sustaining or even gaining weight, when needed. Dieting really
means lifetime caloric and C/P/F maintenance for good health.
.PP
This writer does not profess to be any kind of an expert on
C/P/F balance. You, as an individual with your own personal
metabolic rate and other functions, should get some guidelines
from your own doctor. However, some of the best advice on C/P/F
balance comes from the American Dietetic Association in cooperation
with the National Institute of Arthritis, Metabolism, and Digestive
Diseases and the National Heart and Lung Institute of the U.S.
Public Health Service.	They recommend a C/P/F balance of approx-
imately 45/20/35 \% by calories.	Thus, on a 1000 calorie diet, 450
calories should come from carbohydrates (sugars and starch), 200
calories from protein (meat, fish, etc) and 350 calories from fat
(bacon, butter). Does it surprise you that a person needs that much
sugar and starch and fat and that little protein?	I'll bet you
thought that all protein and no fat was gool, anl that {ugar
and starch were no-no's !!
.PP
You're thinking now that it was hard enough to count calories,
without having to worry about reading labels to count karbohydrates
proteins and fats, too. But do not despair beciuse "food exchanges"
come to the rescue, as like a knigh| in shining armor, and they are
easier to count than calories.	There are six basic food groups...
vegetable, bread,(meat, milk, fruit and fat.	A unit of food in any
gro}p may be "exchangmd" for any other unit of food in the same
group (hence the name "exchangms") because they all, within(mach
group, have the samm calorie and C/P/F balance.	For instance,
1/2 cup of most vegetajles counts as one vegetable exchange, and
each exchange contains	24(cilories, 5 grams of carbohydrate and
9 grim of protein.	So if your diet plan called for you to eat 3
vegetablm exchanges a day, you would know that that idds up to 7:
calozim{, 9=(grams(on cazbohydrate and 3(grams on pzotein.
.PP
.NL 15
This is the part that the computer loves, beca}se everything
relates so beautifully, mathematically.	Here is the zelationship:
.SP
.NF

All carbohydrates contain 4 cilories per gram

All proteins	contain 4 calories per gram

All fats
contain 9 calories per gram


Check that out with a vegetable exchange:


5 grams of carbohydrate x 4 cal/gram = 20 calories

1 gram	of protein	x 4 cal/gram =	4 calories
	1-----------
	(Total	= 24 calories

.NL 15

Here are the statistics for the other food groups:

	CALORIES	CARBOHYDRATES	PROTEINS	FATS

	VEGETABLE	24	5	1		-

	BREAD
68
15	2		-

	MEAT
73	-	7		5

	SKIM MILK	80
12	8		-

	FRUIT
40
10	-		-

	FAT
45	-	-		5
.FI
.PP
.NL 12
As an example, let's say you consumed the following number of
exchanges per day:
.SP
.NF
	Vegetable	= 2
	Bread	= 5
	Meat	= 6
	Skim Milk	= 2
	Fruit	= 3
	Fat	= 3

No. of calories = 2x24 + 5x68 + 6x73 + 2x80 + 3x40 + 3x45 = 1241

.NL 12
Similarly, for the other quantities, the totals are:

grams of carbohydrates = 2x5 + 5x15 + 2x12 + 3x10 = 139 grams
grams of proteins	= 2x1 + 5x2	+ 6x7	+ 2x8	=	70 grams
grams of fats
= 6x5 + 3x5	=	45 grams

Here's how to figure the C/P/F percentages:

\% carbohydrates = (139 grams x 4 cal/gram)/1241 calories = 45\%
\% proteins	= ( 70 grams x 4 cal/gram)/1241 calories = 23\%
\% fats
= ( 45 grams x 9 cal/gram)/1241 calories = 32\%
.PP
.FI
You can see that it's very easy (and a natural for the
computer) to figure out how many calories, carbohydrates, proteins
and fats you have consumed just by knowing the number of exchanges.
This is why the 'exchange' method of dieting is one of the best
ways for controlling calories while preserving your C/P/F balance.
Thus, all you, the dieter, need do is make a daily entry of the
no. of exchanges you consume each day, and the computer does all
the grunt work.
.PP
Check with your library,book store, doctor or hospital
dietician for more information about food exchanges. Appendix E
of this manual is a limited list of food exchanges, but it gives
you an idea of how easy it is to use. You won't find any Hershey
Bars listed, however, so there are some problems, until you
learn the system, in trying to translate what you actually ate
to a food-exchange value. For a typical fast-food hamburger,
for instance,
you can figure 1 veg (the
lettuce and tomato), 2 bread (the bun), 3 meat (4 oz. cooks down
to 3),and 1 or 2 fat (the dressing).
.NL 11
.PP
I would like to conclude this tutorial by adding my own
personal experience. I got into all of this because no doctor
that I ever went to could ever decide if I was diabetic or not.
One time a blood test would be 'good' and the next time it would
be 'bad'. The solution was that if a scientific database could be
established, the doctors might be able to come to a reasonable
conclusion. So I became my program's own first test case.
Since I have been on the schedule I have never felt better.
The doctors were pleased because they now could correlate
blood sugar to my C/P/F balance and come to some intelligent
conclusions. I have achieved my goal of losing 35 pounds in
85 days which was only two days longer than the computer's
prediction. But what is more important, at least to me, is that
I have kept the weight off because the food-exchange method
of eating has re-educated my eating habits permanently.
I found it extremely difficult
to cheat on my diet because, even if nobody else would know if
I cheated. . .the computer would know. The computer keeps me
honest, and I'm happier for it.
.SP 3
HAPPY HEALTH TO YOU.
.SP 3
Martin J. Petersen, Jr.
.DM HD
:SP 2
.TL 'DIET-TRAC	1.0'Diet Forecaster'SECTION V'
.TL '--------------'---------------'---------'
:SP 2
..
.PG
SECTION V - IN CASE OF TROUBLE
.BR
------------------------------
.NR X 0
.DM FT
:SP 2
.TL ''- V-#+X -''
:PG
..
.SP 2
.PP
There is a law, called Murphy's Law, that says that if anything
can go wrong, it will. It is indeed a challenge to design some-
thing that is fool-proof, and even more of a challenge to make
something 'damned-fool-proof'.
.PP
The biggest source of error is most likely the operator hitting
the wrong key.
The programs have been extensivley de-bugged for operator
errors. The computer will not accept technically erroneous
errors. For instance, in the date, if you enter month and day
but forget year, the computer will recycle you. Another good
example is the 'height' question. Try 'crashing' it by entering
too little or too much or wrong type, and you will be recycled
every time. This is due to the technique of not using 'INPUT'
statements, but using 'Input character' loops that trap out
erroneous responses. It is the 'Input character' loop that
allows an entry to be made without having to hit 'RETURN'.
.PP
The programs you receive may have been 'de-Murphy-ized' more
thoroughly than this document reflects, as product improvements
usually happen far in advance of reporting them. There may be
places in the programs where it is not feasable to eliminate
input statements entirely, hence there is always the caution
against operator error.
However, on critical variables, an extra line has been
added which will re-cycle the prompt back to the input statement
if the entry is not correct, but this is not entirely fool-proof.
Use is made of the standard error routines built into XBASIC,
and data-type mismatches will automatically be re-cycled. This
is only half-good, however, because it catches letters that are
entered where numbers are supposed to be, but not vice-versa.
.PP
In terms of criticalness, the only program that has potential
danger is the 'FILE' program. This is because of the
nature of writing onto a disk. The diskfile is pulled into
memory, renamed 'SCRATCH', and a new file with the added
data is named the original datafile name and re-written back
onto the disk. If there is a machine or other failure during
this critical edit time, it is possible to wind up with a
file containing zero data because the new file has not been
written yet. However, if you check your directory and find
a file called 'SCRATCH.DAT', that is the original data file
that has been renamed. The program has a built-in error
routine, however, that in the event of a program abort, such as
a 'control-c' trap, the new diskfile will be written with
whatever data is in the machine, and you will not have lost
anything except perhaps the last line of data.
.NL 5
.PP
With the exception of the 'PLAN' program, which creates
a diskfile, the other programs only read data but do not
write data, so if you are only using those programs, so
might want to keep a write-protect sticker on the notch.
.PP
You may also have trouble because the configuration of this this
program may not be exactly the way you want to run it. For instance,
you may want to have all of your datafiles on the same disk as
the program. This is easily accomplished by using the FLEX ASN
utility and typing 'ASN,S=0,W=0'. Remember that the program
disk always(must reside in Drive \# 0.
.DM HD
:SP 2
.TL 'DIET-TRAC	1.0'Diet Forecaster'APPENDIX A'
.TL '--------------'---------------'----------'
:SP 2
..
.PG
.AU 1
.DM FT
:SP 2
.TL ''- A-#+X -''
:PG
..
.DM PP
.NL 3
.SP
.SI 5
..
APPENDIX A - Sample summaries from the 'PLAN' program
.BR
-----------------------------------------------------
.NR X 0
.SP
Here are some sample reports that are the result of the
'PLAN' planning session. Let's take a look at the plan
for DICK DIETER.
.SP
Dick chose a 1000-calorie plan, and the standard 45/20/35
C/P/F balance reccomended by the dietician at the hospital
where is was attending an eight-week weight clinic. He
decided to modify the number of exchanges to what is shown,
and the computer then reprojected an 'ACTUAL' plan which is
slightly lower in calories, slightly higher in carbohydrate
percentage, and slightly lower in protein and fat percentages.
.SP
Looking at the statistical information, he lists himself as
a male, 36 years old, 6'0" tall, and as having a large frame.
The only reason for entering the frame size is to use the
information in determining ideal weight, a larger frame needing
to be about 9% heavier than a medium frame.
If he had listed himself as a medium frame, his ideal weight
would have projected out to be about 174 pounds.
According to his activity level of 2.5, his activity rate
(the amount of energy his body needs to sustain his activity
level) is 5.5 calories-per pound-per day. His metabolic rate
(the amount of energy needed to sustaing his normal body
functions at rest) is calculated from a complex formula which
is a function of age (metabolic rate decreases with age),
surface area which is a function of height and present weight
(metabolic rate increases with surface area, and surface-area
increases with height and weight), and sex (metabolic rate is
higher for men than for women).
.SP
The total sustaining rate is the sum of the activity rate
plus the metabolic rate, and is generally about 15 calories-
per pound-per day for the average person. You can verify this
figure by taking the information from the next line:
PRESENT WEIGHT/CALORIES. If you divide his present sustaining
calories (3699) by his present weight (253) you should get
14.6 calories/pound. If you divide his ideal sustaining calories
(3097) by his ideal weight (191) you get 16.2 calories/pound.
As a general rule, your sustaining rate increases as you get
lighter because your metabolic energy needs don't decrease
as fast as your weight decreases, hence on a 'per-pound' basis
you need more calories to sustain your weight. This is one
reason why, the thinner you get, the harder it is to reduce
further. This fact is pointed out in the last two items:
STARTING RATE and ENDING RATE. Notice that, as Dick reaches
his goal, his rate of losing weight slows down.
.SP
To compare plans, look at DOROTHY DIETER's plan and notice the
slow rate of weight-loss, which is typical for females.
.PG
.NF


DIET PLAN FOR DICK DIETER

\# OF EXCHANGES
PLANNED C/P/F
ACTUAL C/P/F
--------------
-------------
------------
	1000 CALORIES
975 CALORIES

VEG.	=	2	CHO = 113 grams
CHO = 121 grams
BREAD =	5	PRO =	50 grams
PRO =	44 grams
MEAT	=	4	FAT =	39 grams
FAT =	35 grams
MILK	=	.5	C \% =	45 \%	C \% =	50 \%
FRUIT =	3	P \% =	20 \%	P \% =	18 \%
FAT	=	3	F \% =	35 \%	F \% =	32 \%


STATISTICAL INFORMATION:

DATE OF PLAN.............	9 / 15 / 81
NAME.....................	DICK DIETER
SEX......................	M
AGE......................	36
HEIGHT...................	6 ft. 0 in.
FRAME SIZE...............	L
ACTIVITY LEVEL...........	2.5

ACTIVITY RATE............	5.5 cal/lb/day
METABOLIC RATE...........	9.1 cal/lb/day
	---------------
TOTAL SUSTAINING RATE.... 14.6 cal/lb/day

PRESENT WGT/CALORIES.....	253 lbs.,	3699 calories
GOAL WGT/CALORIES........	200 lbs.,	3187 calories
IDEAL WGT/CALORIES.......	191 lbs.,	3097 calories

\# OF DAYS TO GOAL........	83
GOAL TARGET DATE.........	12 / 7 / 81
STARTING RATE............ -.71	LBS/DAY
ENDING RATE.............. -.57	LBS/DAY

HAPPY HEALTH TO YOU.
.PG


DIET PLAN FOR DOROTHY DIETER

\# OF EXCHANGES
PLANNED C/P/F
ACTUAL C/P/F
--------------
-------------
------------
	1000 CALORIES
1043 CALORIES

VEG.	=	2	CHO = 113 grams
CHO = 127 grams
BREAD =	5	PRO =	50 grams
PRO =	55 grams
MEAT	=	5	FAT =	39 grams
FAT =	35 grams
MILK	=	1	C \% =	45 \%	C \% =	49 \%
FRUIT =	3	P \% =	20 \%	P \% =	21 \%
FAT	=	2	F \% =	35 \%	F \% =	30 \%


STATISTICAL INFORMATION:

DATE OF PLAN.............	9 / 15 / 81
NAME.....................	DOROTHY DIETER
SEX......................	F
AGE......................	37
HEIGHT...................	4 ft. 11 in.
FRAME SIZE...............	M
ACTIVITY LEVEL...........	1

ACTIVITY RATE............	3.9 cal/lb/day
METABOLIC RATE........... 10.2 cal/lb/day
	---------------
TOTAL SUSTAINING RATE.... 14.0 cal/lb/day

PRESENT WGT/CALORIES.....	160 lbs.,	2241 calories
GOAL WGT/CALORIES........	100 lbs.,	1716 calories
IDEAL WGT/CALORIES.......	95 lbs.,	1668 calories

\# OF DAYS TO GOAL........	253
GOAL TARGET DATE.........	5 / 26 / 82
STARTING RATE............ -.31	LBS/DAY
ENDING RATE.............. -.18	LBS/DAY

.DM HD
:SP 2
.TL 'DIET-TRAC	1.0'Diet Forecaster'APPENDIX B'
.TL '--------------'---------------'----------'
..
HAPPY HEALTH TO YOU.
.PG
.SP 2
APPENDIX B - Sample data files from the 'FILE' program
.BR
------------------------------------------------------
.NR X 0
.DM FT
:SP 2
.TL ''- B-#+X -''
:PG
..
.SP
.FI
Two sample datafiles are listed on the next page, and here is
a diagram of what the numbers represent:
.SP
.NF

Name, Sex, Age, Height (inches), Frame size

Activity Level, Activity Factor, Metabolic Factor

Weight Goal, Calorie Plan, Carbohydrate \%, Fat \%

Veg, Bread, Meat, Milk, Fruit, Fat (planned)

Month, Day, Year, Weight, No. of exchanges consumed

etc.

etc.

X,0,0,0,0,0,0,0,0,0

.FI
The activity factor and metabolic factor are not numbers that
appear in a surface report, but are factors which are related
to weight to produce activity and metabolic rates. Since a
person's weight changes each day, and thus the metabolic rate,
it is more important to carry the factor information and let
the computer calculate the rate as needed.
The last line in each file, X,0,0,0,0,0,0,0,0,0, is a 'dummy'
line used to separate datafiles without producing an error
condition and causing data from the header of the following
file to be lost.
.PG
.NF

Sample data files from 'FILE' program
-------------------------------------


DICK DIETER,M,36,72,L

2.5,4.9885,197.15

200,975,49,18

2,5,4,.5,3,3

9,15,81,253,2,1,4,.5,1,1

9,16,81,250,2,3,4,.5,1,0

9,17,81,249,2,2,4,.5,1,0

9,18,81,247,3,2,4,0,0,4

9,19,81,246,0,1,4,.5,1,0

9,20,81,246,2,4,4,0,2,0

9,21,81,245,2,2,4,0,2,1

9,22,81,245,0,5,4.5,.5,3,1

9,23,81,243,2,2.5,4,1,1.5,2.5

9,24,81,243,3,5,5,0,3,3

9,25,81,243,0,5,4.5,.5,2.5,2

9,26,81,242,3,7,7,0,5.5,3

9,27,81,244,0,3,6,0,3.5,0

9,28,81,243,1,1,2.5,0,1,1.5

9,29,81,242,0,3,3.5,.5,4.5,1

9,30,81,241,0,3,4.5,.5,3.5,1

10,1,81,240,2,2,3,0,1.5,1

10,2,81,240,1,3,4,0,1,2

10,3,81,240,2,2.5,5,0,1,1.5

10,4,81,239,2,3,4,0,1,1

X,0,0,0,0,0,0,0,0,0


DOROTHY DIETER,F,37,59,M

1,3.47,169.4

100,1043,48,21

2,5,5,1,3,2

9,15,81,160,1,2,5,0,0,1

9,16,81,160,2,3,3,1,3,0

9,17,81,158,2,5,5,1,1,1

9,18,81,158,1,5,5,0,1,1

9,19,81,156,2,4,5,1,1,1

9,20,81,155,2,3,3,1,1,1

9,21,81,155,0,1,1,0,1,1

9,22,81,156,2,3,5,0,2,2

9,23,81,156,0,3,2,0,1,1

9,24,81,156,0,3.5,4,0,1,0

9,25,81,156,0,2.5,3,0,2,0

9,26,81,155,0,5,4,0,0,2

9,27,81,155,2,1,2,0,1,0

9,28,81,154,1,5,5,0,1,0

9,29,81,153,2,2,4,0,1,0

9,30,81,153,2,5,4,0,3,2

10,1,81,154,2,4,4,0,1,1

10,2,81,154,1,8,3,0,1,2

10,3,81,155,0,4,5,0,1,2

10,4,81,155,3,9,5,0,2,4

X,0,0,0,0,0,0,0,0,0
.DM HD
:SP 2
.TL 'DIET-TRAC	1.0'Diet Forecaster'APPENDIX C'
.TL '--------------'---------------'----------'
:SP 2
..
.PG
APPENDIX C - Sample reports from the 'REPORT' program
.BR
-----------------------------------------------------
.NR X 0
.DM FT
:SP 2
.TL ''- C-#+X -''
:PG
..
.SP
.FI
Here are sample reports generated by the REPORT program.
The header information duplicates, for the most part, the
information given by the PLAN summary. However, a
more complete breakdown of the exchange plan is given here,
detailing the C/P/F and calorie make-up of each of the
six food-exchange groups.
.SP
The WEIGHT section has 3 columns of data: ACT is the actual
weight as recorded by the dieter, CLC is the calculated weight
the computer projects the dieter should weigh based on what
he told the computer he ate, and PRD is the predicted weight
the computer projects based on assuming the dieter followed
his calorie plan exactly. The numbers are rounded off to the
nearest pound (not truncated) so it is hard to detect
fractional pound variations. It is practical to do this, since
a person's weight can vary as much as 5 pounds in one day,
depending on what time of the day he weighs himself. As a rule,
the dieter should always weigh himself at exactly the same
time each day, wearing (or not wearing) the same articles of
clothing.
.SP
Look at DICK DIETER's summary at the bottom. He ate fewer
calories than his plan called for, but he wound up eating a
higher percentage of proteins and fats than his plan called for.
This may not seem important, but the purpose of this whole
project is to educate the dieter to be aware of the content of
food in order to develop a life-time habit of eating properly.
To a person with a heart-condition, for instance, high protein
and fat percentages are undesireable (moreso than for average
people).
.SP
Notice that DOROTHY DIETER reduced her caloric intake, yet
managed to do it in the right proportion to keep the C/P/F
percentage balance essentially the same.
.PG
.LM 4
	DICK DIETER	975 CALORIE PLAN
.NF

	MALE, AGE = 36 , HEIGHT = 72 in., FRAME = L , WEIGHT GOAL = 200
	ACTIVITY LEVEL = 2.5 , ACTIVITY RATE = 5.5, METABOLIC RATE = 9.1

	\# OF EXCHANGES	CHO	PRO	FAT	CALORIES
	--------------	---	---	---	--------


VEG	=	2		10		2	48

BREAD =	5		75	10	340

MEAT	=	4	28	20	292

MILK	=	.5		6		4	40

FRUIT =	3		30
120

FAT	=	3
15	135

---	---	---	----

121	44	35	975

49 \%	18 \%	32 \%

 DATE	WEIGHT	*	\# OF EXCHANGES CONSUMED	*	GRAMS C/P/F	*
	*	*	*
 1981	ACT/CLC/PRD * VEG	BRD	MEA	MLK	FRU	FAT	* CHO	PRO	FAT *	CAL
	*	*	*
 9/15	253 --- --- * 2	1	4	.5	1	1	*	41	36	25 *	533
 9/16	250 252 252 * 2	3	4	.5	1	0	*	71	40	20 *	624
 9/17	249 251 252 * 2	2	4	.5	1	0	*	56	38	20 *	556
 9/18	247 251 251 * 3	2	4	0	0	4	*	45	35	40 *	680
 9/19	246 250 250 * 0	1	4	.5	1	0	*	31	34	20 *	440
 9/20	246 249 250 * 2	4	4	0	2	0	*	90	38	20 *	692
 9/21	245 248 249 * 2	2	4	0	2	1	*	60	34	25 *	601
 9/22	245 247 248 * 0	5	4.5	.5	3	1	* 111	46	28 *	874
 9/23	243 247 247 * 2	2.5	4	1	1.5	2.5	*	75	43	33 *	763
 9/24	243 246 247 * 3	5	5	0	3	3	* 120	48	40 * 1032
 9/25	243 245 246 * 0	5	4.5	.5	2.5	2	* 106	46	33 *	899
 9/26	242 245 245 * 3	7	7	0	5.5	3	* 175	66	50 * 1414
 9/27	244 244 245 * 0	3	6	0	3.5	0	*	80	48	30 *	782
 9/28	243 243 244 * 1	1	2.5	0	1	1.5	*	30	21	20 *	382
 9/29	242 242 243 * 0	3	3.5	.5	4.5	1	*	96	35	23 *	725
 9/30	241 242 243 * 0	3	4.5	.5	3.5	1	*	86	42	28 *	758
10/ 1	240 241 242 * 2	2	3	0	1.5	1	*	55	27	20 *	508
10/ 2	240 240 241 * 1	3	4	0	1	2	*	60	35	30 *	650
10/ 3	240 239 241 * 2	2.5	5	0	1	1.5	*	58	42	33 *	691
10/ 4	239 239 240 * 2	3	4	0	1	1	*	65	36	25 *	629

 SUMMARY OF ABOVE DATA:	DICK DIETER	vs.	PLAN

 AVERAGE DAILY CALORIES	=	712	975
 AVERAGE DAILY CARBOHYDRATES =	79 GRAMS ( 44 \% )	121 GRAMS ( 49 \% )
 AVERAGE DAILY PROTEINS	=	39 GRAMS ( 22 \% )	44 GRAMS ( 18 \% )
 AVERAGE DAILY FATS
=	28 GRAMS ( 35 \% )	35 GRAMS ( 32 \% )
 CALCULATED/PREDICTED WEIGHT =	238.72 POUNDS
239.96 POUNDS
 CAL/PRD DAILY WEIGHT CHANGE =	-0.75 LBS/DAY
-0.69 LBS/DAY
 ACTUAL DAILY WEIGHT CHANGE	=	-0.74 LBS/DAY
 TOTAL CHANGE THIS REPORT	=	-14 POUNDS
.LM 8
.PG
.LM 4
 DOROTHY DIETER	1043 CALORIE PLAN

 FEMALE, AGE = 37 , HEIGHT = 59 in., FRAME = M , WEIGHT GOAL = 100
 ACTIVITY LEVEL = 1 , ACTIVITY RATE = 3.9, METABOLIC RATE =10.2

	\# OF EXCHANGES	CHO	PRO	FAT	CALORIES
	--------------	----	----	---	--------

	VEG	=	2		10		2	48
	BREAD =	5		75	10	340
	MEAT	=	5	35	25	365
	MILK	=	1		12		8	80
	FRUIT =	3		30
120
	FAT	=	2
10		90
	---	---	---	----
	127	55	35	1043
	48 \%	21 \%	30 \%

 DATE	WEIGHT	*	\# OF EXCHANGES CONSUMED	*	GRAMS C/P/F	*
	*	*	*
 1981	ACT/CLC/PRD * VEG	BRD	MEA	MLK	FRU	FAT	* CHO	PRO	FAT *	CAL
	*	*	*
 9/15	160 --- --- * 1	2	5	0	0	1	*	35	40	30 *	570
 9/16	160 160 160 * 2	3	3	1	3	0	*	97	37	15 *	671
 9/17	158 159 159 * 2	5	5	1	1	1	* 107	55	30 *	918
 9/18	158 159 159 * 1	5	5	0	1	1	*	90	46	30 *	814
 9/19	156 158 159 * 2	4	5	1	1	1	*	92	53	30 *	850
 9/20	155 158 158 * 2	3	3	1	1	1	*	77	37	20 *	636
 9/21	155 158 158 * 0	1	1	0	1	1	*	25	9	10 *	226
 9/22	156 157 158 * 2	3	5	0	2	2	*	75	43	35 *	787
 9/23	156 157 158 * 0	3	2	0	1	1	*	55	20	15 *	435
 9/24	156 156 157 * 0	3.5	4	0	1	0	*	63	35	20 *	570
 9/25	156 156 157 * 0	2.5	3	0	2	0	*	58	26	15 *	469
 9/26	155 155 157 * 0	5	4	0	0	2	*	75	38	30 *	722
 9/27	155 155 156 * 2	1	2	0	1	0	*	35	18	10 *	302
 9/28	154 155 156 * 1	5	5	0	1	0	*	90	46	25 *	769
 9/29	153 154 156 * 2	2	4	0	1	0	*	50	34	20 *	516
 9/30	153 154 155 * 2	5	4	0	3	2	* 115	40	30 *	890
10/ 1	154 153 155 * 2	4	4	0	1	1	*	80	38	25 *	697
10/ 2	154 153 155 * 1	8	3	0	1	2	* 135	38	25 *	917
10/ 3	155 153 155 * 0	4	5	0	1	2	*	70	43	35 *	767
10/ 4	155 152 154 * 3	9	5	0	2	4	* 170	56	45 * 1309

 SUMMARY OF ABOVE DATA:	DOROTHY DIETER	vs.	PLAN

 AVERAGE DAILY CALORIES	=	692	1043
 AVERAGE DAILY CARBOHYDRATES =	83 GRAMS ((48 \% )	127 GRAMS ( 48 \% )
 AVERAGE DAILY PROTEINS	=	38 GRAMS ( 22 \% )	55 GRAMS ( 21 \% )
 AVERAGE DAILY FATS
=	25 GRAMS ( 32 \% )	35 GRAMS ( 30 \% )
 CALCULATED/PREDICTED WEIGHT =	152.40 POUNDS
154.24 POUNDS
 CAL/PRD DAILY WEIGHT CHANGE =	-0.40 LBS/DAY
-0.30 LBS/DAY
 ACTUAL DAILY WEIGHT CHANGE	=	-0.26 LBS/DAY
 TOTAL CHANGE THIS REPORT	=	-5 POUNDS
.LM 8
.DM HD
:SP 2
.TL 'DIET-TRAC	1.0'Diet Forecaster'APPENDIX D'
.TL '--------------'---------------'----------'
:SP 2
..
.PG
APPENDIX D - Sample wall-charts from the 'CALENDAR' program
.BR
-----------------------------------------------------------
.NR X 0
.DM FT
:SP 2
.TL ''- D-#+X -''
:PG
..
.SP
.FI
Here are two sample wall-calendars run off with the CALENDAR
program. DICK DIETER's was created using the keyboard-entry
method. The chart starts on 9/15/81 and was told to end
on 10/7/81. (That date was chosen so that the chart would
fit on an 8 1/2 x 11 sheet of paper). If told to continue
to the weight goal it would have taken about 3 pages).
.SP
DOROTHY DIETER's chart was created using the Datafile-entry
method. The last date on her datafile (see Appendix B) was
10/4/81 where she weighed 155 pounds, so the chart automatically
started on that date. Instructions were given to end the
chart on 10/26/81 (again, the length of a page) and it did.
If instructions were given to end the chart on any date prior
to 10/4/81 (the last date on her datafile), a chart would
not have been printed.
.PG
.LM 4
.NF
PROGRESS CHART FOR DICK DIETER

 975 CALORIE PLAN	CHART END =	10 / 7 / 81

DAY #	DATE	PREDICTED WEIGHT	WEIGHT CHANGE	ACTUAL WEIGHT
------------------------------------------------------------------------
 1	9 / 15 / 81		253	----
253
------------------------------------------------------------------------
 2	9 / 16 / 81		252.3	-0.70
------------------------------------------------------------------------
 3	9 / 17 / 81		251.6	-0.70
------------------------------------------------------------------------
 4	9 / 18 / 81		250.9	-0.70
------------------------------------------------------------------------
 5	9 / 19 / 81		250.2	-0.70
------------------------------------------------------------------------
 6	9 / 20 / 81		249.5	-0.69
------------------------------------------------------------------------
 7	9 / 21 / 81		248.8	-0.69
------------------------------------------------------------------------
 8	9 / 22 / 81		248.1	-0.69
------------------------------------------------------------------------
 9	9 / 23 / 81		247.4	-0.69
------------------------------------------------------------------------
 10	9 / 24 / 81		246.7	-0.69
------------------------------------------------------------------------
 11	9 / 25 / 81		246.1	-0.69
------------------------------------------------------------------------
 12	9 / 26 / 81		245.4	-0.68
------------------------------------------------------------------------
 13	9 / 27 / 81		244.7	-0.68
------------------------------------------------------------------------
 14	9 / 28 / 81		244.0	-0.68
------------------------------------------------------------------------
 15	9 / 29 / 81		243.3	-0.68
------------------------------------------------------------------------
 16	9 / 30 / 81		242.7	-0.68
------------------------------------------------------------------------
 17	10 / 1 / 81		242.0	-0.68
------------------------------------------------------------------------
 18	10 / 2 / 81		241.3	-0.67
------------------------------------------------------------------------
 19	10 / 3 / 81		240.6	-0.67
------------------------------------------------------------------------
 20	10 / 4 / 81		240.0	-0.67
------------------------------------------------------------------------
 21	10 / 5 / 81		239.3	-0.67
------------------------------------------------------------------------
 22	10 / 6 / 81		238.6	-0.67
------------------------------------------------------------------------
 23	10 / 7 / 81		238.0	-0.67
------------------------------------------------------------------------
.LM 8
.PG
.LM 4
PROGRESS CHART FOR DOROTHY DIETER

 1043 CALORIE PLAN	CHART END =	10 / 26 / 81

DAY #	DATE	PREDICTED WEIGHT	WEIGHT CHANGE	ACTUAL WEIGHT
------------------------------------------------------------------------
 1	10 / 4 / 81		155	----
155
------------------------------------------------------------------------
 2	10 / 5 / 81		154.7	-0.30
------------------------------------------------------------------------
 3	10 / 6 / 81		154.4	-0.30
------------------------------------------------------------------------
 4	10 / 7 / 81		154.1	-0.30
------------------------------------------------------------------------
 5	10 / 8 / 81		153.8	-0.30
------------------------------------------------------------------------
 6	10 / 9 / 81		153.5	-0.30
------------------------------------------------------------------------
 7	10 / 10 / 81	153.2	-0.30
------------------------------------------------------------------------
 8	10 / 11 / 81	152.9	-0.29
------------------------------------------------------------------------
 9	10 / 12 / 81	152.6	-0.29
------------------------------------------------------------------------
 10	10 / 13 / 81	152.3	-0.29
------------------------------------------------------------------------
 11	10 / 14 / 81	152.0	-0.29
------------------------------------------------------------------------
 12	10 / 15 / 81	151.8	-0.29
------------------------------------------------------------------------
 13	10 / 16 / 81	151.5	-0.29
------------------------------------------------------------------------
 14	10 / 17 / 81	151.2	-0.29
------------------------------------------------------------------------
 15	10 / 18 / 81	150.9	-0.29
------------------------------------------------------------------------
 16	10 / 19 / 81	150.6	-0.29
------------------------------------------------------------------------
 17	10 / 20 / 81	150.3	-0.29
------------------------------------------------------------------------
 18	10 / 21 / 81	150.0	-0.29
------------------------------------------------------------------------
 19	10 / 22 / 81	149.7	-0.29
------------------------------------------------------------------------
 20	10 / 23 / 81	149.4	-0.29
------------------------------------------------------------------------
 21	10 / 24 / 81	149.2	-0.29
------------------------------------------------------------------------
 22	10 / 25 / 81	148.9	-0.29
------------------------------------------------------------------------
 23	10 / 26 / 81	148.6	-0.29
------------------------------------------------------------------------
.LM 8
.DM HD
:SP 2
.TL 'DIET-TRAC	1.0'Diet Forecaster'APPENDIX E'
.TL '--------------'---------------'----------'
:SP 2
..
.PG
.SP 2
APPENDIX E - FOOD EXCHANGE LISTS
.BR
--------------------------------
.NR X 0
.DM FT
:SP 2
.TL ''- E-#+X -''
:PG
..
.SP
.FI
The following information is a limited listing of food-
exchanges. For additional information, write to the American
Diabetes Association,(600 Fifth Avenue, New York, NY 10020,
and ask for "Exchange Lists for Meal Planning" (fifty cents).
Also, write to the Consumer Information Center, Department G,
Pueblo, CO 81009 and ask for the free Consumer Information
Catalog, which describes additional information on diets and
nutrition.
.SP
Group #1 - VEGETABLE exchanges
.BR
------------------------------
.SP
Each portion (except for vegetables marked with an *) supplies
approximately 5 gm of carbohydrate and 1 gm of protein, or
24 calories. One serving (1 exchange) = 1/2 cup (4 oz.).
Foods with * may be eaten as desired.
.SP
.NF
Asparagus
Beans, green or yellow
Bean Sprouts
Beets
Broccoli
Brussels Sprouts
Cabbage
Carrots
Cauliflower
Celery
*Chicory
*Chinese Cabbage
Cucumbers
Eggplant
*Endive
*Escarole
Greens:beet,chard,collard,dandelion,kale,mustard,spinach,turnip
*Lettuce
Mushrooms
Okra
Onions
*Parsley
Peppers, red or green
*Radishes
Rutabagas
Sauerkraut
Squash,summer
Tomatoes
Tomato Juice
Turnips
Vegetable Juice cocktail
*Watercress
Zucchini
.NL 10
.FI
Group #2 - BREAD Exchanges
.BR
--------------------------
.SP
Each portion contains approximately 15 gm of carbohydrates and 2 gm
of protein, or 68 calories.
.SP
.NF
Bread,French,raisin,rye,white,whole wheat. . 1 slice
	Bagel . . . . . . . . . . . . . . . . . . 1/2
	Biscuit, roll . . . . . . . . . . . . . . 1 (2" dia.)
	Bread Crumbs, dried . . . . . . . . . . . 3 tsp
	Bun (for hamburger or hot-dog). . . . . . 1/2
	Cornbread . . . . . . . . . . . . . . . . 1"x2"x2"
	English Muffin. . . . . . . . . . . . . . 1/2
	Muffin. . . . . . . . . . . . . . . . . . 1 (2" dia.)
Cake, Angel or sponge. . . . . . . . . . . . 1 1/2" cube
Cereal, cooked . . . . . . . . . . . . . . . 1/2 cup
	Dry (flakes or puffed). . . . . . . . . . 3/4 cup
Cornstarch . . . . . . . . . . . . . . . . . 2 tbsp
Crackers,Graham. . . . . . . . . . . . . . . 2 (2 1/2" sq)
	Oyster. . . . . . . . . . . . . . . . . . 20 (1/2 cup)
	Round . . . . . . . . . . . . . . . . . . 6
	Rye wafer . . . . . . . . . . . . . . . . 3 (2"x3 1/2")
	Saltine . . . . . . . . . . . . . . . . . 6
	Variety . . . . . . . . . . . . . . . . . 5 small
Flour. . . . . . . . . . . . . . . . . . . . 2 1/2 tbsp
Matzoh . . . . . . . . . . . . . . . . . . . 1 (6" dia.)
Popcorn, popped, unbuttered, small kernel. . 1 1/2 cups
Pretzels, 3-ring . . . . . . . . . . . . . . 6
Rice or Grits, cooked. . . . . . . . . . . . 1/2 cup
Spaghetti, Macaroni, Noodles, cooked . . . . 1/2 cup
Tortilla . . . . . . . . . . . . . . . . . . 1 (6" dia.)
Vegetables
	Beans, baked, without pork. . . . . . . . 1/4 cup
	Beans, Lima, Navy, etc. . . . . . . . . . 1/2 cup
	Corn	. . . . . . . . . . . . . . . . . . 1/3 cup
	Corn-on-the-cob . . . . . . . . . . . . . 1/2 med. ear
	Parsnips. . . . . . . . . . . . . . . . . 2/3 cup
	Peas,dried (split peas, etc.) . . . . . . 1/2 cup
	Potatoes, sweet or Yams, fresh. . . . . . 1/4 cup
	Potatoes, white, baked or boiled. . . . . 1 (2" dia.)
	Potatoes, white, mashed . . . . . . . . . 1/2 cup
	Pumpkin . . . . . . . . . . . . . . . . . 3/4 cup
	Squash, winter (acorn or butternut) . . . 1/2 cup
Wheat Germ . . . . . . . . . . . . . . . . . 1/4 cup
.FI
.SP
.NL 10
Group #3 - MEAT Exchanges
.BR
-------------------------
.SP
Each portion suppiles about 7 gm of protein and 5 gm of fat,
or 73 calories.
.SP
.NF
Cheese, cheddar, American, Swiss . . . . . . 1 oz slice
Cheese, cottage. . . . . . . . . . . . . . . 1/4 cup
Egg. . . . . . . . . . . . . . . . . . . . . 1
Fish and seafood
	Halibut, perch, sole, etc.. . . . . . . . 1-oz slice
	Oysters, clams, shrimp, scallops. . . . . 5 small
	Salmon, tuna, crab. . . . . . . . . . . . 1/4 cup
	Sardines. . . . . . . . . . . . . . . . . 3 med.
Meat and Poultry
	Beef,lamb,pork,veal,ham,liver,chicken . . 1-oz slice
	Cold cuts . . . . . . . . . . . . . . . . 1-1/2 oz slice
	Vienna sausages . . . . . . . . . . . . . 2
Peanut Butter(omit two fat exchanges). . . . 2 tbsp
.SP
.FI
.NL 10
Group #4 - MILK Exchanges
.BR
-------------------------
.SP
Each portion supplies approximately 12 gm of carbohydrates, and
8 gm of protein, or 80 calories.
.SP
.NF
Buttermilk . . . . . . . . . . . . . . . . . 1 cup
Skim milk. . . . . . . . . . . . . . . . . . 1 cup
Milk with 1\% butterfat . . . . . . . . . . . 1 cup (+ 1/2 fat exch)
Milk with 2\% butterfat . . . . . . . . . . . 1 cup (+ 1 fat exch.)
Milk,whole . . . . . . . . . . . . . . . . . 1 cup (+ 2 fat exch.)
Yogurt, made with skim milk. . . . . . . . . 1 cup
.SP
.FI
.NL 10
Group #5 - FRUIT Exchanges
.BR
--------------------------
.SP
Each portion supplies approximately 10 gm of carbohydrates,
or 40 calories
.SP
.NF
Apple. . . . . . . . . . . . 1 small
Apple Juice or cider . . . . 1/3 cup
Applesauce . . . . . . . . . 1/2 cup
Apricots, fresh. . . . . . . 2 med.
Apricots, dried. . . . . . . 4 halves
Banana . . . . . . . . . . . 1/2 small
Berries (black,blue,rasp). . 1/2 cup
Cantaloupe . . . . . . . . . 1/4 (6" dia.)
Cherries . . . . . . . . . . 10 large
Dates. . . . . . . . . . . . 2
Figs,fresh . . . . . . . . . 1 large
Figs, dried. . . . . . . . . 1 small
Fruit cocktail . . . . . . . 1/2 cup
Grapefruit . . . . . . . . . 1/2 small
Grapefruit juice . . . . . . 1/2 cup
Grapes . . . . . . . . . . . 12
Grape juice. . . . . . . . . 1/4 cup
Honeydew Melon . . . . . . . 1/8 (7" dia.)
Mandarin Oranges . . . . . . 3/4 cup
Mango. . . . . . . . . . . . 1/2 small
Nectarine. . . . . . . . . . 1 small
Orange . . . . . . . . . . . 1 small
Orange juice . . . . . . . . 1/2 cup
Papaya . . . . . . . . . . . 3/4 cup
Peach	. . . . . . . . . . . 1 med.
Pear . . . . . . . . . . . . 1 small
Persimmon, native. . . . . . 1 med.
Pineapple. . . . . . . . . . 1/2 cup
Pineapple juice. . . . . . . 1/3 cup
Plums. . . . . . . . . . . . 2 med.
Prunes . . . . . . . . . . . 2 med.
Prune juice. . . . . . . . . 1/4 cup
Raisins. . . . . . . . . . . 2 tbsp
Strawberries . . . . . . . . 3/4 cup
Tangerine. . . . . . . . . . 1 large
Watermelon . . . . . . . . . 1 cup
.SP
.FI
.NL 10
Group #6 - FAT Exchanges
.BR
------------------------
.SP
Each portion contains approximately 5 gm of fat, or 45 calories
.SP
.NF
Avocado. . . . . . . . . . . . . .1/8 (4" dia.)
Bacon, crisp . . . . . . . . . . .1 slice
Butter or margarine. . . . . . . .1 tsp
Cream,half and half. . . . . . . .3 tbsp
	Heavy, 40\%. . . . . . . . . . .1 tbsp
	Light, 20\%. . . . . . . . . . .2 tbsp
	Sour. . . . . . . . . . . . . .2 tbsp
Cream Cheese . . . . . . . . . . .1 tbsp
Dressing, French . . . . . . . . .1 tbsp
	Italian . . . . . . . . . . . .1 tbsp
	Mayonnaise. . . . . . . . . . .1 tsp
	Mayonnaise-type . . . . . . . .2 tsp
	Roquefort . . . . . . . . . . .2 tsp
Nuts . . . . . . . . . . . . . . .6 small
Oil or cooking fat . . . . . . . .1 tsp
Olives . . . . . . . . . . . . . .5 small

Miscellaneous:

Fish Sticks, frozen . . . .3 sticks . . . . .1 bread, 2 meat
Fruit flavored jello. . . .1/4 cup	. . . . .1 bread
Ginger Ale. . . . . . . . .7 oz . . . . . . .1 bread
Ice-Cream . . . . . . . . .1/2 cup. . . . . .1 bread, 2 fat
