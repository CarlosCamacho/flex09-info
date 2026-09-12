# ABASIC - TSC A-BASIC Compiler User Manual for FLEX and OS-9

> Source: `dev/basic/ABASIC - TSC A-BASIC Compiler User Manual for FLEX and OS-9.pdf`  
> Method: PDF text extraction

The text below preserves the wording and formatter directives found in the historical source. OCR and media-decoding errors may remain.

FW




           ;.lr,it|: ;
      It


_.,-l
*
iàÊ
                                              Table of ContenÈg


I ntr o d u c È l o n                                               I
G e t t i n g St a rte d                                            I
A / BA S I C p r og ra n stru ctu re                                5
Co m p il a t i o n P ro ce d u re s                                6
Err o r M e s s a g e s a n d P ro ce ssl n g                       7
           C o m p i l e -T rme E rro r C o d es                    7
           Run-Tlrne Error Codes                                    9
Àr lthrneÈic Operations                                            10
            Numbers                                                10
            N u m e r l c V a rl a b l e s                         1I
           À r i t h n e È i c Op e ra to rs                       L2
            Ar i t h m e ti c F u n cti o n s                      13
            Ar i t h n e ti c      E rro rs                        14
            t { u l t i - P re ci s i o n A r i th n e tlc         15

String        O p era ti o n s                                     16
          St r i n g L l te ra l s                                 16
          St r i n g V a ri a b l e s                              t7,
          S t r i n g C o n ca te n a ti o n                       18
          NulI                                       .r .          l8
                     - st.ri n g s                                 18
          S t r i n g E xp re ssi o n s
          S t r i n g C o ro p a ri so n s                         19
          St r i n g F u n cti o n s                               19
          St r i n g Op e ra ti o n s o n the I/O Buffer           22

Co n p i l e r Di re cti ve S ta te n e n ts
         ORG and BÀSE St,atenents                                  23
         D I t l Sta te me n È                                     25
         D e c l a ra tro n o f S i n p l e Var lab1es             26
          EN D S ta te n e n t                                     27
          NAl,lESÈaÈenent                                          27
          REl.l Statenent                                          27
          PAGE Statement                                           27

Ass i g n n e n t S fa te n e n ts                                 28
        A r i t h r ne ti c A ssi g n rn e n t ( tET)          .   28
         P O K E S ta te me n t                                    28
         S t r i n g A ssi g n me n t                              28
 Co n t r o l S t a te me n ts                                     29
          C A t t S ta te me n t                                   29
          F O R / N E X TS ta te me n ts                           30
          GOSUB/RETURN          StAteMCNtS                         31
           I F I T H EN S ta te me n t                             3I
           ON ERRORGOTOStatenent                                   32
           ON GOTOand ON GOSUBStatenentE                           33
           STOP Statenent                                          33
           C H AI N S ta Ë e n e n t                               34
           SEELL Statenent                                         34
           GEN Statenent                                           34
                                          I


                                                        -t1-
                                                 lable    of Cpntents

      I n p u t / O u t pu t S È a te n e n ts
                  INPUT Stat,enenÈ                                       35
                  PR I N T S ta te n e n t                               35
    .            D I S P L A Y S ta te me n t                            35
                                                                         36
      À/ B À S I C Dl sk f/O Op e ra tl o n s
              D i s k f/O C o n vé n tto n s                             37
              OPEN Stateurent                                            37
              CREâ,TEStatenent                                          38
             Ct,oSE StatenenÈ                                           38
             BTRITEStatenent                                            39
             RWRfTE StateurenÈ                                          39
             REÀD Statenent                                             40
    '        RREADStatenent                                             41
             RESTOREand SCRAICE Statenents                              42
             Kf t L S ta te rn e n t                                    42
             ON EOF Statenents                                          42
             RENÀl,tEStaternent                                         43
             D t s k F u n cti o n s                                    43
             F I L SIZ F u n cti o n                                    43
             STÀTUSFunction                                             44
                                                                        44
    C o u r p i l a t i o n p ro ce d u re s
                                    p ro ce d u re s fot PLEX           45
             9 o . p il a ti o n                                        45
             C o m prl a ti o n p ro ce d u i e s for OS_9
             Error handling                                             45
             p r o g r a n l i sti À g                                  46
                                           fo rma t
             Symbol table tôrmat                                        46
                                                                        47
    Àppendix A - À/BÀSIC Run-Tine
                                   Environnent                          À1
    Àppendix B - À/BASIC Language
                                   Suûnary                              B1
    Àppendix C - À./BASIC Error Codes

                          C o n p l l e _ T i me Er r or Codes
                                                                        cl
    Àppendix - ffË;3iË"":;:::,'::u;lor.-                                c2
          " FT'NCTIONS                                                  D1
                          OPERÀTIONS                                    DI
                          STATEMENTS                                    D2
                                                                        D4




)
                                      t

                                                     - t li-
                             AÆASC YOCABTTLABYI,6T



     The terms defined below may be unfamlliar to ssne programmer€or used tn a \
)    speeial context in this manual.


    *Af,tOëliftôltl
                    t The proeess of asslgnmentof a specific memory address to
     variables or madrlne lnstruetions.


    ;UODE'GËNEBATION:I ffre process of creating maehinelanguage lnstruction*


    fëCi-lt-pilÈ:'iiltÈ:"1 Used to describe the time during which the BASIC program
      is being proeessedby the compiler.


    i;IfBh'ÂBÏit    A eolleetion of subroutineswithrn the eompiler (BASLIB) which
      are- used_to generate subroutines within the machinelanguageprogram. It
      includes nimagegnof subroutinesfor mathematiealfunctiorsf stiurg: præessing,
      input/output, array operations, ete.


    ilTÏUÈ'fgFËRENCE:l a rererenee from a statement to a bne number which is
      that of another line.


    f,IiliË'nflEnE"IC,glTABtT"# A table which is kept by the compiterwhieh is
     used to store the eorrespondencesbetweenreferencedline and the memory
     addressassignedto the line.

    çT,,TI[Ë'EÉIEDIfOR:?A portion of the AÆAsIc compùer program whreh plaees
     subroutlnes which are tequlred in the obJeet program. The images are
     obtatned from the library and the linker/editor irserts absoluted address of
     the subroutines in the prograrn. Orùy one eçy of a subroutine will ever be
     generated tn a program, and only those that are tequtred by that speeific
     Progtam.


    fUqrsgr,coDE:fThe machine-languagelnstructions generated by the
     compiler.                         I
                                       I




    I,UEJECT FltÈ: ! The tape oi other media file that the compter has written
      the machinelanguageprograir, on.


                             rn" maehinetanguageprogram produeed by the
    l''O:EJBC-Ti:P'f,ô68îrfri.1
     compilerfrom tlre BASICsoïr.e program.


t
             A eomplete scÀ of the source progrsm. AÆASC ts a two pass
     compller so lt must eompletely read the'Boureeprogram twlee.


                                           {v-
                                         YOCAATIL/\BT   IÀ57
               ,              CAI3ASIC


     .''RËÂL:Tiu*8"-ExnôuttiiÈ:?
                              The portion of the os-9 Operating System that
       schedules and contrcls task exeeution


                    llsed to describe events or the time ùrirg   whrch the maehine
     "BUN:IIIMB;I
      language ptogram ls beûrg erecuted.


     'ISOURCE'fiijfïïlthe     tape or other media containirg the AÆA$c program
       whlch


     i soIIRcE PRocBAilli fttre BAsIc program text to be eompiled.


     i-Êf{egË T4BLEï? A table kept by the compiler during eompitationthat
       contarns information about t\e correçondence between variable namesand
       assigned memory.addressegand type of variable.


     f5îiiffXi']   nutes for groperconstmetionof parts of BASICstatements.


     lîftttrB ÇOMPtf.!rlE!9T31A methodof binary representationof numberswhere
       negative numbers8re tepfesentedas the result of srbtraetingthe absolute
       value of the numberfrom zero.




-i                             \




                                           n-
     I n t r o d u cti o n

     à . / B A S IC i s a n o p ti n i zi ng  Èwo- pass BASIC compiler   for the
     U 6 8 0 9 fa mi l y    o f n i cro pr ocessor s  whictr conver ts pr ogr ams
     written        i n B À S IC to 6809 native code.        ft is not meant to
     t e a c h th e B A S IC l a n g u age to a beginner ; but as a power ful
     t o o l fo r so n e o n e e xp e rienced in the use of BASIC.

     À/ B À S IC       i s o ri e n È e d towar ds applications      pr eviously
     p r o g r a n me d i n a sse n b l y language due Èo its capability         to
     p r o d u ce e xtre rn e l y fa st, conpact object, pr ogr ams.

     T b e c o u rp i l e r I s o u tp u t can be r un as a stand- alone RN.l' ROI{
     o r PR OI{b a se d p ro g ra n which nay be r un without any r un- tin e
     p a c k ag e .        A b u i l t-l n linker /editor     automatically    selec ts
     s u b r o u ti n e s     fro m A /B A Sr Ct6 inter nal libr ar y and inser ts o ne
     a n d on l y o n e co p y o f subr outines r equir ed dir ectly         into the
     object        p ro  g ra m

     D e p e nd i n g     o n È h e sp ecific          pr ogEâr r lr À/BASIC can pr oduc e
     p r o g r an s      w h i ch n a y r eflect           a 50 to 1000 tir nes speed
     i n p r o ve me n t     o ve r i n te r pr eter s      with a significant    m emor y
     s a v i n gs     typ i ca l l y   2 5 - 50t less nemor y r equir ed.

     A/ B A S IC a l so co n ta i n s statenents for cr eatingr   r nanipulatin g
     a n d p e rfo rmi n g l /o to disk data files which make it suitabl e
     f o r a w i d e ra n g e o f system pr ogr anm ing applications.


     GEXERAL INFORTTAÎION ÀBOTII À./BÀSIC

     A/ B À S IC i s a È w o -p a ss tr ue cor npiler that dir ectly            conver ts
     BASIC language                     sta tenents       to 5809 r nachine language
     i n s t r u cti o n s.          C o rn p ar ed to standar d BASIC inter pr eter sr
     À/ B A S IC p ro g ra ms             ru n fr on 50 to 1000 tir nes faster          and
     u s u a ll y        re q u i re    su b s tantially    less m emor y to r un.      T he
     conpiler             o u tp u t i s n ROMabIe' neaning it can be placed in to
     R O I ' I Sd i re ctl y.

     A / B À S IC i s u se d o n B ÀSIC pr ogr am files     which you wish to
     c o r n pi l e i n to o b j e ct code.   These files   m ust be in keepi ng
     w i t h p ro p e r À /B A S IC syntax.     You would fir st  use an Edit or
     ( s u c h a s F H L rs E D ) È o cr eate these files.

     T h e n th e co mp i l e r       re ads the BÀSIC pr ogr am fr om disk and
     o u t p ut,s th e ma ch i n e language pr ogr am on anot,her disk f ile.
     T h e i co mp i l e r  mu st scan the sour ce pr ogr am twice to oper ate
     c o r r e cÈ l y.     D u ri n g e ach pass, the sour ce pr ogr an is r ead
     l i n e b y l i n e a n d co rre sponding machine language gener ated.

     T h e f i rst   p a ss i s a l n o st idenÈicaI to tbe second in t.hat t he
     c o n p il e r   p e rfo rn s     alnost the sane funcÈions.         Eowever ,
     d u r i n g È h e fi rst      p a ss the conpiler    does not' know' all      of
     Èb e e ve n tu a l rre mo ry addr ess of statenents           and subr outines
     Èh a t b a ve n o t ye t b è en pr ocessed.          Ther efor e  the pr lr nar y
     p u r p ose o f th e fi çst pa6s ls to bulld tr o major tablesr t he
-)   e y n b o l ta b l e a n d L i n e r efer ence t,abler that wltl be used to
     l o c a t e va ri a b l e ,   sta tenent and subr outine addr esses dur ing


                                                -1
     t h e s e co n d p a ss.

     D u r i n g tb e se co n d p a ssr each sour ce statenent is r ead an d
     m a c h i n e l a n g u a g e a n d l i sting          lines ar e output,. Each.sour ce
     l i n e i s co ro p i l e d i n d i vi dually             sith the help of infor nation
     s t o r e d i n È h e symb o r and line r efer ence tables.                   The thr ee
     najor           p a rts o f th e co npir er             ar e.tbe gtaÈer ent, pr oceaaor
     w h i c h d e co d e s th e so u rce statem enÈs and br eaks t,hèn down to
     their          l n d i vi d u a l     syn ta ctical      elenents, the two er pr esslon
     Proceagors (string and numerlc) wblcb converË expressions to
     a n l n t ern a l              re p re B e n ta tlon     and optinize     the or der of
     o Pe r a n ds a n d o p e ra to rse                  and the code gener ator       which
     c o n v e r t,s th e e xp re ssL o ns fr on the inter nar for mat to 580 9
     machine                language           a n d also per for ns    another    r evel.of
     o p t i n i z ati o n             b y se l e cting    optinun addr essing m odes and
     i n s t r u c ti o n       se g u e n ce s (s uch as CLRA instead of me l0) .
      D u r i n g co rn p i l a ti o n         o f the nain pr ogr am the com pir er notes
     . w h i c h sp e ci a l su b ro u ti n e s fr on tbe built,- in libr aiy        ( BAsLr B )
      will          b e re q u i re d         fo r the specific      pr ogr am.  The BASLIB
       library.          i s a co l l e cti o n       of special subr outines that per for m
       f u n c t i o ns th a t a re n o È availabte in the 6809 instr uction               set
        ( s u c h a s d i vi d e )         o r a re connonly r efer r ed to thr oughout a
      Pr o g r a n (su ch a s i n p u t/output               and str ing oper ations) .   Th e
      B A S L I B su b ro u ti n e s a re shor tr fast and position- independent
        ( t h e to ta l         l e ss th a n lk) .         At the end of the paJs, the
      conpiler               a u to ma ti ca l l y        appends the r equir ed       BASLTB
      s u b r o u ti n e s      t,o th e p ro g ran and another par t of the cor npir er
        ( t h e l in ke r)         i n se rts      the necessar y subioutine calls within
      t h e p r o g ra n .            o n e co p y onr y of those subr outines which ar e
      required              fo r th e p a rti cular         pr ogr an ar e included.     This
      e l i n i n a te s     th e n e e d fo r the typicar ' r un- time packages' use d
      b y o t h e r co n p i l e rs            a n d adds to the Rouabir fty      oi a/gasr c
      o u t p u t co d e .


     T h e A/ B A src         L i b ra ry R u ntim e sour ce is available for those
     w h o n e e d i t.        T h e co st i s $75.00 and r oay be obtained fr om:
             F a i r a n d À sso ci a te s
             1 9 5 2 S o . E o L l a n d S t.
             Lakewood, CO 80227
             ( 3 0 3 ) 9 8 s-7 4 1 9
                          I


     c o n s u l ta ti o ri o n A ,/B A src pr ogr am s is also available on a fee
     b a s i s fro n th e a b o ve a ddr ess.        please do not contact FHt in
     r e g a r d s to e i th e r o f tl i e above as we will onJ.y r efer you È o
     F a i r a nd A sso ci a te s.




                                   t
_)


                                                  -2
    BI}US POR PRODT'CING@OD A./BÀSIC PROGRÀf,S


    I . S U B R OT T ItrEU se su b r outines    wher ever possibler €v€n for
    o n e li n e w h i ch i s u sed r epeatedly.        This will  r esult in
    s i g n i ti ca n tl y sh o rte r nachine code.



    2. IISB TEB IIIRECT PÀGE llse the Base statement (and DII'I if
    n e c e s sa ry)      to p l a ce y our comm only used siur ple var lables i n
    t h e 6 8 0 9 d i re ct       p a g e ( $0030 to S00FF) . Put big ar r ays a nd
    string        va ri a b l e s   e l se wher e. This will per nit the cor npiler
    t o u s e th e d i re cÈ a d dr essing m ode which pr oduces shor Ëer r
    f a s t e r i n stru cti o n s.



    3. ttsE REHÀRXSGEAEROIIST,ïWiÈh À/BASIC, REM statements do
    n o t a ffe ct      th e u ra ch i ne language pr ogr an size or speed at
    all.         U se co n me n ts to im pr ove the inÈer nal docum entation a nd
    r e a d ab i l i ty   o f yo u r pr ogr ams.    It pays in the long r un to
    p r o d uce w e l l d o cu me n ted pr ogr ams that can be r efer r ed to or
    m o d i f i e d b y yo u rse l f o r other s.



    4. READ IEIS f,ANItÀL CAREFIILLYThere are nany treats buried
    i n t hi s d o cu u re n t (a n d 6one potential pitfalls  as wellt)    If
    A / B À S IC i s yo u r fi rst     exper ience with a compiler r ead thi s
    book againt          9 0 t o f the questions people wr ite or call us
    a b o u t a re a n sw e re d i n this Danual.



    5 . ttSB TEB Lf SlItrG TO EELP DEBIIG PROGRÀI{S                   If your À/BASTC
    progran          co n p l l e cl w i thout   er r or s but does not per for m as
    e x p e cte d l yo u a l mo st cer tainly             have an algor ithmic    fau l t
     ( o t h erw i se    kn o w n a s p rogr amm er er r or ) .   The À/BÀSIC ) .isting
    p r o v i d e s yo u w i th u ru ch valuable infor nation that can be used
    t o f i n d ru n -ti rre e rro rs in conjunction with your inter active
    d e b u gg e r p ro g râ m.          T he statenent     addr esses on the Iisting
    c a n be u se d to p l a ce br eakpointsr ancl the symbol table dur np
     ( O PT S ) sh o w s va ri h U te addr esses Èhat can be exam ined w i th
    t h e mo n i to rrs me mo ry change function.



    6. GET Tr0 ItrOl IOUR ColiPII[BR If you bave not had experi"n""
    w i t h th e 6 8 0 9 rs n a ch i ne languager take the tine to acquir e
    s o m e u n d e rsta n d i n g o f iÈ.    A./BASICoffer s a conve:r ient way :
    W r i t e a o me ve ry sh o rt    pr ogr am sr cour plle then and obser ve h ow
    À . / B À src a e n e rà te q co ir eéponctlng nachine language by usl ng
    OPT E
)



                                             -3
O.X. EEREIS f,T ITISf, - TEÀÎ DO I DO ïIIE           rI?
T h e f i rst         th i n g yo u sh ould do with your A/BÀSIC disk is to
m a k e a co p y o f i t o n to a wor k disk.         This should be done on
q n e w ly fo rma tte d 3 5 or 40 tr ack disk ( depending on your
d r i v e ca p a ci ty)         yh i ch can then ' be used fbr stor age and
n a n i p u l a ti o n o f V B A S IC files.

EERETSEOtt (on a PLEX sysÈem)


                           ..llÈb. a- ',; Single Drl.ve:,
                            I!.:;"*,i-'rt* , 'il,:li',.il=*,,. ,l
l.   B o o E u p yo u r F l e x o per ating sysLen
2.   F orn a t a n e w d i sk, using the FIex com m and:NEW DISK

3.   R e i n se rt yo u r F Ie x disk and use the Flex comm andr SDC
                                                                 .    to
     c o p y A /B A S IC o n to Èhe newly for matted      disk.    ( SDC
     ABÀSIC.CI'1D     )

4.   You rnay then either copy your Ectitor onto the newly made
     w o rk d i skr co p y th e Flex BUITD conm and onto the disk, o r
     c o p y e a ch i n d i vi d u a l pr ogr an file to be com piled onto
     t h e vo rk d i sk u si n g tbe Flex SDC cor nmand.



1.   Bo o t u p F l e x i n D ri ve t 0'
2.   F o rn a È a n e w i l i sk i n Dr ive t I (NEtrDrsKl)
3.   U se F l e x co n ma n d COPY to n a k e a c o p y o f y o u r A / B A S IC
     d i sk.


     BoI{(on an t';:.i:':i:.r"
EERETS
                                             Drr.ve
                                     *j;l:*,.ftd"lt.
                        Ëî:li's                   ,'it
L    B o o t u p yo u r syste n
2.   F orn ra t a n e w d i sk u sing FORlttAT.
3.   L o a d 'L OA D I (L o a d the Load pr ogr an into memor y) .
4.   I n se rt th e À /B a sl c disk.
5.   L o a d |A ,/B A S IC t (L o ad the cor npiler into m enor y) .
6.   I n se rt yo u r n e w d i skeÈte ( or Destination diski.
7.     Sa ve 'À B A S IC| (S a ve the com piler on the Dest i:iation
     d i sk).




1.   Bo o t u p yo u r syste m.
2.   F o rma t a n e r d i sk.
3.   C o p y th e f i l e s'f ro u r the ur aster to tbe new disk.
        À./BAsrC PRoGRÀltsrRUgrgRE (rn other wordsr tour                         programs to
        b e c on p i l e d n u st fo 1 l o w this syntaxl)

                                                                 tô"'iisË' Ê'IiêT
        -ffiË:fÏ.ÈâËjp"LsË:Jfi-:'Ëlôôiiôïîie*âri3t7ËC3ie"p"fôqùâfr'''lé-
                    IÈ e xt
    )   : s y s Ç .e u r!s            e d t.t-q 1 _to cr eate...' a s.eur cs, f{ ,le uh.ich wiI}}
                           yo
        : _ c g n :!'a .l n . u .r, è /D a s:,c pr ogian.,r f A/BASIc accepts the f il e
         f o r m ats u se d b y n o st e ditor s.

        A n A/B À S IC p ro g ra m co nsists of a ser ies of sour ce lines.         A
        a o u r c e l i n e n a y o p ti o nally   begin r iÈh a line nunber , whlc h
        l s t h e n fo l l o w e d b y o ne or nor e À/BASIC etatements.      If t he
        source          line    co n ta i n s mor e Èhan one statenent   a colon 3
        c h a r a cte r     i s u se d to seppar ate the statenents.       A sour c e
        l i n e ma y co n ta i n u p to 80 char acter s.

        L i n e n u mb e rs a re p o si ti ve decim al number s up to four digits.
        T h e s e n u st a p p e a r se quentially    in a pr ogr am and m ay not be
        d u p l i c a te d .

        Sp a c es i n A /B A S IC sta t,ements ar e not r eguir ed however t,h ey
        m a y b e u se d to i mp ro ve r eadability        ( except when used i n
        string    co n sta n ts) .    Onlike inter pr eter s,   REM ar k st,atements
        d o n ot a ffe ct p ro g ra m size and m ay be used gener ously.

        T h e la st sta te n e n t       o f a pr ogr ar n is    an END statem ent           a nd
        p r o c e ssi n g ce a se s w h e n END is r ead.



        Exan ple    of       progran   struc t u re :

        We'1 1 start     with    a toug h o n e .    Itfs        a n a v e ra g in g p ro g ra m
        w i th a file   name ofe wha t , e ls e b u t A V G . T X T
               IOO PRINT TTHIS PROGRAT-{S      ÀVERÀGESA SERIES OF NU}IBERSi
                   PRINT 'gOW HÀNY NUIIIBERST: INPUT N
                   PRINT .WEÀT IS TEE FIRST NUHBER? ,:INPUT T
                   FOR X=2 TO N:PRINT |NEXT NUHBER?I: INPUÎ I
                   T=T+I :NEXT X
                   P RINI:P RINT 'TE E À V E RA G EI S " ; T / N
                   P RINT oDO Y OU WA NT T O CO NT I NUE ? ' : I NP UT A $
                   IF À $="Y E S ' TFE N 1 0 0
                   STOP
                   END


        * D i d yo u typ e th i s va luable pr ogr am in?              Itr s   sur e to br ing
        y o u h o u rs o f e n j o yrre n tl I
                         ,




)


                                                        -5
    COIæIIÀÎIOF            PROCBDT'RAS

    N o w h o p e fu l l y   yo u tve g o t a wor k disk r ith ABASIC on it, and
    a f u n li ttl e        a ve ra g i n g pr ogr ar n in a f i1e called AVG.TXT,on
    t h e r e to o .      Oh b o y.

    T h e c o np i l e r   i s È h e n ca l l ed     by a system comm andsuch as
         ?t"
         *,.



    T h e a b ove fo rn a t          sp e ci fi es the file    ' SOURCE.as being the
    ' u n c o n pi l e d '  fi l e .      T h is nust be a Text file    ( i.e. conbain
    a n A/ B A S IC so u rce p ro g r an) .          This will    default    to a .TXT
    e x t e n s i on u n d e r F L E X .

    The file         ca l l e d     " OB JECT' is the file    into which the
    'compiled'        ve   rsi  o n   o f the sour ce file is put. The object
    f i l e wi l l  d e fa u l t to a .BIN ( Binar y llachine Code) extension
    u n d e r FL E X o r th e cu rre n t Execution Dir ector y under OS- 9.

    N O T E : S p e ci fyi n g    th e Object file to have the sam e name as
    a n a l r e a d y e xi sti n g fi l e will cause the existing file to be
    d e l e t . e d.

    "O P T I ON S ' i s a n o p ti o n a l    list     of conpile- tine   options:



               ffi..i-ffiR.e-ffF"ë,Hf,ry*ffi
    So in our exanple

               ABÀSICrÀVGTAVGT+L or
     .         ÀBASIC AVG.TKT O=AVG.BIN L

    will        t ake th e sa mp l e sour ce pr ogr an stor ed in ÀVG.TXT and
    c o m p i l e i t a n d sto re i t in another file called AVG.BfN, and
    g e n e r a te    n o l i sti n g . Tr y iÈ- - Go back to the oper ating
    s y s t e m a n d typ e A V G.B IN

    W h a t actu a l l y        h a p p e n s is that A/BÀSIC is Loaded by the DO S
    a n d b e gi n s co n p i l a È i o n .     Dur ing the second pass, a for matLed
    listing         i s p ro d u ce d w hich witl         include any er r or message s
    d e t e c t e d d u ri n g th i s pass ( See COIIPILE- TIM EERRORS) . The
    listing         u su a l l y co n si sts of thr ee fielos:      The fir st  is the
    H e x a d d re ss w h e re th e object code star ts               for the BASIC
    source line;               th e se co n d field is the statem ent line num be r
    i f a n y ; a n d th e l a st fi e l d        is the BÀSIC sour ce line.

    After        co mp i l a ti o n l s com pletel the pr ogr an statistics,     load
    map and slnnbol table (if the progran lras compiled with the S
    o p t i o n ) a re p r l q te d .       The load Dap list,s the nam es and
    a d d r e s se s (n a i n e È try polnt) of the subr outine packages the
J   c o m p i l er se l e cte d a n d i n cluded ln a par ticular    pr ogr am .


                                                       - 6-
     BRRORf,BSSÀGES ArD PNæBSSIFG

     l { h e n A ./B À src d e te cts ân er r or in Èhe sour ce pr ogr am dur in g
     either        th e fi rst    o r second pass it will      pr int   tbe sour c e
     L i n e i n e rro r a n d a Dessage with an er r or code ( the cod es
     a r e l lste d       i n tb e a p p endix) , The line below t,he er r oneous
     source line will              h a ve an up ar r ow showing the appr oximate
     position          o f th e e rro r.    This er r or location     is about 9 5t
     a c c u r ate .

     l { h e n an e rro r l s d e te cted on a sour ce } lne the cour piler wi l l
     n o t p ro ce ss        th e l l n e    fur tber even if it, is a r nultiple
     s t a t e me n t  liner        E o ttre r est of the Bour ce line should be
     e x a n i n e d ca re fu l l y   fo r possible undetected er r or s,




,J                           \
                      À./BÀSIC COIIPILB-IIITB BRRORCODBS


 02   L i n e n u mQe _d_uqp l i ca te{ or   out of sequence
 g1 rni'etj$t itË-Ë:Ê
                    i_é
                      ta.t-a.ù-tT
3l $#llf;Ê'*l;rt,i""ins o, in error
 9 q Eq ua 1 si g n mi ssi n g
 0 7 u n d efi n e d        l i n e re fe rence:        Gor o or GosuB to nonexistant
      Line nuurber
9 q l i g ht        p a re n th e se s n i s slng or ur l.snested
0 9 O p e ra n d u ri ssi n g i n e xpr eésion
l0    D e sti n a ti o n l i n e n u n bèr nisslng or Ln er r or
1 1 N u m b e r u ri ssi n g
1 2 l t t i sn e ste ct F OR ./N E X 1        Toop( s)
1 3 S y r n b o l ta b l e o ve rfl o w *
1 4 l l l e ga l        ta sk n u rn b e r - sr usÈ,be 0 to 15
l :6 I i g g i l g      o r.i l te g a r     u s age of r er aÈional oper ar or ( s)
1     D e l i mi te r       (, o r i ) nissing
1 7 Q u ote u ri ssi n g a t e n d of stiing
18       r l le g a l        typ e o r missing            éounter     var iable     in FoR
      s t a te me n t
1 9 R e de fi n e d a rra y
2 0 Er ro r i n a 5 ra y sp e cification:                       subscr ipt nissing;    too
      m a n y su b scri p ts
2 L Er r o r i n .a rra y sp e ci i icaÈion:                 subscr ipt zer o or lar ger
         t h an 2 5 5
2 2 v a r i a b re sto ra g e o ve rflowr tr ied to alr ocate past $FFFF
2 3 R e fe re n ce to u n d e cl a red ar r ay
2 4 S u bscri p t e rro r
25 ltissingr lllegal                     tl p e or lncor r ecÈ function ar gument,
         ( n u me ri c )
26 fllegal             o p ti o n
?7_   U  n   r e co g n i ze d o p e ra to r in str ing expr ession
2 8 C o nca te n a ti o n o p e ra tor ( +) m iséing-
2 9 l t i s si n g '. i l l e g a r      typ e or incor r ecf, function ar gunent
         ( s tri n g )
30 Too _many FOR,/NEXTloops active - max is l53l                                Line
        r e fe re n ce ta b l e o ve rflow *
1 ? l l o g ra m sro ra g e o ve rfrow - tr ied to alLocate past gFFpF
3 4 G O TOo r GOS U Brn i ssi n g
1 5 f l l e ga l       ch a n n e l n u mbér : nust be 0 to 9
3 6 Er r o r i n d i sl .. I/O Ii st

* T h e se e rro r typ e s a re not pr ogr am
                                                er r or s. ff m o r e .s y s t e m
m e m o r y i s a va i l a b l e th e tableJ nay be expanded t o in c lu d e
m o r e e n tri e s.




                                             -8
                            À./BÀSTC RT'}T-ÎIf,B      ERROR CODES


    \
        T h e E R R fu n cti o n   w l II r etur n one of   the   following   codes
        a f t e r a n e rro r o ccu ra at r un- tine:

        ERRORS O TO 31
                                              DISK ERRORS the codes used
                                              are ldentical   t,o ttrose used by
                                              the host DOS and nay be fou nd
                                              ln the systenr s      DOS m anua l .
                                              AIl     codes     nay     not  be
                                              lnpleurented by   DOS.


        ERROR 32
                                               UULTIPLY OVERFLOWThe r eSUl I
                                               of a nultiplication      excee ds
                                               the r ange +32767 to - 32758.
                                               The r esult  was the low or der
                                               16 bits of the r esult and the
                                               high or der 15 byÈes ar e sav ed
                                               in the fast scr atch ar ea.

        ERROR 33
                                               DM DE ERROR A divide with            a
                                               zer o divisor was attem pt,ed.       A
                                               r esult of zer o lr as r etur ned.

        ERROR34
                                               CONVERSIONERROR The BAS LIB
                                               ASCII- Èo- binar y     conver sion
                                               r ead illegalr     over size  or no
                                               lnput.      À value of zeto h r as
                                               r eÈur ned.




                               T
J
                                               - 9-
    ARITBI{ETIC OPARÀTIONS


    lttNTBERS

    A. / B A s r Crs n u me ri c d a È a Èype is inter nally       r epr esented as 15
    bit       ( 2 b yte ) tw o I s co n plir nent integer s.          This per m its an
    e q u i v a l en t      d e ci ma l ra n ge of + 32767 Èo - 32768.       This data
    r e p r e s e n ta tl o n        is    q u i te natur al to the 6809r s nachine
    L n s t r u c Èi o n      e e t w h i ch allows A/BASIC to pr oduce extr enely
    fast and conpact nachine code.

    Becauae             tb e co n p i l e r      suppor ts  boolean    ( tr ue/Êalse)
    o p e r a t l on sr     u n si g n e d 1 5 bit binar y nunber s nay also be used
    f o r m an y fu n cti o n s.            T he r ange for these ar e: 0 to + 65535.
    T h e s e nu mb e rs a re u se d for r efer enclng            nenor y addr ess in
    m a n y c a se s.

    À. / B A S I C p ro g ra n s ma y i nclude numer lc constants in either
    decimal         o r h e xa d e ci rn a l notation.         In Èhe latter    case a
    dollar'slgn            n u st p re ce de a hex value or a pound sign * to
    represent          th e l o g i ca l cour pliur ent ( 1r s cour pllnent or boolean
    NOT) .


    Ex a r n p l e s o f l e g a I n u n b e r constants:

    200     - s0 0 0    $ 0 1 0 0 -3 0 0 0   12345     t]   l$5000    $FFF0 *$c0F1


    Examples of ILLEGAL NUMBERS:

    9 . 9 9 ( fra cti o n s n o t a l l o wed)
    1 0 0 0 0 0 0 (n u u rb e r i s È o o l ar ge)
    + 2 0 ( p l u s si g n n o t a l l o w ed - positive     if   not sr inus)

    B e c a u s e b i n a ry n u rn b e rs a r e r epr esented ln elther unsigned or
    2 t s c o rn p l i n e n t fo rn , a s weII as Èhe dtffer ences beÈween hex
    a n d d e c l n a l n o ta tl o n o f identical       nunber s, all the following
    n u m b e r co n sta n ts h a ve a binar y value whlch ar e the same:

    -1     SFFFF       t0   5s 535




                                 \
)



                                               -10-
NIITERIC VAITIÀBI,ES


L e g a l n u n e ri c va ri a b l e names in À/BÀSIC consist             of a sing l e
letter           A -Z o r a si n gle      let,Èer and a digit              0- 9.  T he
f o l l o w i n g a re l e g a l va riable nam es:

XN R 2 Z 9 A OP l

I f d e cl a re d l n a D Il .t stateuente       numer ic var iables  nay be
a r r a ys    o f o n e o r tw o diur enslons.      The maxlmun subscr ip t
s l . z e s Is 2 5 5 ,. tb e re fo re  tbe lar gest  one- dinensional  ar ray
h a s 2 5 5 e l e me n ts a n d the lar gest two- disr enslonal ar r ay has
2 5 5 *25 5 =6 5 0 2 5 e l e me n ts. Subscr lpts begin at 1.

W h e n re fe re n ci n g su b sc r ipted var iables the subscr ipts may be
n u n e r i c co n sta n tsr     vâr iables or expr essions as long as the
e v a l ua te d    re su 1 L l s a positive           number ,fr on I to 2 55.
A / B A S IC d o e s n o t   p e rfor r n r un- tim e subscr ipt  checking for
o v e r r a n g e e rro rs (w h i c h would cost consider ably in ter ms of
p r o g r a n si ze a n d sp e e d) ..

R e f e r e n ce s to tw o -d i n ensional ar r ays r equir e the pr ogr an to
p e r f o rm a n u l ti p l i ca ti o n   to calculate   the actual. elene nt
a d d r e ss.       E ve n th o u g h A/BASIC uses the inter nal  fast 8 b y I
b i t n u l ti p ty     fo r a rra y addr ess calculations     it takes abouÈ
3 2 l l P U cycl e s u ri n i n u m to access a two- dim ensional eLement as
o p p o se d to a b o u t. 1 9 È l PUcycles for a one- dimensional acces s .

Ex a r n p l e s o f 'l e g a 1 su b scr ipÈlng:

N(u)     A (1 2 )   x2 (c)       2 4 ( Nr u)    E( N* ( A/B) tA+ 2)   R4 ( N*N+!,l)
À / B À S IC co n si d e rs a si rnple var lable with the sam e nam e as an
a r r a y to b e th e fi rst           eleur ent of an ar r ay,  For exanple i f
t h e r e l s a tw o -d i n e n ti o nal  ar r ay A( 20r 40) using the var iabl e
n a m e À ri th o u t a n y su bscr ipt ls equivalent to using A( 111) .

Ea c h n u n e rl c va rl a b l e or elenent of an ar r ay            is assigned tw o
b y t e s o f R À l t fo r sto ra ge.




                             \




                                               -11-
ÀRITEI1ErIC      OPSRÀîOR.S


The five      legal     o p e ra to rs   for   ar ithm etic   ar e:

        +   ADD
            SUBTRÀCT
        *   }tUtTIPtY
        /   DIVIDE
            NEGÀTIVB (UIIARY)

T h e r e are a l so fo u r b o o l ean oper ator s:

        & À}TD
        toR
        T EXCLUSIVEOR
        I COI'IPLII{ENT(TINARY)

Al l      t b e a b o ve o p e ra to rs     nay be uir ed       in ar ithmetic
e x p r e s si o n s.    th e b o o l e an oper ator s per for n a bit- by- bit
o p e r a t i o n a cro ss a l l 1 6 .bits of the oper ands.


T h e o r d e r o f o p e ra ti o n s       deter m ine in which or der A/BASIC
p r o c e s s e s th e p a rts o f expr essions.             the com piler conver ts
a r i t h r r e ti c      e xp re ssi o n s    to an inter nal        f or m dur ing
c o m p i l a ti o n      a n d re a rra nges      the er pr ession    by oper ator
p r e c e d e n ce to p ro d u ce .machine           instr uctions   which ar e as
s h o r t an d fa st a s p o ssi ble.            Oper ator s ar e evaluated in the
f o L l . o w i n g o rd e r:

        1    FUNCTIONS
        2    UNÀRY NEGÀTIVE ÀIID NOT
        3    ÀND, OR, EXCLUSTVE OR
        4    IITULTIPTY, DIVIDE
        5    ADD, SÛBTRÀCT


P a r e n t h e se s    n a y b e u sed        to alter   tbe nor ur al or der of
e v a l u a t io n w b e re re q u i re d .    Sone legal usage of expr essions:
A* B( Nr H+4)                  s 200+ Z               A&B! C*D/E + ( E+ ( J*2 ) &FF00)
N+A ( 7,' l VA L ('454')




                                               -12-
     ARIIEIrErIC      FUNEIIOIqS


     À . / B A S IC E u p p o rts È h e following   num er ic functions:

    aEFamn                   T h e a bsoluÈe value of the ar gunent.

    ffi;.Qf:ffiIeiiïË]ll N e rt nur r ber fr on        the r andon seçluence. T he
                             n u mb er wlll      be ln the r ange 0 to +32767.
                             If a n ar gunent is supplled' lt ls evaluat ed
                             a n d used to ' seed'            the r andom nur nber
                             g e n e rator ( r andor nize lt) .

    ffiFË'?
                             T h e e r pr ession   is evaluated and used as an
                             a d d re ss.    The single byte at Èhe addr ess i s
                             re tu rn ed     as the low- or der  byte of the
                             re su l t.     The high or der byte of t,he r es ul t
                             l s a l ways zer or so the value r etur ned w i l l
                             be in the range 0 to 255.


                             th e cur r ent char acter position            in the out put
                             b u ffe r ( pr int position) .


                             B y te s n a p o f t h e r e s u lt o f t h e a r g u m e n t.
                              (Ihe h ig h o r d e r b y t e ls e x c h a n g e dwit b tb e
                             l ow or d e r b y t e . )
    gnF,T
                             R eturn s e r r o r c o d e o f t h e m o s t r e c e n t e rr o r
                             c ondi Èio n .     S e e r Ru N T I I . I E E RRo Rc o DB s " i n
                             the Appendix for speclflcs.




o                              \




                                               -13-
     ÀRIIEIIEIIC    ERRORS

     Ar i t h n e t,i c    o p e ra ti o n s     nay pr oduce sever al tlpes of er r or s
     which          D a y b e d e te cte d           and pr ocessed,      Addition    and
     s u b Èr a cti o n       E a y re su l È in a car r y or bor r ow.        Either on e
     wtll         reeult        l n th e C blÈ of the tlP[l I s condltlon            code
     reglster            b e l n g se t.          The ' ON OVR cC' :fO and ON NOVR GOTO
     s t a t e n e n ts    ma y b e u se d to detect this.             This also per m iÈ s
     addition           and     su b tra  cÈ i o n   in lar ger r epr esentation than I6
     bitS.          (See HT'LTIPLEPRECISIONARTIEHETIC)

     l { u l t i p l i ca ti o n o f tw o 1 6 bit nunber s ur ay r esult in a pr oduct
     o f u p to fo u r b yte s l o ng.            A/ BASIC will detect this er r or
      ( s e e ON E R R ORGOT A) a n d pr eser ve Èhe higb- or der 15' bits o f
     t h e c o r r e ct 2 I s co n p l i r nent     r esult  at addr ess S0028 and
     s 002c .                             .
     Division     a -tte n p te d w i th a divisor of zer o will        also pr oduce
     a n e r r or w h i ch i s d e te cted at r un- tine   with         the ON ERR OR
     GOTOsÈatement.




:)


                                              - 14-
    ËTILTIPLB PRBCISIOH ÀRITBilErIC


    S o m eti me s i t i s n e ce ssar y to deal witb num ber s lar ger than
    t h e ba sl c 2 -b yte A ,/B ASIC r epr esenÈation.           À/BASIC allow s
    a d d i t io n a n d su b tra cti on of nunber s of sr ultiples of 16 bits
    b y me a n s o f th e ON OVR GOTO and ON NOVR GOTO statem ents .
    O VR m e a n s o ve rfl o w     (car r y or bor r ow as r epr esented by the
    llPO C biÈ ) and NO\/Rmeans NOT OVERPIPW.

    T h e exa rn p l e b e l o w sh ows addition and subtr acÈion of 32- b i t
    i n Èe ge rs u si n g th e co nvention that two var iables ar e used to
    s È o r e e a ch n u n b e r:      Al and À2 ar e tbe fir st   num ber with À1
    belng           th e mo st si g n i ficant    bytes;    and Bl and 82 used
    s i m i l a rl y.     T o a cl d À I- À2 t.o 81- 82 the following subr outine
    m a y be u se d :

           I0 0 A 2 =A 2 +8 2 :ON NO\IRGOTO200:Ren add 1.s. bytes
                À1=Àl+l :Ren add I to ns bytes for carry
           200 A1=41+BI :Rear add ns bytes
                RETURN


    T o s u b tra ct    8 1 -8 2 fro r r A1- 42 a sir uilar     subr outine   r nay be
    used:

            I0 0 A 2 =A 2 -8 2        ON O\IR GOTO 300 : REM SUB. Ls BYTES
            2 0 0 À 1 =À l -B l       RETURN : REH SUB l{S BYTES
            300 cosuB 200             À1=41-1 : RETURN : REltl BORROI{ CASE



    F o r ca se s w h e re n u l ti ply  r divide  or e.ven f loating- point
    a r i t h rn e ti c mu st b e u s€r exter nal subr outines r nay be us ed.
    I n s uch ca se s se ve ra l cour piler featur es and capabilities      ur ay
    b e u s e d to stn p l i fy   the inter face.

            1)     U se th e C À tL stateur ent to call       the subr outines.
            2','    S e t u p co n ventions     so values ar e passed to the
                   e xÈ e rn a l    subr outines in cer Èain r nemor yaddr es s es
                   tb a t b a ve b een assigned À/BÀSIC var iable nam es s o
                   th e A /B A S IC pr ogr an m ay easily ur anipulate them .

            3)     U se À /B A S IC Ts str ing   pr ocessing  capabilities   to
                   fu 1 1 a d va n tage   in handling      T/C a:,d stor age of
                   n u n e ri c va l ues.    Floating   point nunber s can be
                   p a sse d a s sÈ rings in ASCIf for nat.




                                  \
)



                                             -t5-
    STRING OPERÀIIOtrS


    A / B A S I C fe a tu re s          a co m plete    set of str ing   pr ocessing
    c a p a b i l i tl e s       u h l ch     allow    BÀSIC pr ogr am s Èo per for n
    operations              o n ch a ra cte r-or iented  data. Char acter - type data
    i s r e p r ese n te d l n V B À S IC in str lng for n r hich ls def ined as
    v a r i a b L e -l e n g th se q u e n ce s of char act,er s.


    SIR,ITIG LITERÀI,S

    A stîing          l l te ra l   o r conatant        conslsts   of   a ser ies   of
    c h a r a c t ers e n cl o se d i n q uotation    r nar ks:
            rTEIS IS À STRING LITERÀL'
    An y c h a ra cte rs         n a y b e i ncluded   ln a str ing liter al   except
    f o r t , h e A S C II ch a ra cte rs       for car r iage r etur nr null or SU B
     ( $1À         u se d fo r e n d -o f-file     on sour ce pr ogr am s) . A str ing
    literal'nay           i n cl u d e u p to as nany char acter s as nay fit        in
    a n A . / B À S IC so u rce l i n e r'.     The quotes ar e not consider ed a
    p a r t o f th e . sb ri n g .      If a quote is to be lncluded as par t of
    È h e s t r i ng tw o a re u se d so the liter al:
              .AN EI{BEDDED' QUOTE''
    is   i n t e r p re te d to u re a n tb e constant str ing:

              AN EIIBEDDED' QUOTE"
    String         Ii te ra l s a re u se d in str ing assignneht stateur ents or
    e x p r e s s io n sr a n d i n P R IN T or I{ RITE statenenÈs.




]


                                             - 1 6-
STRING VARIÀBT.BS

À. / B À srC a l l o w s stri n g   var iables which nay be either singl e
s t r i n g s o r a rra ys o f str ings.     Str ing var iabLe nanes consis t
o f a si n g l e L e tL e r A -7 , fol"lowed by a dollar sign such as A $,
tl$ or ZS.

St r l n g        va ri a b l e s     n a y be used with or without          explicit
d e c l a r a ti o n .          T f, a string    var lable    ls encounter ed for th e
first         tl n e i n th e a o ur ce pr ogr am aa lt is belng compile d
w i t h o ut h a vi n g b e e n pr evlously declar ed in a DII{ etatement
t h e c o rn p i l e r w i l l a ssi gn 32 bytes of stor age for the str ing .
T b i s i s th e n a xi mu m num ber of char acter s                    that may be
assigned               to th e va ri able.           Tf. the assignment statenen t
p r o d u ce s a re su l t            w h i ch bas mor e char acter s than assigned
f o r Èh e va ri a b l e th e fi rst            N char acter s will be stor ed whe r e
N i s th e l e n g th o f th e var iable stor age assigned.

A s t r in g va ri a b l e o r a r r ay nay be declar ed to have a size of
1 t o 2 5 5 ch a ra cÈ e rs i n length if the str ing is declar ed by a
D I M sta te n e n t       b e fo re    it is used ( see DIl,l statement
d e s c r i p ti o n . )

If     t h e stri n g     n a me i s declar ed as an â!r â!r the m aximum
s u b s cri p t si ze i s 2 5 5 . Legal usage of str ing ar r ays r equir e
that        o n l y o n e su b scri pt ( which nay be an exPr ession)    be
used:
          A $( s )        N S(X +5 )    x S( À +( N/ 2 ) )




                          I

                                        - 17-
    srRInG concÀTEaArIoE
    T h e s t ri n g     co n ca te n a È i on oper ator + is used Èo join str ings
    t o f o r m a n e w stri n g o r str ing expr ession.         Fôr exam ple:
              ' N E W '+'S ÎR IN G'
    p r o d u c e s È h e va l u e : 'N E t{ STRING' .

    Ifi'LL STRIAGS


    St r i n g s     w h i ch h a ve n o char actdr s ar e r epr esented as llter al
    a s I ' w h i ch re p re se n ts an er opty str ing.          This is typicalllr
    t h e i n i ti a l     va l u e a ssi g n ed to a str ing which is Ëo be ' built
    up.'         Th e strl n g a ssl g n nent statenent:

            A$=t   t
    i s s o m e w h a t a n a l o g o u s to the ar ithmetic    assignment A=0 in
    t h e s en se th a t b o th cause a var lable              to be assigned a
    d e f i n e d va l u e o f 'n o thing.'          This is lr npor tant because
    b e f o r e a stri n g va ri a b l e is used in a pr ogr am it has a value
    w h i c h i s ra n d o u r a n d n e a ningless.



    SÎRTFG EKPRBSSIONS


    St r i n g      e xp re ssi o n s n a y be cr eated using str ing     var iable
    n a n e s r th e co n ca È e n a ti on oper aÈor and str ing        functions.
    E x p r e s si o n s    a re e va l u a ted fr om left   to r ight and the only
    p r e c e d e n ce     o f'o p e ra ti o n s involved  is that evaluation      of
    f u n c t i o n a rg u me n ts a re per for m ed befor e concatenation.

    ÀÈ r u n-ti me r           stri n g    o per ations      ar e tlpically  per for med on
    strings          u ro ve d to a      stri ng    buffer .     This buffer ls nor r nall y
    a l l o c a t ed b y th e co n p i l e r to be 255 byÈes long. Because this
    i s a l w a ys th e l a st d a ta st,or age allocated by the cor npilerr
    a n y m e mo ry a va l l a b l e         beyond this ar ea ur ay be used to allow
    autonaÈic             b u ffe r     e xp anslon     if oper aÈions on extr em ely
    c o m p l ex      stri n g       e xp re ssions     ar e involvedr      or if str ing
    v a r i a b l e s o r co n sta n ts have a long length.


    Ex a m p le s o f l e g a l , stri n g   expr essions:

            "CATN
            Às
            Às+rD OG"
            L E F T $(B $ ,N )
            À$ +R IGB I$(D $ , Z ) *.T 8"
            t -l tD ç(A s+B sT N T L E(À
                                       N s) - 1)
            ' ÀÀ '+tE F T $  (R IGE   T S
                                        (TRil$( À$) + BS.Z4l ,X.+ 2)+CS

                                  I
J
                                                -t 8-
     SIRING C(ITPÀRISOE


     St r i ng s n a y b e co n p a red in an IF exPr ession the same as
     t h e i r i u u ,e ri c co u n te i p ar ts.   Each char acter in the str ing i s
     n u m e ri ca l l y e va l u a te d as     an ASCII char acter .

     E x a n pl e :    IF A $ (= B$ TBENC$= BS


     sm,Iac       FUNerIOAS

     A / B À S IC i n cl u d e s n a n y funcÈions wbich nanipulate str ings or
     c o n v e rt       stri n g s to l fi o n other types.          Sone of the functions
     w h i c h i n cl u d e       $ i n th e ir .nam e pr oduce    r esults  which ar e of a
     s È r i n g tyP e a n d n a y           be used   in  str ing    expr essions.    In t he
     d e s c r i -p ti ïï    o f stri n g functions       tbat   followr    the  notation:

              n  ref ers t,o a n u n e r ic - t y P e a r g u m e n t       wh ic h    is   a
              constantr vâriable'or expression-
              x $ r"i "r"     to an a r g u m e n t o f s t r in g t y p e wh ic b m a y b e a
              s tri ng l i teral r va r ia b le o r e x p r e s s io n .




                                 \
')


                                                -19-
      The following        fu n cÈ i o n s pr oduce STRINGr esults:
--\

           ffi,TffJt         returns a character which is the value of the
             n umber N in A S CII.


            ffiîfË$fD               returns the N lef tnost characÈersof xç.
            F o r e :,a n p l e ,    th e   f unctLon   LEFTç ( ' EXN,IPLET
                                                                          r 3) r etur ns
            . EX A ,.


           f f i re È u rn s                   a str ing which is that par t of x$
             b e g i n n i n g w i th i ts NCh char acter      and extending for t't
             c ha ra cte rs.               For   exar nple:      tbe   function
             t'tID9(.EXA!,[PLE,      ,3 ,4) returns 'Ali[pL' .


            ffiË_ttx.s38        re tu rns the N r ightmost char acter s of XS .
             Àn e xa n p l e o f th i s f unctions              ( ' EXAITiPLE' ,3)
                                                            is:   RIGET$
             w h i ch p ro d u ce s IPLE"


            EHfFf,tFlFis a function               used to convert a number from a
             n u rn e ri c typ e to a str ing type.  For example STRS( 1234)
             r etu rn s     th e stri n g ' I234".  This function  has ttr e
             i nve rse e ffe ct o f Ëhe VAL function.


           $ffiT,"Tf-T!"?f"a function which emovesÈrailing                       blanks
             f r o m a stri n g      a n d is typically   used afÈer a str ing         is
             r ea d f ro m i n p u t.       For exam ple:   TRHS( r EXÀllPLE           ")
             r etu rn s rE X À  l {P L E r.




      N o t e on th e a b o ve fu n ctions:                   if ther e ar e noÈ enough
      c h a r â c te rs      i n th e a rg u ment to pr oduce a full         r esult,  the
      c h a r a c te rs        re tu rn e d       will   be those pr ocessed until     the
      f u n c t i o n'ra n         o u t'o f     i nputr or a nuII str ingr whichever is
      a p p r o p r i a te .    T h e S T R S{}i) function will r esult in a r un- tim e
      error          d e te cta b l e        b y the ON ERROR GOTO function         if its
      a r g u m en t i s n o t l e g a l o r conver table to a str ing,




J
                                                 -20-
     T h e f ol l o w i n g fu n cti o n s have str ing     ar gunent( s)      and pr oduc e
     a r e s u l t vh i ch l s o î. type num er ic:


          f f i S n - f f i , Ë . f l r e t u r n sa n u m b e r wh ich is th e ÀscII va lu e of
           .the     fi re t    ch a ra cter    of the str ing.     For exam ple
            ÀS C( .E X À !{P L E ') retur ns     a value of  S45  or decim al 53
            w h i ch i s    th e  A S C II  code for the char acter E. This i s
            tb e l n ve rse fu n cti on of chr 9.


           #ËffifîT          returns            the     lensÈb     of   tbe       str ing.
            L E N ('E X N {P L E '} re tur ns   a value of 7.        tEN( ")      r etur ns    a
            va l u e o f 0 .


                           is a subsÈring search function which
            FF1.ËF,T,Sroff:X.f,I3
            s e a rch e s fo r th e str ing        X$ in the str ing Y$. If and
            id e n t,i ca l su b stri n g is found tbe function will r etur n a
            n u mb e r w h l ch l s t} e posÈion of the fir st             char acter of
            th e su b stri n g      i n the tar get str ing.       ff the substr ing
            is n o t fo u n d th e function          r etur ns   a value of 0. F or
            exa rn p l e r th e fu n c tion SIIBSTR( ' EXÀ!,1PLE'   r ' PL' ) r etur ns a
            value of 5 . SUBSTR                        , rNOT',) returns a value of
                                          ( 'EXÀ|,iPLE-'
            0.


                          co n ve rts a str ing of cbar acter s in the for m of
            d e ci n a l  d i g i È s a nd ( optionally   a leading ninus sign )
            to a n u n e ri c va l ue.        This has tbe inver se effect       of
            ST R $ . If th e stri ng ar gum ent is not a legal conver sio n
            s t r i n g ( i t h a s too ur àny r r o- decinal         or no d ig i t
            c h a ra cte rs) a ru n tlme er r or detectable by ON ERRORGOT O
            occu r6 .       F o r e xa nple: VÀL( t1234' )    r ebur ns a numeri c
            v a l u e o f 1 2 3 4 . V ÀL( ' TEREE' ) r esults in an er r or .




                                \
.)



                                                 -2t-
    STRIFG OPBRAIIOBSOE tTB I./O BT'FPER
    co m m o nry B À s rc s hav e liu r t t a t io n s            b e c a u s e o f t h e in p u t
    I:r  g :tti ng     w j ren r.eadi n g n ix e d à a r a t y p e s ,                F o r e x a m p le,
    BlsI9 input format convlntions cause c-o-mnas                                  which are part
    of !b" input daÈa to break up rhat- uay acÈually be one long
    str i n g r el c -      A /B A s rc h " . " i s p e c r a r ' s t r i" g - " â r r à u i. " ,  B Up g
    wblch is deflned to be the entire-éôntents of the run-tlne
    r l o b uffer.       pup!^Tal , b e u s e d
    and nay be up to 129 Éytes long." È - in i-             ' ô ù u é r - " iiin ô - v à r ia b t e ,

    Th e forl ow i ng r/o s tate n e n t f o r r n s a r e le g a l f o r f illin g                or
    dunp:ng the f/O buffer when used with BUF$:
            INPUT BUFS              PRINÎ BUFS
            REÀD ITI,BUF9           }rRrTE IN,BUF$

    Ex a n p l e o f u sa g e o f B U F,         a var iable:
                                           ".
            B U F$ =H rD9 (B U F$ +AS , N, U)




                                T
)



                                                -22-
    COf,PII,ER DIRECTIV-E STÀTEI{ENTS

    'R*em      gt5_SsrÀrrtrrtns
    SYNTAX:



    T h e s e sta te n e n t     typ es ar e used to contr ol how À/BÀSIC
    a s s i g n s me mo ry i n th e object pr ogr an. The ORG stat,eur ent i s
    u s e d to a ssi g n sta rti n g    addr esses for the object code a nd
    È h e BÀ S E sta te sre n t i s uged to define the addr esses used for
    v a r i a b l e sto ra g e .

    B o t h sta È e n e n t typ e s Day be used as often as desir ed       so
    m e n o ry a ssi g n me n ts      for pr ogr am and data stor age m ay be
    s e g n en te d a s d e si re d .

    À/ B A S IC u se s tw o i n te rnal           ' pointer s' that contr ol how r u n-
    t i n e n e n o ry i s a l l o ca ted.        The ' object code pointer "    alwa y s
    n a i n ta i n s    th e a d d re ss vher e the next instr uctions       gener ated
    b y t he co mp i l e r w i l l be' stor ed.          The ORGstatenent assigns a
    v a l u e È o th i s p o i n te r.        I{ hen À,/BASIC is f ir st    enter ed, a
    d e f a ul t     va l .u e o f $ 1 0 00 ( for FLEX) and S0000 ( for OS- 9) i s
    assigned           to tb e p o i nter         so unless an ORG statement           is
    p r o c esse d b e fo re th e fir sÈ executable BÀSIC statenentr                thi s
    w i l l b e th e p ro g ra mrs default star ting addr ess.

    F o r exa n p l e , th e sta te ment:

           OR G=ç2 4 0 0

    will        ca u se i n stru cti o ns    gener ated  for following     BÀ SIC
    e t a t e n e n ts    to b e g i n their    addr ess at $2400.      Tbe O R G
    s t a t e rre n t  n a y b e u sed to cr eate' m odules' at      cliffer en t
    a d d r ess w i th i n a si n g l e pr ogr am .

    T h e BA S E sta te me n t i s also used to contr ol Denor y assignnent
    l n a si sri l a r        ma n n e r b ut it applies to allocation     of RAH for
    variable            sto ra g e .    À n inter nal   ' data  addr ess  pointer "   is
    r n a i n È a i n e d b y À /E A S IC to hold the next addr ess available       ( at
    r u n - t ime )         fo r va ri a ble     or tempor ar y   st,or age.    ft   is
    i n i È i a L i ze d b y d e fa u l t to addr ess S0030.

    A/ B A S IC a ssi g n s R À M cor r esponding        to BÀSIC var iables      the
    first         ti me th e y a re encounter ed in the sour ce pr ogr am at
    c o m pi l a ti o n          t:n e .     when a ' new"    var iable    nam e i .s
    e n c o u n te re d ,     l ,': \S IC assigns the var iable r un- tim e stor age
    c o r r e sp o n d i n ç       :o th e cur r ent value of the data addr es s
    p o l n te r      w h i ch j s th e n updaÈed by incr easing it by Èhe si z e
    o f t he va ri a b -,           sto ra ge asslgned.    It ther efor e   ls agai n
    p o l n ti n g to th e :':xÈ available RN' l locatlon.



o                            \
                                                                                 CONT.



                                            -23-
    ORG ÀITD BÀSE 9TÀTETB!ÛTS- COntId


    An i n po rta n t       fu n cti o n     of the BASE stateur ent is to allow
    specific         n e mo ry a ssi g n ments for specific       var iable names .
    R e a s o n s fo r th i s a p p l i ca tion   ar e:


      I)     T o ta ke          a d va n ta ge    of the 6809r s ' dlr ect      page'
           a dd re ssi n g         u ro d e . I{ hen cor nnonly used var iables   ar e
           l oca te d l n th e p a ge of memor y fr om $0000 to $00FF th e
           c o mp i l e r       u se s th e dir ect    addr essing mode whicb can
           r e d u ce p ro g ra n          size and Lncr ease      execution    spee d
           s u b sta n ti a l l y.


      2,      T o a ssi g n R A H co nsistant.with       actual RAH addr esse s
           t h a t a re    a va i l a b l e in the com puter the softwar e is t o
           r un o n .


      3)       T o a ssi g n      sp e ci fic    var iable names and types with
           me mo ry a d d re sse s which have special            functions.     Fo r
           e xa mp l e a d d re ss         of ACIAs, PIÀs or other inter face
           r eg i ste rs      n a y b e given BASIC var iable nanes. À comm on
           t y p e o f 'tri ck'           is to declar e the memor y used by a
           v i d e o d i sp l a y    (n e nor y- m apped) as a BASIC str ing ar r ay
           vh i ch p e ru ri ts fa str sim ple updates to the video im age.


    So r n e t in e s i t    i s u se f ul to declar e      a var iable   without
    g e n e r a ti n g co d e a È th e tir r e it is declar ed.  ff the var iable
    i s a n a rra yr        th e D II'I s tatem ent nay be used.       ff it is a
    s l n p l e typ e r th e D Il ,t s tateur ent, declar ation    wltb a size of
    o n e n a y b e u se d fo r a declar ation.          For exanple, to assign
    t h e a d d re ss $ 8 0 1 0 to the var iable Pl the followlng sequenc e
    l n a y b e u se d (a ssu u ri n g Pl had noÈ been r efer enced pr eviously
    i n t h e p ro g ra m);

           BA S E =
                  S8 0 1 0
           Dru P 1 (1 )


    I { A R N I N G: B e ca u se o f the Hemor y ManagemenÈchar acter istics
    o f O S-9 L e ve l II th e user of that system should be car eful
    o f u s i n g d i re ct me mo ry mapping in that envir onm ent.


    NoËe:            T h e w o rki n g   d ata ar ea of the compilier     has been
    r e l o c a te d      to $ 2 C 0 0 a n d the code has k' een noved to $0100 as
    p e r F L E X co n ve n ti o n .     T his will also aid in the ext.endlng of
    t h e t a b l e s fo r th o se w ho need it.



o                            \




                                          -24-
    DIH STÀIBIiBItT

    This         sta te me n t          typ e   is used Èo declar e          ar r ays     a nd
    o P t i o n a l l yr    o th e r si mp le var iables.     Ar r ays must be declar eo
    i n a D I!1 sta te n e n t               befor e   they ar e r efer enced        in the
    Pr o g ra m.         T h e D  Il l sta tement    nay be used   to declar e    m or e than
    o n e arra y.             À rra ys n ay not be r edefined          in following       DII.I
    s t a Èe n e n ts.        À R R A Tsu b scr ipts have a legal r ange of I to 2 55

    Nurreric Arrays

    N u n e ri c       a rra ys     D a y be declar ed         to bave one or two
    d l n e nsi o n s.       T n o d i n e nsional ar r ays ar e stor ed in r ow- m aj or
    order.          B a ch e l e n e n t of a numer ic ar r ays r equir es Èwo bytes
    o f s to ra g e .       E xa mp l e s of nuner ic ar r ay declar ation:

           D rl l B (2 0 ) rC (1 0 ,2 0 ' ,tr D( $10,$20)

    String        A rra ys

    String        À rra ys n a y o n l yt"    on" dimensionalr bowever r the D Il t
    s t a t e me n t   i s a l so u se d to specify the str ing size ( 1 to 2 55
    c h a r acte rs)       so È h e d eclar ation for a one dir nensional str in g
    array will            h a ve tw o subscr ipts:    the nur r ber of str ings a nd
    t h e stri n g si ze .        A si ngle str ing ur ay be declar ed in the DII'I
    s t a t e me n t w i th a l e n g th specification    only.    Examples:

           D IH À S(8 0 )             o ne ÊÈr ing of 80 char acter s
           D IU B S (L 6 r7 2 ,       1 6 str lngs of 72 char acter s

    I n t h e tw o e xa n p l e s a bove, À9 is used in the pr ogr an W ITE OU T
    a n y su b scri p ts b e ca u se it ls nOl an ar r ay.    BS would be used
    i n t he p ro g ra n          w i th one. subscr ipt because it is a on e-
    d i m e n si o n a l a rra y.      F or example:

           A $=B S(N )
           B S(x +2)=A $
             IN




o                                 I
               DECIÀRING SIH.PLE VIIRLABLBS

               B e ca u se A /B À S IC a l l ocates memor y for var iables as they
               a r e e n co u n te re d fo r the fir st            time, it is often useful
               t o d e cl a re         a va ri a ble      nam e so it nay be assigned
               s t ora g e a t a p a rti cular            point, but without gener ating
               code.          th i s i s o fte n the case when it is desir ed               to
               a s sl g n a va ri a b l e         a cer tain      menor y addr ess.   À/BASIC
               p r o ce sa e s        a va rl a b l e  declar ed as an ar r ay but uged
               w l Èh o u t su b scri p ts ln tbe pr ogr an aB the flr st             element
               o f th e a rra y b y l n ter nally            assuning a subscr ipt of ( 1)
               f o r a o n e d i u re n si onal           ar r ay    or ( l ,l ) f or a two-
               d i n re n si o n a l a rra y.        Because of this a declar ation      of a
               variable            i n a D IH stateur ent wit,h a subscr ipt of I is
               I e ga l      b u t th e va ri able         nay be used thr oughout        the
               p r o g ra m w i th o u t a subscr ipt.


               Ex amp l e :       S u p p o se a pr ogr am is to be used to r ead fr om
               a n d w ri te to a n À C IA inter face at addr ess 98008            S8009
               a n d a P IA a È a d d re ss S8020            $8023r and they ar e È,o be
               a s si g n e d     va ri a b l e  nanes.      A DIU stateur ent   at the
               b e g i n n i n g o f th e p ro gr am nay be used to assign var iable
               n a m e s to th e se d e vi ces:


               BA S E =S 8 0 0 8      se t cor npiler data pointer
               D I M A (I)            d e cl a r e ÀCfA as var iable
               BA S E =9 8 0 2 0      re se t data pointer
               D I tl P (1 ),Q(I)     d e cl a re PIA ' A' and oB' r egister s
               BA S E =$ 0 0 3 0      re sto r e data pointer for other var iables

     T h e - p r og ra m n a y n o l r re fer to either     the PIA or            ACIA by
     v a r i a b l e n a me . T o a cce ss the PIA ' 8" r egister s:

               S=e
     or   to    r ead   the A CIÀ :

               N=À

                                                    I


     WAR N ING:    B ecause of th e Hem oty Hanagement char acter istics
     of O S- 9 Level ff,     the u ser of that systen should be car eful
     of u sin g direct   n= nory mapping ir r that envir onm ent.




-)




                                               -26-
BND STÀÎE|IENT

D e s cri p ti o n :      T h € E N D statem ent is the last. stater nent of the
s o u r ce     p ro  g ra m,         It causes conpilation      to cease and any
s t a t e me n È s      fo l l o w i n g   ar e ignor ed.   If the BASIC sour c e
p r o g r a n o n i ts       a n E N D statenent      and end- of- file is r ead on
t h e s o u rce fi l e ,         E N D will be autour atically assur ned.

E n d d o e s n o t re su l t i n gener ation of code. ff it is desir ed
t o r e tu rn     to th e h o s t oper ating system at r un- tiner a S T OP
s t a t e me n t n u st b e u se d befor e the END.


nAl{E SIATBHBIT       (For OS-9 only)

D e s cri p ti o n :     T h e N Àl{ E statem ent is used Èo gener ate the
m o d u l e n a me fo r th e executable code being gener ated.          T hi s
n a m e sh o u l d n o t b e co nfused with the nam e of the sour ce fi l e
o r o f th e o b j e ct        fi ler    it  is the nodule nam e wben the
p r o g ra n i s l o a d e d i n to nemor y. The nane sÈatenent uses no
q u o t es a n d mu st b e a str ing liter al.        ff mor e than one NAl ,l E
s t a t eme n t i s u se d i n a pr ogr am , the last one pr ocessed wi l l
b e u se d .         I f n o N À l.lE st,atement   is f ound tben an er r or
m e s sa g e a t th e e n d o f conpilation will be pr inted.

Ex a mp l e :
                     NÀ}IE TEST.PROGRÀI,I
                     NAMEDOIÎ



REI{ÀRX SIATET'iBITT

D e s c rl p ti o n r     T h e R Ell statenent is used to inser t com m ents
i n t b e B A S IC so u rce pr ogr am. The fir st         thr ee letter s mus t
b e R E U . On n u l ti p l e        statement lines tbe REH statem ent m ay
o n l y b e u se d a a th e last            statem ent  on the line.      T hi s
s t a t e n e n t d o e s n o t a ffect objecÈ pr ogr am size or speed.



PÀGE STÀTEHEHÎ

D e s cri p ti o n :    C a u se s the conpiler    listing     to   skip   to the
b e g i n n i n g o f a n e n p a ge.                    I




                         \




                                       -27-
     ASSIGxf,EEf Statenents

     Àrithnetlc      Àsglgnnent

     SYN TÀX :


     D e s C r i pti o n :     the expression ls evaluated a n d t h e r e s u lt is
     6tored'in            th e v ari abl e u b ic h n a y b e a n a r r a y . Us e o f t h e
     keyword tET is optlonal.                                .


     POXB Àssl.gnneat

     SYNTAX:

     D e s c r i p ti o n :     T h e e xp re ssion is evaluatedr and the r esult is
       t r u n c a te d È o a si n g l e b yte value which is stor ed at ( addr ) .
     À d d r n a y b e a l i È e ra l           nuner lcal addr ess, a var iabler  or an
     e x p r e s si o n .     If th e fo ru l POKE( number ) is used to specify the
     a d d r e s s th e fa ste st           p o s sible code is gener ated.    The least
     significant            b yte o f th e result is stor ed.
     WÀRNING.
            ..
                     B e ca u se o f th e m enor y managenent char acter istics
     o f O S 9 L e ve l II th e u se r of that systen should be car eful of
     u s i n g th i s sta te n e n t i n that envir onm ent.




     String    Àsaignnent

     The string         e xp re ssi o n is evaluated and the r esult assigned
     t o t h e stri n g       va ri a b l e  specifledr Thlch nay be an ar r ay
     elenent.         If th e re su l t of the evaluatlon pr oduces a r esult
     w i Èh a l o n g e r l e n g th th a n the size of the var iable assigned,
     t h e f i r st N ch a ra cte rs o nly ar e stor ed wher e N is the length
     o f t h e a ssi g n e d va ri a b l e .




-f                             \




                                              -2 8-
    COICEROL
           Statenents

    CàLL Statenent

    Sy n t a x:              ëÈsf;
    D e s crl p ti o n :        T h e C À IL staÈeur ent is used t,o dir ectly  call a
    n a c hi n e -l a n g u a g e     su b r outine at the addr ess specifled.      T he
    s u b r o u ti n e yi l l     re tu rn to tbe BASIC pr ogr an lf lt ter ur inates
    vtth       a n R T S L n sÈ ru ction and does not distur b             tbe r etu r n
    a d d r ess o n th e g ta ck.

    E x a n p l e s:
                       cÀLL 9E0CC     Call subr outine at addr ees SEOCC
                       cÀLL 1024       Cal1 subr outine   at decinal addr .
                       1024
    WÀRNING.. .
                    B e ca u se o f the memor y m anagement char acter istic s
    o f OS 9 L e ve l II th e u ser of that system should be car eful of
    u s i n g th i s sta te me n t l n- that envir ônnent.




                             \
l
                                           -29-
    FOR./trET Statement

    Sy n t a x :
                                                .ffiFË

    D e s c r i pt,i o n :            T h e F OR./NEXT uses a var iable        ' var I as a
    counter           w h l l e p e rfo rn i n g     tbe loop delinited      by the NEXT
    g t a t e m e n t.         If n o sÈ e p ls spectfiedr          the lncr enent value
    rtll       be l.           Tbe FOR./NEXTluplenentatlon            ln 1,./BÀSICdiffers
    sltgbtly              fro n o tb e r B A SfCs due to a looplng nethod that
    resulÈg            l n e xtre n e l y      fast er ecutlon     and ninimun length.
    Note        t he        fo l l o w l n g    c har acter letics     of the FOR/NEXT
    operation:

             1.      (va r)   u u st b e a no- subscr ipted     numer ic var iable.

             2.      th e l o o p w i l l be er ecuted at least       once r egar dless
                     o f th e te rn i n a ti n g value.

             3.      A fte r  te ru ri n a .tl on of tbe loopr the counter value
                     w1.11 be GREATERtban the terninating          value because
                     th e te st a n d i n cr em ent is at the bottom ( NEXT) par t
    '                of Èbe loop.

        .    4.      F OR ./N E X lTo o p s nay be exited     and ent,er ed at will.

             5.      At    co n p i l e ti u re, up to 16 loops nay be activee          âDd
                     all   n u st b e p ro per ly nested.

             6.      T h e l n i ti a l   a n d ter ninatlng values nay be positive
                      o r n e g a ti ve .     The step value ur ust be positive.   To
                      ste p tb ro u g h a loop in a negative          dir ection, see
                      Exaurple 12 below.

             7 . T h e l o o p ri l l te rninate when the counter          var iable     ls
                  g re a te r th a n th e ter ur inating value.

    Exarnple 11:
               FOR N=J+L TA Z/1 STEP X*2

    Ex a m p l e *2 ..

    T o o b t a in     a d e cre me n ti n g var ue without. using a negative          step
                       FOR I=I TO N
                       PRINT N.I+l
                       NEXT I




                                 T
)


                                              -30-
GOSUB{RB|IrRI St a ternen t

Sy n t a x:



D e s cr i p ti o n :         T h e GOSUB stater r ent       calls    a subr outine
starting             a t t.h e l i n e num ber specified.          ff no such li ne
e x l s tsr       â n e rro r n e ssage will        be gener ated on the sec ond
Pa Bs.         T b e  ma ch i n e  stack   ls  used  for r etur n addr ess llnkage,
T h e R E T U R NsÈ a te me n t ter minates tbe subr outine and r eÈur ns
t o t b e l l n e fo l l o w l n g       the calling       GOSUB. Subr outines nay
have nultlple             entry and return         points.    the GOSUBand RETURN
s t a t erq e n ts        co rn p i l e  dir ectly     to BSR and RTS m achine
l n s t r u cti o n s r E € sp € ctlveIy.



IPIIEH         Staternent
S y n t a x:

                                                          UB,' ( ltne ff),'r
                                    l(Ëelation) :(expr> GO-SUB'(Ilne    ) j' T
                                                                Iqr<6LfËernifr'E)"



D e s c ri p ti o n :        T h e IF /THEN, IFIGOSUBor IFITHEN/ELSE is u s ed
t o c o n d i ti o n a l l y      b ra nch to another statementr condiÈional l y
call      su b ro u ti n e       o r c ondltlonally  execute a statenenÈ ba s ed
o n a co rn p a ri so n o f tw o expr essions,         Legal r elations ar e:
          ( l e ss th a n
          ) greater than
         -() egual to
              not egual to
    .     (= =( less than or equal Èo
          )= -) g re a È e r th an or equal to

I f t h e sta te n e n t        l s an IFIGOSUB the subr outine   specified
wtlI     b e ca l l e d i f th e r elation      is tr ue and çill r eÈur n to
t h e sta te n e n t     fo l l o w i ng.  Because of À/BASfCr s multipl e
statenent        l i n e ca p a bilityr    the IF statenent can be used as
a n I F .. T E E N .. E L S E function if another statem ent follows on
t h e sa me l i n e .                                           I

Ex a mp l e s:
                 IF N =)1 0 0 T EEN l2l0
                 IF À+B=C*D GOSUB5500
                 IF X (=2 0 0 T EEN 240:GOTOllûi
                 IF À$=BS TEEN R=CER$    (49)
                 IP À $ <B S T EENC$= A$ ELSE C$' :

I f th e re l .a tl o n ^ l s          tr uer    then   the   r est   of   the   llne   is
e x e cu È e d .           .]
                                t




                                                -31-
    OX ERROR GOTIO S ta te me n t

    SYNÎÀX:
I




    D e scr i pti on:    Thi s s ta È e m e n t p r o v id e s a r u n - t , im e e r r o r
    'tr a p '   - the c apabi l i ty t o t r a n s f e r p r o g r a n control when an
    e rr o r oc c urs .
    W h e n an ON E R R ORGOT O stateur ent ls er ecut,ed tbe conpller
    saves          th e a d d re se o f the llne           nur ober spectfied   ln a
    t e n p o r ary    l o ca ti o n .     If any detectable er r or occur a dur ing
    e x e c u t lo n o f fo l l o w i n g s tatementsr Èbe pr ogr an wlll tr ansfer
    to the line nunber glven in the ON ERRORGCXIO                     gtatement last
    e x e c u t ed .      T h i s w o u l d nor r nally be tbe line nunber wher e an
    e r r o r r e co ve ry ro u ti n e b egins.

    If the ON ERRORGOTOstatement is usecl WITEOUTa line nurnber
    s p e c i f i ed , i t h a s th e e ffecÈ of ' tur ning off' the er r or tr ap
        e r r o r s l n fo l l o ri n g statements will be lgnor ed.

    Af ter an                     h a s b e e n detected,  ttr e ERR funcÈion may be
    u s e d t o a cce   " i ro ss
                               r  a va l u e which is an er r or code identifying
    t h e t y pe o f e rro r w h i ch most r ecenÈly occur ed.             The exact
    error          co d e s a re re l a te d to the er r or codes used by the host
    o p e r a t i n g syste rn a n d a re listed in the appendix.

    T h e t yp e s o f e rro rs    th at can be detected by ON ERRORGOTO
    a n d t h e typ e s o f sta te n e nts they occur ln ar e lisÈed below:

           DIVIDE BY ZERO     ARITHI.IETIC EXPRESSIONS
           ASCII-TO-BINARY CONVERSION INPI'T, VAI,(X$)
           HULTIPLY OVERFLOI{ ÀRITEMETIC EI(PRESSIONS

    E x a m p le of usage:

           10 0 ON ERRORGOTO 600
           12 0 INP UT À (N)
                 N=lI*l:IF    N=50 T B E N 5 0 0 : G O T O 1 2 0
            6 0 0 PR.INT TTLTEGAL INPUT ERROR- RETTPE'
                 coîo 120
    W h e n an e rro r           o ccu rs,   the pr ogr an will   jump ouÈ of the
    o f f e n d in g     ro u tl n e     to the er r or   r ouÈine ( ON ERRORGOTO
    d e s t i n a i : 'rr). E o w e ve r, the r outine exited would Iikely    be a
    (neste r            su b ro u ti n e    so the !1I,U stack pointer     nay be
    misaliql    t,;.

    If " Ic: .,' error routi n e s a r e n e c e s s a r ywit h in s u b r o u t in es
    GENsta' . ::.entsc an be us e d t o in s e r t n a c h in e ln s È r u c t lo n s t o
    sa ve er, i es tore the s ta c k p o in t e r a s n e e d e d .


)                             T

                                              -32-
OE BRROR GOTO - Contrd

Exanple of        an error       hand lin g   p ro g ra m:

      200              ON ERROR GOTO 5OO
                       INP UT À ,8
      300              ON ERROR GOTO 600
                       C=À rB
                       GOTO 200
      500              PRII{T .INPUT ERROR - RETYPET
                       GO10 200
      60 0             PRINT IT{T'LTIPLY ERROR'
                       GCXrp200
                       EITD



Of GCDO/Of, GOSIIBStatements

Slmtax
                                                      ffiI{i ë -TÏ;r"1"1"r=1.
                                                                            <Iln é ':t >'"?
                              çQ$Up_"                                     r Sl1ç9...f>t
                                                     àr;#JI*tiS.Jk"-i:,r.i,"
DescripÈion:                T h e e x pr ession is evaluated and one Li ne
n u n b e r i n th e l i st        cor r esponding   to the value is selecte d
f o r a b ra n ch o r su b routine            callT  i.€.7  if the expr ession
evaluaÈes             to 5 r th e fifth        line number is used.     If the
result          o f th e e xp re ssion is less than specified,       the nex È
s t a t e r re n t i s e xe cu te d .
Ex a m p l e s:
                  ON A * (B +C ) GOTO2O0t350r 110,250r 350
                  ON N GOS U B5 00,510,520,530,540



SIOP Statenent

slmtax 3î$_æ[

D e s c rl p b l o n :        T h e STOP statem ent      is used to ter minat e
e x e c u t,l o n       o f a p ro g ran   by causing an exit Èo the ho s t
o p e r ati n g        syste n .   T he end statem ent should not be confused
with        S T OP     a s  S T OP w i ll not ter ninate   com pllation  of tbe
P r o g r a m.




                             I

                                              -33-
        CEÀItr Statenent

        Syntax:                 irtr-dfq-qt
Y   I
        D e s c r i .p ti o n : T h i s sta t,eur ent allows   an A,/BÀSIC pr ogr am to
        l o a d a n d e xe cu te a n o th e r pr ogr a&.

        O S- 9 :       T h e ch a l n co n n a nd per for r ns an FçCEANsysten call to
        t h e p r o g ra m o r n o d u a l .     Becauge of the natur e of the OS- 9
        o p e r a t l ng    syste n C E À IN.nay be used to call any executable
        p r o g r a n a n d p a ra ma te rg nay be passed just as wltb fSEELLT.

        FtEX I      T h e ch a i n   co n mand per for m s   a ' LOÀD and GO' call     to
        FLEX.


        SEELL Statenent           (For OS-9 only)

        SynÈax:

        De scr i pti on:     Tbi s c os r in a n c a
                                                   l lI s O S g s SEELL pr ocessor .   It
        i s u sed to. i ni ti ate    a c h ild p r o c e s s via the FORK call         to
        os9.
        E x a m p le s:
                          SEELL IDIRT
                          A9=iDIR Er
                          B 9 =" /P '
                          sg E L L A s+r >'+Bs+' tr



        GBII StatemenÈ

        SYNTN(:                                  r}:ff,
        D e s c r l p tL o n :          T b e GE N stat,enent allows data or m achine
        l a n g u a ge        l n stru cti o n s   to be dir ectly   ineer ted  in the
        prograD.               T h e l tst o f values supplied ar e inser ted dlr ectly
        i n t o t b e o b j e ct p ro g ra m.         If a value given ln the list     is
        less         Èh a n 2 5 5 o n e b yte wtII be gener aied for that value
        r e g a r d l ess o f l e a d i n g zer os.

        Ex a m p le :
                          cE N sB D ,9 E 1 4 1r $C801024 ( PRODUCES    6 BYTES)
                          GE N 0 0 4 0 , $ 0 0, 32767    ( pRC:lr r ES 4 Byr ES)




\                                    I

                                                 -31-
IXpUr./OUpÛt        Sta tements

À1 1 i n p u t a n d o u tp u t statenents         use a 129- byte buffer for
l n t e rn e d i a te sto ra g e of data.      This buffer tr ay contain up to
1 2 8 ch a ra cË e rs.        T h e buffer    is automatically    allocated by
t h e co mp i l e r     a ft.e r allocaÈion      of all other menor y spac e
 ( e x ce p t th e stri n g      buffer    if uged) .    This buffer    is o nl y
a l l o c a te d fo r p ro g ra ms tbat use lnput/output.

NOTE: À speclal forn of all lnput/output       etatenenès              deslgned
f o r b u ffe r d i re ct l nput/output using the special              var iabl e
buf$ ls descrlbed ln the STRINGPROCESSING        gection.



fEPIIf Statement
Sy n ta x:

D e s c ri p tl o n :        T h l s st4teur ent causes code to be gener ated
w h i ch p ri n l s         a ? p rom pt and Epace on the ter minal devic e,
t h e n re a d s ch a ra cte r s           into   the input buffer       until   I28
c h a ra cte rs         h a ve b e e n r ead or a car r iage    r etur n  slm bol i s
read.          A l i n e fe e d a nd nulls ar e output upon r eceipt of the
c a r r ia g e      re tu rn ch a racter .     Àt r un- tinel entr y of a COMT R OL
x w il l       p ri n t    D E L a n d CR/LF and r eset the buffer .      A CON T R OL
O sill            b a cksp a ce      i n tbe buffer       and echo the deleted
c h a r a cte rs.

T h e va ri a b l e s     sp e ci fted  ( var ) ur ay be numer ic or str in gl
s u b scri p te cl    o r si n p l e type.     lfhen the pr ogr am is ' looki ng
f o r " a n u n b e r fro n th e cur r ent position in the input buff er r
it will          sktp l e a d i n g spacesr lf any and r ead a ninus si gn
 ( i f a n y) a n d u p to f ive nur nber char acter s.           The nur ner i c
f i e l d i s te rml n a te d by a spacer conr âe or end of line.           If a
n o n -d i g i t   cb a ra cte r ls r eadr or any otber lllegal      conditi on
a v al u e o f ze ro vtl l be r etur ned for tbe nuuber .

I f a stri n g -typ e         fl e ld ls being pr ocessed, char acter s fr om
t b e cu rre n t p o si ti o n will be accepted including blanks unti l
t h e va ri a b l e   fi e l d i s ter ninated by a conm a or end of li ner
o r wl i e n i t l s 'fu 1 I.'        If no char acter s  ar e availabler   a
n u I l stri n g w i l l b e rebur ned.

E x a mpl e s :
        rl i P U T À rB rS 9 rB $
        i 'i q P U TA (N +l ,!1 -1 ) ,8,À( 4,N)
        rN P U T A 9 (N ),B S (N+I) ,DS
        INPUT B




                            I

                                            -3 5-
     PR I E I S ta te me n t

     Syn tax :
     ffi93'â ç.âJ
     D e s c r i p ti o n :        This   st,aÈenent pr ocesse6    the lisÈ      of
     ( o u t s p ec)s       a n d p u t6 the appr opr iate  char acter s    in the
     buffer.         l h e b u ffe r i s then output to the ter nlnal    device.

     A n ( o u È e p e c)       n a y b e a str lng        expr egslon     or a num er ic
     e x p r e ssl .o n r o r th e o u tput functl.on TÀB expr which lnser ts
     a p a c e s l n th e b u ffe r           untll  the positlon       expr ls r eached.
     Ea c h l te n i n th e l i st l s separ ated by a dellniter                which ls a
     c ô r n r u ao r a se mi co l o n .      The buffer ls divided lnto sixteen 8-
     c h a r a cte r zo n e s, w h i ch ar e effectively          tab stops ever y eigh t
     p o s i t i o n s.      If a co n ma is used as a deliur iÈer r the next iten
     will         be g i n a t l h e fi rst       position    of the next zone.       If a
     s e n i c ol o n     i s u se d , N O spacelng will occur .          À senicolon a t
     t h e e n d o f a P R IN T statenent                will   lnhibit   pr lnting   of a
     c a r r i a g e re tu rn /l i n e fe e d   at the end of the ll,ne.
     Ex a n p l e s:
             PR IN T À T B ;C
             PR IN T A $ (N ) ;À 9 (N +1)
             PRINT A TA S TB TB S
             PRINT TÀ B (N=l'I ]24
             PRINT À ;B ;C;
             PRINT A9; TAB (lt+t't) ; g$



     DfSPIÀI Statenent




     D e s c r ip tl o n :       T h i s sta tenent wor ks the same as PRINT er cept
     t b a t a l l n u u re ri c q u a n ti ties ar e sent out as tbough they r ere
     a C BR $ . I{h e n d i sp l a y i s used to position the cur sor be au r e
     t o s e p e ra te          th e co mmand values       by seni- colons and no t
     c o m m as.           T h e co mma s wouLd send unwanted spaces to th e
     t e r m i na l .

     Ex a m p l e s:
                                                       i
             DISPLAY 1 0 ;1 3 P ri nt a car r iaçe r etur n and line feed.
             D I S P L À Y 2 7 i 1 5 ;5 ;1 0; Position cur sor r ow 4 coI l 0
             (vtl 0 0 ).
             DISPIÀY 2 7 i L S i 5 ; l 0 ; TEERE"
             R =5
             C =l 0
             DISPLAY 2 7 i :.5 i R ;C i 'BERE"


                                I
.)


                                             - 3 5-
     à/rAsrc DIS( IrE(n/ql:ftE       qIggEErcRS

-l




     In OS-9, VBASfC uses tle facitities of tlre host ogærating
     system, for lnpt   and out;xrt to and fron disk fites.  In
     order for progras gernratd ry AÆàSIC to otrnrate proprly
     tbe VO dules   of G9       be no"ory resldent.


     Di.sk VO tn ÀÆÀSIC 18 ctranrnl orlentæd. !Éris reans t}rat if
     your progran references anotber file for lrr[ut, cuEut, or
     update, that flle urust first be 'o5ænêdr' and given a
     'channel nunber.'    À./BASICsuplnrts up to 10 ctrannels in
     addition to OS-9rs 3 standard VO 1ntts.


     À1l disk files are definecl ln accordape rrlth G9 and FLE(
     standards and are a1ra1's ÀStI fil.es yitb tbe erceptim of
     rcrnTlttnr files.


     llany of the A./BASICdisk c4nrations use OS9 and FtE( crl1s
     as rrculd asseubly language prograrns so inforuation as to
     disk oprations li.sted in botb mnua-ls rri1l afp1y.



     Note: In the descriptions ttrat follow the tenn 'fiJnum'
     refers Èo a ctrannel ruuber nhicb le a constânÈ in the range
     of0to9.




                                 I


                                      -37-
    CPEI{Statsrent

    SY}I'IAX:

    Ihis statenent i^s used to open a file for update and assign
    Èhe file to the char"lel nunber, One ard only one file nay
    be open on a particular    channel at a ti-ue. ltre fil.e rust
    already exist or an error witr be generated.

    If an error occured durlng the open operationr tàe Ëne
    sgncified by tàe 1âst, C[l ERRCR
                                   @IO statesent to be exesrted
    will be transfered to. Itle RR function can tlren be used to
    determine t}te error t16n.      i

    lhe file name specificaÈion is a string constant, mriable
    or expression ard mrst conform to OS9ard FtEl( standards for
    device, direcÈory and file narûe.

    Be l o w a r e so me e xa mp l e s o f legal      usage of the OPEN
    staterent.

          OPEN.lOr'tÆsÈ'      Opens file       test on ôannel 0
          À$='/dVuaster'
          CPE{ f2rÀ$          qpens /dllnraster on ctrannel 2


    CRElliISStaterent

    SY!ùBX:

    This statement works the sane as OPE{ except ttra! ttre file
    is created and tlrerefore mrst noÈ alreac!'exist.  Àfter Èhe
    file bas been created it is left opn in t]re update de.

    Note.   A file rust be opened with OPENor CREHEbefore any
    I/O can be prforred on it.

    BaçIes:

    os-9:
                CRENIEl0r'test'
                CnEFûEt2,'/DL/bEFs/spcial          . sb"rf f '

    FLEK:

                CRENIî fl r'FlLE.l.lÀlvln rX
                where X=awber of 252 by'te records.




I
t
                                 I


                                      -38-
                 C!æ8 Staterent

                 SÏÀIIIN(:

                 This statement. is used to cl.ose a file tàat was
                 previousty OPElled or CREAIEdafter oorpletion of
                 the I./O operations.    CIOSE frees ry ttre ctrannel
                 nuuber and uakes lt arratlùIe for reasslgruent if
                 desLred.   Note thaÈ upre than me cbannel can be
                 closed with qre statesenÈ.

                 E<arples:

                 crosEf2
                 cLæE llr12rl3


    liûfE:                                               ôËfi*rtiÉSF
    ffiiiÉnffiirnc, æ ffi                      ,rBorFB,
                                                     mlq._S;p
    IRIIE Statesent

    SY}ItrIiK:

    The I{RITE statesrent causes a record containing the data
    sçncified to be rrritten to tbe disk file as a single reærd.
    Ihe file rust be otrnn for rnite or qËate (see @EN).

    The outgrt lisb is a aequence of string ancl or numeric
    constantsr vetiables or expressions seperated by comnas.
    Each eleurent in the llst is considered to be an 'item"
    within the dlsk record to be written.    Strings are written
    to a naxirun size of 32 ctraracters (or tàere diænsiod ard
    numeric values are rritten     ln ASCII decinal forn. This
    conversion ls autonatic and allons for ccnçatabiftty yitlt
    utost BASIC disk fites.  The resulting record length mrst be
    less than or equal to 128 b1Èes.

                                                               collr.




I
                                 !


                                     - 3F
IRIIA    Staterent CObIl.

Exarples of legal usagei

        tG.rîE f3rÀrB,C
        IG.rm 16r.DA!n"NSrC$,ZSrT
        ?RrlE 16 r400+ZtA${+uD$(Bç,4 rtû rvz
        tRnE l0r'lBs'IER prr.E plgR    ,+âRS(N)

Results of rrittng       a clisk record:
Each iten is wrltten on the record with a comra as a
separaÈor.     lbe records are variable length     and use a
                                              -ternirator.
carriage retusr ctraracter as an end of reærd

fhe statenent (assrme rnriable        !trIO):
        IRIIE *2 r251400, r'ttFDirN
produces a disk record whicb has tbe forloring          forrat   (in
he:<):


32 35 z C D            34 30 30 2C 57 4F 52 44 æ 31 30 0D
 25                     4 0 0    r I{ O R D e I      OECR

FRIB       Sraiesent

S|ÏITBX:

The RWRITEcoumandworks the same as the IIRIIE corunand
e x c e p t È h a È l t p e rfo rn s a "seek" to 'position' before
exeorting tàe rnite.

Ecarple:

        I;50 : ItEl{ set L = to tlre reærd lergth
        F33 : RE{ 6et R for tàe desirexi record I
        F IRIIE l2rRlLrÀSrArB : REli write Lhe record




                                  -40-
REâDStatsrent

SY}IIN(:                           iËIti.Ë:3
ltre read statsrent causes tlre next reærd of the file on ttre
channel specified to be read into the À./BASICVO brffer.
Af ler Èhe record is read r data iters correspordirrg to t]re
iters in ttre variable list will be taken in order ard stored
ln the appropriate variable læatiqs.        The variable list
nay lnclude numerlc and or strlng type which nay be
nùscripted tf de6ired.       .
lbe nuuber of lters giwn tn tbe erlable list stnrld agree
with the nuôer of ltsrs in the disk data record (except, as
noted below). The file mrst be open for read or ugdaÈeand
must be an ASCII text-type file.      Disk recordè are of
variable length and are couçntible wiÈh files rritten by
BASICO9usirg rlRflfEr.

Rrles for readirg different data qçns3 the follcn'ing rules
apply to ard define the result of reading iters frqn a disk
record urder variotrs cirqrustances.


                              st    mrlâle     ln tb   lt.st
                  tùureric                String               Erpty

lùrueric t16æ     ruber              nunber if string
                                     contairs lega1
                                     deciral cLrars.



String Qpe       string of           sçring                    nuI[
                 digits                                        string


ff there are ur)re ite$s on tfre recasfl ttran ttre variables in
Lhe list,  Èhey will be ignored. Note that the numeric
variables are not stored as binary bltesr ratàer they are
converted to ÀSCII character representation before being
written and conr;erted to binary after being read.




                          I


                                   -41-
    IREHD Statenent

    SYN'IAX:                                      ;ratjfBt.9
)
    The RREÀD conrmrd Horks t}le sane as the REÀDexcePt that it
    perforns a 'seek' to 'Ipsition' before er<ecr.rtingt}te read.

    b<arçtle:

             RREADI2r25rA9rArB : REll read À$rÀ and B frosr
    lnsitlon 25
             I;50 : REI{seÈ L +'to tlre record length
             R=33 : REMset, R for reærd I deslred
             RREAD f0rRlLrÀçrÀrB : RElt read record 33

    RESIIXE StaterrenÈ

    SRÈIC8 Statqent

    SfÀIBX:




    These statements are used to reSnsition a file open for
    u5Ëate to the first blte of tlre file. Becauseof G9s use
    of file handling (a11 files being open or creaÈed for
    u;Ëate) the two statenents are functionally equivalent.
    Note that RESDOREand SCRAIC8by theuselves do not alter a
    file in any myr they just rrEpsiglonr tle flle.

    Ecarple:

                ffiA$Cg *2t13

                RESITRE
                      l0,l1rl2

    ITrt. Staterent

    SYÀTBJ(:

    Ihe file name specified in strexp is penranently deleted
    from the system. Use t}lis statsrent with care as the file
    tmy not be recoræred again

    Exanple:

                KTr.r. |TEUP3r

                AÈ'/d0lr"rcrkdi.rr'tap.   file'    : KILL À9



J                                I


                                      -42-
       (ll Ep @tD Staterent

       SynÈa:<:
                                   iËrrF
      -Desaipticr:
                     Ttris sÈatenentrcrlg_ the sase as
      excepr rhat ir          a' o,+Jiju"              €N,,R.R does
      or RREâD         ,rraps
               olnration.- S"" 6l ERæ        Àorgïiiâ  arrirrg a READ
                                                for firrtlrer dlscuslon.
I

      DISI Rrrrtions

      The followinq functions
                                  are avairabre for use with
      inpr:t/output operationÀ.--Àri                           disk
      rtùlctions ard return a nurcri"    o1ærate as *re ot'er B.src
                                      lyp" resrrLt.


      E   E'unction GtE( only)
     sY!ûnx:ffifi
     Returns a value of I if
     t h e fi l e a ssi g n e d to -than qd of file ærdition
                                      e channel s5æcifiea, exists on
     returns a 0.                                            oEt
                                                                 "-r*iË
     n"opf"r         mF G,t)(=l gEN S50
                 ,IF

     0n æ       StatesÊnt
     siïDùDu(:
    Tti" statenent works Èbe same
    end of flle conditi;:         as 'Ol{ RRCR r but traps ar




    RESUE StaÈeænt

    sYfls)(:ffitrSfftffi
    This will    renarÊ the fi   à$ t o B $ .




                                  -{3-
EII^SESRrrçtion      (ELE( orùy)

S|NTN(: ;Jl".S#
T h i i s f u n cti o n re È u rn s tb e cur r ent length of the file
specified in sectors.



SilIIIi   PtupÈiqr

sYlitxu: Jffiqç!"çgllnùiù'?
Returns the clrrent statrs of tùe flte speclfied as folloris:

             0 - File rpt currenLly open
             I - File   ts çen for read
             2 - FiJ.e is opn for rrite
             3 - FiLe Is open ln .qÉate rcde
Exa4rle: IF srfrlrs(t3) <>3lsEùl450




                             I


                                   -44-
    @IPIIÀUCI{      PRæ8DE|ES for PIEI
        ..
    Ttre f i r s*L-riÈeÈj+ pr_eArç
                                 i5g"nq                    _&-E-_qegdr?
               to i   eËti [h-e
                               -sori
                                   iôâ -tlilvEtsiC-pçggiem
                                                con[âÏtin
    S9i t"qr        i                         e           s Èt'eTÆs:c F
    5pçqgran.l A/BASIC accepts the file             fornat of most FLE):
     ccrçati-ble 1bxt Editors.

    The synta:< for tlre conpilaÈion is:

    {âiffi'c;ffiËëËôffiIËi{it[r$Ët-}
    Scurce = inEut source file specification
    ObjecÈ = generât€d ôject file specification           (optional)
    *QÈians =




    Note:    Specifying the 6ject file to have the EarrenarrE as
    an already existirg file will.cause tlre existing file to be
    deleted.

    qXgIIÀEIAr      I*æEDIRES for OS4

    lbe first step in producing an VBA.gtCprogram is to use tJ:e
    systemrs text, editor to create ttre source file æntailing
    the A./BASIC prograur. AÆASfCaccepts tàe file forrmts used
    by rcst OS9 ccrçatible editors.


    lÎn   synta:r for calling    the VBASC ænpiler       is giræn below:
     sltnta"t:         *âffiffi1
                  ptlùist     = ltre patlùtst   for the inpt   sor''ce fil.e
                  otrÈiorrs   = Valid ccnpiler options     (see below)

                  )pathlist       = The standard output path rray be
                  re d i re cte d   so that the listing  goes to a
                  fjle/device otber than the tenninal.
                                                                               r
     tre folcping     conpiJe tire   options are arailable.                    I




                 gËïs'Do-nËiEê.itrâËê:{$s-,Ët{E;F
                 çB_,f               ,Gêoêratë.:âût,cÈJecEif
                                                        tls*-:æJf ted'i,T.
                      'p"CttliFlî
                 f-S'fËËitHfI-Êt3    rf no dtreetôiy"fË defined tn
                   pathlist thq current erecutlon dlrectory ls
i                  ass-med.       ,
                                   -


                                       -4F
    H8G,
            FIU,nG
    When A/BASIC detects an erior tn t}re scrrrce program dlufng
    either the first or second lnss it wtll print tlre sdrrce
    line in error and a nessage witlt an error code (the codes
    are listed   in the apperrlix). Tfte fine below tlre erronecr:s
    Eource line will have an up arrolr stnring the a5proxirate
    lnsition   of the error.   Tbe error location is abouÈ 95t
    aærrate

    fûen an error ts detected o a Ecrlræ llne the corplLer rdll
    not process the llne furtJrer even tf 1È ls a nultlple
    statenent llne' so the rest of tbe Eource line shcuLl be
    ercsnined carefuIly for lresible urdetected errors.

    The error count printed ln the llsting    is the nusber of
    errors detected during tbe seærd pass only.


    r+rR EFæ&âli IJsfIrG

    D:ring the secord pass a fonmtted listing   is produced rùrich
    will include any error nessages   (see  GIPILE [I].tE RRORS).
    Ttre listing usually consists of t}ree fields: the first is
    the hex address where the object code starts for the BASIC
    source line; the second field is the statenent line nunber
    if any; ard the last field is the BàSIC source line.

    After courpilaÈion is coçùeùe, the progran statisticsr    load
    map and slmbol Èable (if ttre progran included an OIlt S
    statenent) are printed.      lbe load nap lists t}re nases and
    addresses (nain entry point) of the BASLIB rnodules the
_   coapiler selected ard irEUff     in a prtiolar  program. &e
    Bà,SLIBupdule rurres ard fuDctions are:

           ISI|E             RGId

           CfII?ttI *   Terntnat crrqlrt uodual (PRIM/ DIæIÀy)
           INPIII   ù   rbmdnal tnpt rcdual (INHII)
           DISK    *   Disk file anl4nrt (OpEti,QOSE, REÀD,RREAD,
           Rl^]R[18,CEAIE)
           MIII,TIPI,Y ]ful$plication    Grit]netic)
           Dil/IDE      Divlde G,ritheeic)
           RAl.DCl.l    Randournrùber generator (RlD)
           S'IRIIG I * String ginitives     arË funct,iorrs
           SIRIT\G2 * bÊended striry functions (SIBSI'II, VAt, STR)
                  * IIDSE I{CDT,tES BVE MT,LTIPIEEbIIEYP.I. 35.

           INO



                              I


                                  -46,-
     SEf,:NBt8       Knls:T

     ûre syuùol table listing tras fcrrr colunns. lbe first
     ls the nane of the variabl.e, or on€ of fcur epes of
     ærpiler-allæated  variables :
       t' o forlnext loop liniVstç      nalæ (2 bltes)
       fn o I/O control block (rnrlable elze)
       IO
           - IryuV0rÇut     hrffer (f29 bytes)
      Sr     etrirg rcrkirg hrffer 055-bytes)
          -
Ttre second corurnn ls tbe her address of the first           (uost
stgnificant)    b!Êe of tlre rrariable.
The last, two colurnns indicate         the size in hexadecinal
variable as follor*s:

     sfup1e nueric            botà 0
     ruleric array            t rorsr t colurrrs (0 for l-djm.)
     sfuple string            striry lengrttr, 0
     string array             strinO length, I of strirgs




                          \




                                -47-
                                                      ÀPPEEDII    À


         À./Brsrc B[tx-rrlB EE\nRoxf,EET
_)
         l{ e m o r y As si g n me n ts:

         . ZËIsrë*ffffi Ëffi*';ffi.-TE:{Ëë?îâF-{ôs.êËFËË.-Ëëlôr:}ô01ô.-fæffi
                                                                   S,fæ
         ;tenpor.ary,-slofageil                Tbe usage of thle      area of nemory by A./BÀSIC
          is l l s t e d b e l o w :

                  SOOOO.$OOOF                   SCRÀTCBÀREÀ FOR PÀST UATE (}IUL,DIV,DSK)

                  $OOIO-$OOII                              BIOCK TEHP. ÀDDR. (DSK)
                                                FTLE CONTROL

                  9 O O T2 -$ 0 0 1 3           E R R ORTRÀP ÀDDRESS( ST2,DSK,UUL,DIV,INP )

                  $0014                         E R R ORTYPE CODE( ST2r DSKr t{ ULeDr Vr INp)

                  $0015-$OO1F                   NOT.USEDBUT RESERVED
                                                                   FOR FUTUREUSE

                  $ O O 20 -$ 0 0 2 1                         ( INP,OUT,STl,ST2)
                                                X R T EIITPORARY
     .            s 0 0 2 2 -$ 0 0 2 3          r/o   BUFFERPOTNTER( r Npr OUTr DSKr ST2)
_
                  $.0024-s0025                  RESERVED

                  s0026                         I/O BUFFERZONECOUNÎER( INP,OUTTDSKTS T 2)

                  $ 0 0 2 7-$ 0 0 2 8           srR rNc BUFFERPOTNTER( ST1,ST2)

                  s 0 0 2 9-$ 0 0 2 À           srR rNG xR TEltp ( sTl,sT2)

                  s 0 0 2 B-$ 0 0 2 C           S T R TNGTEttp ( Sr lr ST2)
                                                I{ULTIPLY OVERPLOW      EIGE-ORDER15 BITS (I,IUL)

                  $ 0 0 2 D -$ 0 0 2 F                           TEUP ( ST1r S12)
                                                S T R TNGFUNCTTONS




                                           \
)-



                                                         - À 1-
                                             ÀPPEITDLI      B


                                     À./BàSrC f,rnGInGE SItËf,ÀnI

          ASSIGEEFI:

          LET                 fffiFs]

          COFEOL:

          rgffi?              ?OR/T!./ STEP  GcFO                     NEXT
          GOSUB               RETURN         IF./TEEN                 IFIGOSUB
          rFITIIBN/ELSE                             èoCô?
                              ON ERRORGOTO i'ôli]Ëor..               ïpN.ovR Goro
          ON NOT/RGCITO       ON/GOTO        ON/GOSUB                 STOP
          ffic$v              SHETL


          IIIPUL/OTIEPTXI :

          INPUT                PRINT                                  OPEN
          CLOSE                READ                                   9[RITE
      .trtr:rîË.?
    ,|,
     'Ësçfiàs.EF              *STfi.æJ                               $KMF:}
                              ffiw.É_r
          COTIPII,ER DIRBCIIYBS :

          GEN                  BÀSE                ORG                EITD
          DIM           .      REU                 lt
                                                        a
                                                                      l *r
          PÀGE                 NÀI'TE


          FTTËERIC FTItrCTIOFS:

          ÀBS                  POS                 RITD              ElËitrI
          TAB                  Àsc                 LEN                SI'BSTR
          VAL                  ERR               ffiilÊ-3             STATUS
          S9{AP


          STRIAG FUI{CTIONS:

          C ER S               LEFT$               RIGHT$             UID9
          STRS                 TR}I$               BTTF$


          OPERÀÎORS:

          +     ÀDD           Effiffi:P          ffi.î(gltrirnôi"È
                ST'BIRÀCT     Ëffi;OÈ|
          /     DIVIDE
          T     IIULTIPLY
                        .
                NEGAÎE
)


                                                -B l-
                                                  ÀPPEITDIT C


                                 À./BàSrC c!ttplr.B-îu{8        BRROBCODBS

                                    j


      o2 .-!ine.-nunbef-                or- out of sequence
     0 3 pqr_gc-oent        =àÈaEenà;[,t
                           {lgf1."ted
                       zed      -
     04 ._S_XA_têx Frror ^F
     0 5 Variable nanô nlsslng or ln error
     06 _Sgual- slgn ulssinq
     0 7 ïDndeflned- itriê'idrê?ëTicêt'ltoro.
     0 8 Rtght parenthésee ntËsini' o.               or GosuB ro nonerrsranÈ line                  nunber
    0 9 operand urlssing tn expiÀËsion           nisnested
    t0 Destination rine nunuèi -riÀiing
    lt    Nuurberurissing                             or rn error
    t2 llisnested FORZNEXT         loop(s)
    l 3 Sltnbol table overflow i
    t 4 fllegal      task nunber - nust be 0 to ls
   t5 llissi n g o r i l l egar. us   afÀ -or r " iu iio n it
   1 5 De lin iter      (1 or-3 I niiirng                     votp' s.trs"Lt o r (. si' )
                                                                             e rt
   r 7 Quote rnissing aÈ end of iliing
   t 8 rllegal tvpe-or rnitÀinô làuntér
   l 9 Re d e fi n e d array                          variabte ln FoR staÈemenr
   2A
      3ff::.il.3ttut-specification:     subscripÈnissins; Èoomany
   2l
                       -lrËiiid :"i ; i E
      3::?:_+: :Il:I_specificarion:
   22 yn*a*,s=                           u "l zero
                                        subscripr             than 2ss
   23                  ii;;âs
   24 Su b scrip t error
                                                      " lË il:"ï:'"31.' 3i;;i
                                  :'t nÈIëêlriïéff .ËrrËâ.fîf
                                                                                past $FFFF

   2 5 ! t i s s i n g r l l l e g a r tl p e o r i n cor r ect
   2 6 f ll e g a l                                                  function ar gunent ( nur ner ic)
                         o pti o n
   2 7 Un r e c o g n i z e d o p e ra to r i n string
-28     Co n c a È e n a ti o n o p e ra to r (+l rnlssinq       expr ession
   29 lt is s i n g , i l l e g a i _ t1 p e -o i     i " ;;;;Ë
   30 Too nany poVNnxr iôopÀ acriv"-_-rui-ï"                         funcr ion ar gunenr ( sr r ing)
_3 1    Lin e r e f e r e n ce ta b l e ô ve i ffô w- *                - ' re
   32
   3 4 ïËËÊErËi$3;ù1l;ril"i;f*f - rrred ro arlocarepasr sFFFF
   35 _IllegSl-_channet.numuéf:
- 36                                               nusÈ
                                                   -'         be 0 to 9
       ffiËr-dËîfiffiÏIrrîlzs:ir Ë*lll
  t    Th e s e e r r o r tl p e s are not prog r " r jr r o r " .
  av a ila b l e t h e ta b l e s nay be expanded Èo includer f m o r e system m emor y l s
                                                                   Dore entr ies.




                                    I

                                                 -c 1-
                                    ÀPPL}iUIX    C


                         À./BàsIc BTnFIIIE      BRRoRcoDBs


     T h e ER R fu n ctl o n    will  r etur n one of    the   following        cod es
     a f t e r a n e tro r o ccu rs at r un- tiur e:

     ffiKo-nË:"q.æ;r.r*9                   DISK ERRORS The codes us ed
                                           ar e ldentical to those used by
                                           tbe bost DOS and nay be found
                                           ln the systemts DOS m anua l .
                                           AII     codes    nay   not  be
                                           lnpleurented by DOS.



                                           UULTIPLY OVERFIOW Tbe resu].I
                                           of a nultiplication      excee ds
                                           the r ange +32767 Èo - 3276 8.
                                           the r esult  was the low or d er
                                           16 bits of tbe r esult and t he
                                           high or der 16 bytes ar e sav ed
                                           in tbe fast scr atch ar ea.


                                          DI V I DE   E RRO R A d iv id e     wit h   a
                                           zero divisor was att,empted. A
                                           r e s u lt o f z e r o wa s r e t u r n e d .

                                          CONVERSIONERROR The BAS LIB
                                          ÀSCII- to- binar y     conver sion
                                          r ead illegal,     over size  or no
                                          input.      À value of zer o was
                                          r etur ned.




 \                         I
_)



                                             -c 2-
                                                                       ÀPPENDIX D

                                                         À ,/B À S IC Re f e re n c e       la b le



                                                                       PUXCÎIOFS


      ABS            (n)       absolute              value of n
     À SC            ( s S)      n u me rl c va l u e o f fir st                  char acter          of s$
      B I I PS I / O b u ffe r

      Cm. $          (n)       À S C II ch a ra cte r              cor r esponding             to n
      BO F           (fn)        te st      fi l e        n fo r       end of file           condition
     E RR e r r o r        n un b e r
     FU, S f Z       ( *n )      n u n b e r o f se cto rs               in file        n
      I 'BF TS        (s9rn)              stri n g         re P re s entlng        n char acter s        star Èing   at left   of
     -3$
     Én              (s$)        l e n g th     i n b yte s of s$
     I T I DS         ( s $ ' n I rn ] ) stri n g repr esenting                             n2 ( or r eur aining) char ac ter s
     s t a rt in g    a t n l ch a ra cte rs l n to s$
'_
     P EE E          (n)       8 -b i t     n u me ri c va l ue at addr ess n
     POS character                p o si ti o n           l n p rl n t    buffer
     R I G BT $      (s$rn)         stri n g         re p re se nÈing n ehar acter s at the end of s$
     RIID            t (n) I      randoro number between 0 and 255
     gf À TU S       ( *n )     sta tu s        o f fi l e         n
     S I RS          (n)       stri n g       co n ve rsi o n of nuner ic n

-    sI rB s T R     (s$'s$)          f i rst        o ccu rre n ce of sl$              in s2$ ( or zer o if         noÈ found)
     S I TAP         (n)       sw a p b yte s o f l 6 -b it                value n
     tAB             (n)       a d va n ce p ri n t           b u ffer     pointer          to position       n
                                                                                                                                    :
     TRil$           (s$)       a rg u u re n t s$ n i th o ut             tr ailing          spaces
     V ÀL            (sS)       n u me ri c co n ve rsl .on of str ing                        s$

                                                     \




                                                                         - D 1-
                                                                         ÀPPEI{DIX          D

                                                             A /B A S I C Re f e re n c e       T a b le

                                                                            OPERÀ1IOtrS

                 I      binary      l o g i ca l     i n cl u si ve    or       ( 1tr )

             '                   . ..    t      u n a ry stri n g      constant definition
             I          u n a r y l og l ca l      co u rp l e n e n t ( *r )
             t          binary      l o g i ca l     e xcl u si ve     or       ( ltr )

             &          binary      l o g i ca l     a n d (l e r)
             (          u n a r y exp re ssi o n g ro u p star t
             (t           u n a r y fi L e      n u mb e r g ro u p star t

             )          u n a r y e xp re ssi o n g ro u p e nd
             *          binary      n u me ri c u ru l ti p l y       ( 1*r )

              + ' . b i n a r y n u me ri c a d d i ti o n ( 1+r ) ,
             ' b i n a r y s t r i n g co n ca te n a ti o n ( 1$ cat r $) r
                u n a r y n u me ri c p o si ti ve       (+r)

                     , b i n a r y su b scri p t se p a ra tor l
                     b i n a r y p ara n e te r se p a ra to r,
                     b i n a r y PR IN T p u n ctu a ti o n (tab)

                        b i n a r y n u rn e ri c su b tra cti o n            ( 1- r ) r
                     u n a r y n u m e ri c n e g a ti o n (-r)

             /          binary      n u me ri c d i vi si o n         0/r )
             :          binary      se p a ra te sta te u re n ts on line

             ;          b i n a r y P R IN T p u n cÈ u a È i o n ( no tab) r
                     u n a r y P R IN T p u n ctu a i i o n (n o CRLF)


                     binary      string         l e ss   (1 $ <r$ )
_l
     I
     I       (= b i n a r y n u me ri c n o È g re a ter ( l( = r ) r
              b i n a r y s t ri n g n o t g re a te r (l$( = r $)


                 binary          string         n o t e q u a l (I9( ) r $)
             =        b i n a r y n u me ri c e q u a l (l =r) r
                 b i n a r y s t ri n g e q u a l (l g =r$ )
                 b i n a r y n u me ri c a ssi g n me n t (l= r ) r
                 b i n a r y s t rl n g a ssi g n n e l t (19=r $)
         I
             <- bingry                  n u me r i c     n o È .' g reater            ( 1=( r ) r blnar y   etr lng   n: i- gr eater
             (I $ = ( r $ )


                                                                                 -D 2-
                                       .F-f;          IE   D
                                               -::-
                               A /B A S IC Refer ence TabLe


                                     OPBRÀTIOf,SCOnÈ.

=) b i n a ry n u m eri c not l es s (]=) r ) r
 bina ry strin g not l es s (I$=)rS )

 binary strln g     greater (1$>r$)
) = b in a ry n u u rerl c not l es s (I)= r ) r
  binary strln g not l es s (l $)=r$)




                               I


                                               -D 3-
                                                                  ÀPPEITDIX         D

                                                        À,/BÀSIC Reference              Table

                                                                    STÀTEEEIM

                   ...         i n tro d u ce            re mar k ( column 1)

                   . ..        l n tro d u ce            re mar k ( column t)

    flffi.E3       [ -l n        se t ra n a ssi g nnent addr ess to n

    ffiil'ï     n         ca l l      u a ch i n e l a n guage subr outine                   at addr ess n

     ffi:ffi    s9           l o a d a n d ru n B ASIC pr ogr an naned s$

     CI{'SE     *nIrl n Ir...l l                         cl o se specified          files     or all     files

     crrsE      P IL E S             cl o se sp e ci fied            files      or all       files
     CREATE        *nrs$             cre a te          fi l e   n with name s$
     DIlr       v (n t ,n l ).[ 1. . . I                     d e ctar e dinensioned var iables
     DIH       v $ (n [          ) [ 1 .. . I d e clar e str ing                    var iables with         length     n l or
               s t r i n g 'n ]a rra ys      o f d i rnension.nlr                   length n2
               ; . i Ie Irl l te t;]l          t r...1           output str ings            and contr ol       char acter s      to
                 t e rmi n a l
     .BTD
                   t errn i n a te e xe cu ti o n

    ffiI-SHF expand nemory space
     FOR       v = n T O n IS T E P n ]    cr eate loop with contr ol var iabJe v s eË
               i n iti a l l y to n l , te rur inal condition of v cr ossing î2t step s i z e
               n 3 (o r 1 )

     GEN        N I rN [ 1 . . .1 1                i n se rt     speclfied        values into          pr ogr an

     @ST'B      N           ca l l    su b ro u ti n e          star ting       aÈ line      N

     GCI|K)     N           b ra n ch to L i r:e N

     IP        r GOS U BN                 ca l l         su b r outine      star ting       at line     N if     expr ess i on    x
               t,rue

     IF        x T H E NN               b ra n cl : to line            N if      expr ession x tr ue

     IF        x THENS                  p e rfo .i n ' statenent             S if       expr ession x tr ue

     INPTIf    L          lnput       l i st       i     l ro u r ter r ninal

    €XmE-l     sS deleÈe file                            narneds$

I
                                                         l



                                                                       - D 4-
                                                                               ÀPPEI'DII         D

                                                                   A ,/B A srC Refer ence Table

                                                                          gtATEItBImS cont,

            TL ET J v l ( n I r n J ) J=n                      a ssi g n e xpr ession on r ight                   of equal to var iabJ .e
                    on lett

            f,ilfE         S$        set      nodule             nane to SS

            NE : [ . T     v        i n t ti a te        n e xt l te ra ti on           for FOR loop wlth                contr ol      var iab l e    v

            OIf            E R R O RGOT O tN I                      se t tra p at llne            N for        er r or   handllng       or
                           t , e r n l n a te e rro r               b a n d l l n g tr ap

            ON             N O V RGOT ON                   b ra n ch to line             N if     no over flow
      -     OH             O\rR GOTON                    branch to line                 N if     overtlow

            OA             n G O S U BN [rN [r...I]                        ca ll       subr outine      at n- th         line       nunber N

            Off            n G O TON t.rN t1 ...l l                       b ra nch to n- th           line      number N

            O PE I I       lnrs$            o p e n fi l e             n l w i th nane ss

            OI|f .         L        provide            compile options
      -     O RG            [=ln          se t p ro g ra m a d d ress to n

            P ÀG           c o n t i n ue           co rn p i l e r l i sti n g        on next page

            B O KE          (n)=n           sto re            8 -b i t   va l u e n2 at addr ess nI
            P RI I II       [ e I r l J te t; I I t r...I                 o u tput char acter s           to ter minal

            BE AD          fnrL           re a d d a ta i n to               l i st    L fr on sequenÈia1 file                  n

            REli           introduce                 remark
            RE I {À t t E r e n a me f i Ie ,A 9                    to B s

            RE ST O R Ef n l r l n Ir...]l                          re w i n d files       Dlr    r r 2, ...      and r eopen for            inp ut

      -     Rgf (tR n          return          fro m mo sÈ re ce n t active                      GOSUB

          ffir* nrn . r L r e a d d a ta i n to l i stttro rn ra n comfi1en1r ecor dn2

          ffim f : F *n r n r L                     w ri te      d a ta fro m list             L into   r andoin tile           nl    r ecor d   n2

          Sl         l ï i i f *n [ r *n [ 1...1 1                  re w L n d files       nlr    î2r    ...      ano r eopen for            output

            S EB L L           s$       p a ss rre ssa g e s$ to oper ating                          syster u

                                                                   \
  I
  I
/1.




                                                                                      - D 5-


                                                                                                                                                          .l
                                                        APPENDIT     D

                                                  À /B ASIC Refer ence Table

                                                    Even f,ore S!.ÀTE!iEFTS

    s r Àc x      [=ln       g e t i n i tl a l      stack pointer       to addr ess n
    SF O P t e r n in a t.      p ro g râ m e xe c ution

    TRrIE        fnrL        w rl te     d a È a fro n bst     L into      seguentlal    file   n




                                             \
I




                                                           - D 6-
    KR    B}DIJIG

    llhen A,/BASIC detects an error ln tùe Ecr,rrceprogran ô[ing
    elther the first or second gnss it will print the source
;   line in error and a &essage wlth an error code (the codes
    are listed in the appedix). The line belory the erroneous
    Eource line will bave an up arrow slprring tlre alproxfuate
    pnsition of tbe error.    Tbe error location is about 95t
    aælrate.

    fûen an error ts detectecl on a souræ line ttre ærpll.er rlll
    not process the llne furttrer even if it is a uultlple
    staÈemenÈ'line, so the rest of the source line sttc,lld be
    e:tamined c,a'efuIly for pssible urdetected errors.

    ltre error count prinÈed in the listing    ls the nuuùer of
    errors detected during tàe æcord pass only.



    XEE PNæRÈHrJSfI}G

    During ttre seænd pass a fornaEted listing is produced r*rich
    will include any error lessages (see COIîPILETIfiE ERRORS).
    The list.ing usually corrsists of three fields: the first is
    the hex address where the objecÈ code starts for the BASIC
    source line; the second field is the statenent line nunber
    if any; ard the last field is the BâSIC source line.

    After courpilation is cu;ùete, the program stâtistics,   load
    map and slmbol table (if the program included an OPI S
    statenent) are printed.. the load rap lists the nases and
    addresses (nain entry pint)        of the BASLIB modules the
    ccnpiler selected and trEluded in a particrrlar progr&r. Ibe
    BÀ,S,IB updule ruures ard functions are:

         lBilB              nËfsi

         CIJEIII *   Serninal qrErrt spllrr:l (PRtNf, DIæIâY,
         INP!,T  *   ferninal tngrt rodua-l (INF{II)
         DISK   *   Disk file arpçnrt (OPEI, CIOSE,READ,RREAD,
         FrRrtE, GENTE)
         MIII,TIPIJ ]lultiplication   hrit]netic)
         DfVIDE      Divide Gritlretic)
         RAI.DC!.I Randournrtber generator (RlD)
         STRIIG I * Strirg pinitives      ard functicns
         STRII\G2 * htended strirg functions (SiBSIR, VAL, SR)
               * TEESETOUI.ESBAVEMT'LITPLEEIT.].J POINIS.

         INO



                            I


                                -45-
