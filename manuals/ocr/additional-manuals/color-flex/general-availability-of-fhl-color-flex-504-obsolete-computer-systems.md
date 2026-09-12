# General Availability of FHL Color FLEX 504 Obsolete Computer Systems

> Source: `manuals/color-flex/General Availability of FHL Color FLEX 504  Obsolete Computer Systems.pdf`  
> Method: PDF text extraction

OCR and media-decoding errors may remain.

General Availability of FHL Color FLEX 5.0:4 – Obsolete
Computer Systems
   ocs.net/2023/06/08/general-availability-of-fhl-color-flex-5-04

                                                                                   June 8, 2023

Skip to content


General Availability of FHL Color FLEX 5.0:4

    Home Uncategorized General Availability of FHL Color FLEX 5.0:4



General Availability of FHL Color FLEX 5.0:4

The FLEX single-user Operating System initially released by TechnicalSystem Consultants in
1978 was the most widely adopted operating system forMotorola 6800 and 6809 systems.
FLEX has a large catalog of applicationsincluding: word processors, spreadsheets, general
business applications,and many editors, assemblers, tools, and programming languages.
Frank HoggLaboratory brought FLEX to the Color computer in 1982, almost a full yearbefore
Microware’s OS-9 came to the CoCo in 1983. FLEX was largelyforgotten in favor of the more
powerful and flexible OS-9. While notcompletely lost in the modern age the existing versions
available in thearchives were not runnable. Today Obsolete Computer Systems is happy
toannounce the General Availability of the newly restored Color Computer FLEX5.0:4 from
Frank Hogg Laboratory. These have been imaged from physicaldisks in the Obsolete
Comptuer Systems (MikeyN6IL) collection and restoredto formats which are usable for CoCo
users in the 21st century, including:XRoar emulator, on a real CoCo with a CoCo SDC or
Floppy Drive, or evenright in your web browser!

=======================================================================
=


Table of Contents

  0. QuickStart
  1. Background
  2. FLEXing the Color Computer YouTube Series
  3. Frank Hogg Labs Color FLEX 5.0:4
  4. Frank Hogg Labs Color Utilities
  5. Frank Hogg Labs “ED” Editor

                                                                                                  1/6
  6. Technical Systems Consultants Extended BASIC

=======================================================================
=


0. QuickStart

a. Run a FLEX Demo Right in your Web Browser! Go to:

http://flex.ocs.net

And click on the first link “Live Demo”

b. Download the zip file from the Internet Archive:

https://archive.org/details/color-flex-5.0.4-frank-hogg-laboratory

c. Using with XRoar

Use XRoar 1.4 or later. Set up to run as a CoCo and use the DMK formatdisk images. To start
FLEX type:

RUN "FLEX

d. Using with a CoCo SDC

Copy the SDF disk iamges to your SD Card. Use SDX or DRIVE commands toattach the disk
images. To start FLEX type:

RUN "FLEX

e. Using with physical disks

Use a GreaseWeazle, FluxEngine or similar to write the SCP Flux images tomake exact
copies of the disks. Both 5.25″ and Double-Density(720k) 3.5″disks may be used. To start
FLEX type:

RUN "FLEX

f. Additional FLEX Software available:

https://archive.org/details/color-utilities-flex-frank-hogg-laboratory
https://archive.org/details/ed-editor-flex-frank-hogg-laboratory
https://archive.org/details/extended-6809-basic-flex-technical-systems-consultants




                                                                                              2/6
=======================================================================
=


1. Background

While there have been disk images for FLEX floating around the interwebsfor some time, if
you tried to use these images they simply would not work.The reason why is FLEX has
unique disk formatting with a Single-Density(FM)track 0 containing 10-sectors and the rest of
the tracks areDouble-Density(MFM) containing 18-sectors. Most emulators by default donot
expect this. They default to having all of the sectors of the diskuniformly formatted with the
same number of sectors on every track. WhenFLEX tries to access Track 0 it fails because of
this assumption.

To restore these disk images, I simply had to correct the formatting issuesand provide the disk
images in useful formats which maintain the properformatting.

I have gone over the restoration process in detail in a YouTube Video:

Watch on YouTube

=======================================================================
=


2. FLEXing the Color Computer YouTube Series

For more information please see one of my YouTube videos:

PlayList:https://www.youtube.com/playlist?list=PLKZPh42EUcynotoZhJ6Z7dN0DUDfs2OaU

