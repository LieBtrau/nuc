*Zetex ZR431L Spice Model v1.0 Last Revised 21/10/05
*
*NOTE: This is a simplified model.  Do not rely on this model for 
*validation of circuit stability.  It does not accurately replicate 
*stability boundary conditions when the device is operated with 
*additional load capacitance.  Check the circuit stability by normal 
*breadboarding techniques.
*
.SUBCKT TLV431 1 2 3
*Connections  C ref A
*
*Input current
Rin 2 3 Rmod1 1.127E7
D1 3 2 Dmod1
D2 2 1 Dmod1
Cin 2 3 10E-12
*
*Quiescent current
E1 50 3 2 3 1
D8 50 51 Dmod1
Rq 51 52 Rmod4 31E3
Vq 52 3 0
F1 1 3 Vq 1
Ro 1 3 1.5E6
*
*Reference voltage
Iref 3 21 1.2405E-3
Rref 21 3 Rmod2 1000
*
*Voltage dependence
G1 21 3 POLY(1) 1 3 0 1.57E-6 -0.97e-7
*
*Gain
G2 3 31 2 21 1e-7
Rt2  3 31 100E6
Rt3  3 32 3E6
Ct1 31 32 3E-13
D3 31 3  Dmod1
D4 3 31  Dmod1
*
*Output
*Q1 5 42 3 Qmod1
Cr1 7 31 1.5e-14
G3 41 3 31 3 0.8
Rc1 6 7 5
Rc2 7 5 5
D6 3 41 Dmod1
D7 3 1 Dmod1
L1 1 6 10nH
D9 5 41 Dmod2
*
.MODEL Qmod1 NPN BF=220 CJC=3E-12 CJE=3E-12
.MODEL Rmod1 RES (TC1=2.95E-3 TC2=-5E-7)
.MODEL Rmod2 RES (TC1=1.5e-5 TC2=-3.5e-7)
.MODEL Rmod3 RES (TC1=-2.5E-3 TC2=2E-5)
.MODEL Rmod4 RES (TC1=1.7E-3 TC2=0)
.MODEL Dmod1 D IS=5E-15 RS=4 BV=22
.MODEL Dmod2 D IS=1E-18 RS=.01
.ENDS  TLV431
*
*$
*
*                (c)  2006 Zetex Semiconductors plc
*
*   The copyright in these models  and  the designs embodied belong
*   to Zetex Semiconductors plc (" Zetex ").  They  are  supplied
*   free of charge by Zetex for the purpose of research and design
*   and may be used or copied intact  (including this notice)  for
*   that purpose only.  All other rights are reserved. The models
*   are believed accurate but  no condition  or warranty  as to their
*   merchantability or fitness for purpose is given and no liability
*   in respect of any use is accepted by Zetex PLC, its distributors
*   or agents.
*
*   Zetex Semiconductors plc, Zetex Technology Park, Chadderton,
*   Oldham, United Kingdom, OL9 9LL