MikeyN6IL’s VLOG $0D: FLEXing the CoCo Ep.1: History::https://youtu.be/wxjyv4LzXe8

MikeyN6IL’s VLOG $0E: FLEXing the CoCo Ep.2: Editing and
Assemblinghttps://youtu.be/XD7kG-iluwE

MikeyN6IL’s VLOG $0F: FLEXing the CoCo Ep.3: Restorationhttps://youtu.be/Uj2AK9lkVe0

MikeyN6IL’s VLOG $10: FLEXing the CoCo Ep 4: Artifactshttps://youtu.be/E30y-yEvGDE

MikeyN6IL’s VLOG $11: FLEXing the CoCo Ep 5: Releasehttps://youtu.be/uBkrlUfA_5Q

=======================================================================
=



                                                                                                  3/6
3. Frank Hogg Labs Color FLEX 5.0:4

https://archive.org/details/color-utilities-flex-frank-hogg-laboratory

This package contains FHL Color FLEX 5.0:4 copied from a physicalfloppy disk found in
MikeyN6IL’s Collection.

The same disk image is provided in 3 different formats: SCP, DMK, and SDF

Note that DSK or IMA format sector images are not provided because they arenot useful on a
CoCo. HxCFlopyEmulator Software or Mikey’s dmk tool can beused to create them.

Package Contents::

fhl_flex_5_0_4.scpThe SCP image was made from a physical disk using a GreaseWeazle

fhl_flex_5_0_4.DMKDMK conversion of above. This is usable in XRoar and Emulators.

fhl_flex_5_0_4.SDFSDF conversion of above for the CoCoSDC

Also in this package:::

fhl_flex_5_0_4.pngImage of the original floppy disk

=======================================================================


4. Frank Hogg Labs Color Utilities

https://archive.org/details/color-utilities-flex-frank-hogg-laboratory

This package contains FHL Color Utilities copied from a physical floppydisk found in
MikeyN6IL’s Collection.

The same disk image is provided in 3 different formats: SCP, DMK, and SDF

Note that DSK or IMA format sector images are not provided because they arenot useful on a
CoCo. HxCFlopyEmulator Software or Mikey’s dmk tool can beused to create them.

Package Contents::

fhl_color_utilities.scpThe SCP image was made from a physical disk using a GreaseWeazle

fhl_color_utilities.DMKDMK conversion of above. This is usable in XRoar and Emulators.

fhl_color_utilities.SDFSDF conversion of above for the CoCoSDC


                                                                                             4/6
Also in this package:::

fhl_color_utilities.pngImage of the original floppy disk

=======================================================================
=


5. Frank Hogg Labs “ED” Editor

https://archive.org/details/ed-editor-flex-frank-hogg-laboratory

This package contains FHL “ED” Editor copied from a physical floppy diskfound in
MikeyN6IL’s Collection.

The same disk image is provided in 3 different formats: SCP, DMK, and SDF

Note that DSK or IMA format sector images are not provided because they arenot useful on a
CoCo. HxCFlopyEmulator Software or Mikey’s dmk tool can beused to create them.

Package Contents::

fhl_ed.scpThe SCP image was made from a physical disk using a GreaseWeazle

fhl_ed.DMKDMK conversion of above. This is usable in XRoar and Emulators.

fhl_ed.SDFSDF conversion of above for the CoCoSDC

Also in this package:::

fhl_ed.pngImage of the original floppy disk

=======================================================================
=


6. Technical Systems Consultants Extended BASIC

https://archive.org/details/extended-6809-basic-flex-technical-systems-consultants

This package contains TSC Extended BASIC copied from a physicalfloppy disk found in
MikeyN6IL’s Collection.

The same disk image is provided in 3 different formats: SCP, DMK, and SDF




                                                                                             5/6
Note that DSK or IMA format sector images are not provided because they arenot useful on a
CoCo. HxCFlopyEmulator Software or Mikey’s dmk tool can beused to create them.

Package Contents::

tsc_extended_basic.scpThe SCP image was made from a physical disk using a
GreaseWeazle

tsc_extended_basic.DMKDMK conversion of above. This is usable in XRoar and Emulators.

tsc_extended_basic.SDFSDF conversion of above for the CoCoSDC

Also in this package:::

tsc_extended_basic.pngImage of the original floppy disk




                                                                                             6/6
