# APA Tables for IALSA's 2015 Portland Workshop

This report covers a subset of the models run in the IALSA workshop in Portland in February 2015.

<!--  Set the working directory to the repository's base directory; this assumes the report is nested inside of three directories.-->


<!-- Set the report-wide options, and point to the external code file. -->


<!-- Load the sources.  Suppress the output when loading sources. --> 


<!-- Load 'sourced' R files.  Suppress the output when loading packages. --> 


<!-- Load any global functions and variables declared in the R file.  Suppress the output. --> 


<!-- Declare any global functions specific to a Rmd output.  Suppress the output. --> 


<!-- Load the datasets.   -->


<!-- Tweak the datasets.   -->


# Notes

### Details
1. The current report covers 54 models, with 9 unique studies.
2. The SATSA tables are temporarily excluded because the RDS has duplicate entries for some of their models.  (This is something Andrey can fix.) 

### Unanswered Questions
1. What does the random effects table need to include?  How should it be laid out?


# **eas** study



###  grip *vs* gait 



Table: Fixed effects for each predictor (as rows) on the measures [a] grip and [b] gait, for the eas study.

                         grip for males          gait for males        grip for females        gait for females
------  -------  ----------------------  ----------------------  ----------------------  ----------------------
int     age       -0.547(0.326),$p$=.09   -0.538(0.610),$p$=.38   +0.069(0.127),$p$=.59   -1.509(0.470),$p$=.00
        edu       -0.256(0.485),$p$=.60   +0.691(1.150),$p$=.55   -0.136(0.161),$p$=.40   +0.294(0.862),$p$=.73
        height    +0.211(0.236),$p$=.37   +0.080(0.452),$p$=.86   +0.217(0.074),$p$=.00   +0.054(0.334),$p$=.87
slope   age       -0.033(0.134),$p$=.81   -0.086(0.318),$p$=.79   -0.066(0.031),$p$=.03   -0.069(0.129),$p$=.59
        edu       +0.023(0.153),$p$=.88   -0.279(0.255),$p$=.27   +0.097(0.044),$p$=.03   +0.111(0.286),$p$=.70
        height    +0.002(0.096),$p$=.98   +0.015(0.211),$p$=.94   -0.011(0.023),$p$=.62   +0.058(0.080),$p$=.47


Table: Random effects on the measure grip, for the eas study.

name                         male                   female
-------  ------------------------  -----------------------
tau_00    +26.838(16.359),$p$=.10   +25.144(5.300),$p$=.00
tau_11      +0.727(1.200),$p$=.54    +0.227(0.235),$p$=.33


###  grip *vs* pef 



Table: Fixed effects for each predictor (as rows) on the measures [a] grip and [b] pef, for the eas study.

                          grip for males           pef for males        grip for females         pef for females
------  -------  -----------------------  ----------------------  ----------------------  ----------------------
int     age        -5.442(7.002),$p$=.44   -0.529(0.277),$p$=.06   -4.276(2.005),$p$=.03   +0.065(0.123),$p$=.60
        edu       +5.680(10.549),$p$=.59   -0.286(0.431),$p$=.51   -1.858(2.906),$p$=.52   -0.155(0.157),$p$=.32
        height     +3.058(3.509),$p$=.38   +0.219(0.198),$p$=.27   +0.397(1.280),$p$=.76   +0.215(0.076),$p$=.00
slope   age        +0.723(2.111),$p$=.73   -0.047(0.091),$p$=.60   +0.187(0.554),$p$=.74   -0.064(0.033),$p$=.05
        edu        -0.143(2.658),$p$=.96   +0.040(0.117),$p$=.73   +0.554(0.846),$p$=.51   +0.098(0.046),$p$=.03
        height     -0.019(1.583),$p$=.99   -0.006(0.073),$p$=.94   +0.635(0.373),$p$=.09   -0.010(0.018),$p$=.56


Table: Random effects on the measure grip, for the eas study.

name                              male                        female
-------  -----------------------------  ----------------------------
tau_00    +12172.062(6209.040),$p$=.05   +4698.589(1151.563),$p$=.00
tau_11       +317.936(483.078),$p$=.51       +59.969(45.733),$p$=.19


###  pef *vs* gait 



Table: Fixed effects for each predictor (as rows) on the measures [a] pef and [b] gait, for the eas study.

                          pef for males          gait for males         pef for females        gait for females
------  -------  ----------------------  ----------------------  ----------------------  ----------------------
int     age       -4.751(5.542),$p$=.39   -0.471(0.579),$p$=.42   -4.331(1.669),$p$=.01   -1.563(0.481),$p$=.00
        edu       +4.514(8.769),$p$=.61   +0.668(1.059),$p$=.53   -2.119(2.548),$p$=.41   +0.314(0.840),$p$=.71
        height    +3.320(4.375),$p$=.45   +0.046(0.463),$p$=.92   +0.412(1.270),$p$=.75   +0.041(0.330),$p$=.90
slope   age       +0.216(2.182),$p$=.92   -0.079(0.287),$p$=.78   +0.204(0.488),$p$=.68   -0.040(0.123),$p$=.74
        edu       +0.722(2.542),$p$=.78   -0.272(0.417),$p$=.51   +0.717(0.875),$p$=.41   +0.120(0.291),$p$=.68
        height    -0.238(1.714),$p$=.89   +0.046(0.214),$p$=.83   +0.620(0.315),$p$=.05   +0.068(0.082),$p$=.41


Table: Random effects on the measure pef, for the eas study.

name                              male                        female
-------  -----------------------------  ----------------------------
tau_00    +12233.078(6432.015),$p$=.06   +4732.247(1131.196),$p$=.00
tau_11       +269.587(447.928),$p$=.55       +58.234(43.967),$p$=.18


# **elsa** study



###  fev *vs* gait 



Table: Fixed effects for each predictor (as rows) on the measures [a] fev and [b] gait, for the elsa study.

                          fev for males          gait for males         fev for females        gait for females
------  -------  ----------------------  ----------------------  ----------------------  ----------------------
int     age       -0.033(0.002),$p$=.00   -0.008(0.001),$p$=.00   -0.026(0.001),$p$=.00   -0.010(0.001),$p$=.00
        edu       +0.221(0.035),$p$=.00   +0.102(0.013),$p$=.00   +0.098(0.021),$p$=.00   +0.090(0.012),$p$=.00
        height    +0.034(0.003),$p$=.00   +0.005(0.001),$p$=.00   +0.029(0.002),$p$=.00   +0.006(0.001),$p$=.00
slope   age       +0.000(0.000),$p$=.16   +0.000(0.000),$p$=.00   +0.000(0.000),$p$=.41   -0.001(0.000),$p$=.00
        edu       -0.008(0.005),$p$=.08   +0.003(0.002),$p$=.06   +0.001(0.003),$p$=.64   +0.000(0.001),$p$=.92
        height    +0.000(0.000),$p$=.88   +0.000(0.000),$p$=.10   -0.001(0.000),$p$=.02   +0.000(0.000),$p$=.01


Table: Random effects on the measure fev, for the elsa study.

name                       male                  female
-------  ----------------------  ----------------------
tau_00    +0.364(0.037),$p$=.00   +0.144(0.015),$p$=.00
tau_11    +0.001(0.001),$p$=.07   +0.000(0.000),$p$=.42


###  grip *vs* fev 



Table: Fixed effects for each predictor (as rows) on the measures [a] grip and [b] fev, for the elsa study.

                         grip for males           fev for males        grip for females         fev for females
------  -------  ----------------------  ----------------------  ----------------------  ----------------------
int     age       -0.430(0.018),$p$=.00   -0.033(0.002),$p$=.00   -0.223(0.012),$p$=.00   -0.026(0.001),$p$=.00
        edu       +1.334(0.350),$p$=.00   +0.220(0.035),$p$=.00   +1.017(0.219),$p$=.00   +0.098(0.021),$p$=.00
        height    +0.290(0.023),$p$=.00   +0.034(0.003),$p$=.00   +0.223(0.017),$p$=.00   +0.029(0.002),$p$=.00
slope   age       -0.013(0.002),$p$=.00   +0.000(0.000),$p$=.16   -0.011(0.002),$p$=.00   +0.000(0.000),$p$=.54
        edu       -0.041(0.044),$p$=.35   -0.008(0.005),$p$=.10   -0.017(0.026),$p$=.51   +0.001(0.003),$p$=.67
        height    +0.002(0.003),$p$=.54   +0.000(0.000),$p$=.85   -0.004(0.002),$p$=.04   -0.001(0.000),$p$=.01


Table: Random effects on the measure grip, for the elsa study.

name                        male                   female
-------  -----------------------  -----------------------
tau_00    +39.846(2.975),$p$=.00   +18.642(1.211),$p$=.00
tau_11     +0.054(0.045),$p$=.23    +0.030(0.018),$p$=.10


###  grip *vs* gait 



Table: Fixed effects for each predictor (as rows) on the measures [a] grip and [b] gait, for the elsa study.

                         grip for males          gait for males        grip for females        gait for females
------  -------  ----------------------  ----------------------  ----------------------  ----------------------
int     age       -0.428(0.018),$p$=.00   -0.008(0.001),$p$=.00   -0.222(0.012),$p$=.00   -0.009(0.001),$p$=.00
        edu       +1.337(0.350),$p$=.00   +0.101(0.013),$p$=.00   +1.016(0.219),$p$=.00   +0.091(0.012),$p$=.00
        height    +0.289(0.023),$p$=.00   +0.005(0.001),$p$=.00   +0.223(0.017),$p$=.00   +0.006(0.001),$p$=.00
slope   age       -0.014(0.002),$p$=.00   +0.000(0.000),$p$=.00   -0.011(0.002),$p$=.00   -0.001(0.000),$p$=.00
        edu       -0.045(0.044),$p$=.30   +0.003(0.002),$p$=.04   -0.018(0.026),$p$=.49   +0.000(0.001),$p$=.92
        height    +0.002(0.003),$p$=.51   +0.000(0.000),$p$=.17   -0.004(0.002),$p$=.04   +0.000(0.000),$p$=.01


Table: Random effects on the measure grip, for the elsa study.

name                        male                   female
-------  -----------------------  -----------------------
tau_00    +40.496(2.987),$p$=.00   +18.788(1.153),$p$=.00
tau_11     +0.070(0.046),$p$=.12    +0.034(0.016),$p$=.04


# **hrs** study



###  grip *vs* gait 



Table: Fixed effects for each predictor (as rows) on the measures [a] grip and [b] gait, for the hrs study.

                          grip for males          gait for males        grip for females        gait for females
------  -------  -----------------------  ----------------------  ----------------------  ----------------------
int     age        -0.520(0.080),$p$=.00   -0.005(0.002),$p$=.05   -0.266(0.038),$p$=.00   -0.009(0.002),$p$=.00
        edu        +0.064(0.127),$p$=.61   +0.008(0.005),$p$=.08   -0.062(0.079),$p$=.43   +0.016(0.004),$p$=.00
        height    +25.429(6.701),$p$=.00   +0.118(0.199),$p$=.55   +9.508(4.962),$p$=.06   +0.079(0.184),$p$=.67
slope   age        -0.014(0.011),$p$=.21   -0.001(0.001),$p$=.04   -0.008(0.008),$p$=.29   -0.001(0.000),$p$=.00
        edu        -0.020(0.020),$p$=.32   +0.001(0.001),$p$=.16   -0.024(0.017),$p$=.17   +0.001(0.001),$p$=.12
        height     +0.122(0.896),$p$=.89   -0.033(0.050),$p$=.51   +1.382(0.863),$p$=.11   -0.027(0.044),$p$=.54


Table: Random effects on the measure grip, for the hrs study.

name                        male                   female
-------  -----------------------  -----------------------
tau_00    +27.592(3.947),$p$=.00   +11.066(1.467),$p$=.00
tau_11     +0.034(0.161),$p$=.83    +0.051(0.086),$p$=.55


###  grip *vs* pef 



Table: Fixed effects for each predictor (as rows) on the measures [a] grip and [b] pef, for the hrs study.

                          grip for males              pef for males        grip for females           pef for females
------  -------  -----------------------  -------------------------  ----------------------  ------------------------
int     age        -0.520(0.080),$p$=.00      -4.152(1.059),$p$=.00   -0.266(0.038),$p$=.00     -3.230(0.596),$p$=.00
        edu        +0.063(0.127),$p$=.62      +7.912(1.949),$p$=.00   -0.064(0.080),$p$=.42     +3.919(1.354),$p$=.00
        height    +25.275(6.680),$p$=.00   +172.839(83.363),$p$=.04   +9.498(4.950),$p$=.06   +83.284(53.590),$p$=.12
slope   age        -0.014(0.011),$p$=.21      -0.040(0.149),$p$=.79   -0.008(0.008),$p$=.32     -0.474(0.091),$p$=.00
        edu        -0.021(0.020),$p$=.30      -0.120(0.348),$p$=.73   -0.024(0.017),$p$=.17     -0.070(0.267),$p$=.79
        height     +0.160(0.897),$p$=.86    +14.116(12.617),$p$=.26   +1.394(0.861),$p$=.10    +14.839(8.363),$p$=.08


Table: Random effects on the measure grip, for the hrs study.

name                        male                   female
-------  -----------------------  -----------------------
tau_00    +27.524(3.948),$p$=.00   +11.144(1.469),$p$=.00
tau_11     +0.039(0.161),$p$=.81    +0.059(0.087),$p$=.49


###  pef *vs* gait 



Table: Fixed effects for each predictor (as rows) on the measures [a] pef and [b] gait, for the hrs study.

                             pef for males          gait for males           pef for females        gait for females
------  -------  -------------------------  ----------------------  ------------------------  ----------------------
int     age          -4.184(1.059),$p$=.00   -0.005(0.002),$p$=.05     -3.242(0.596),$p$=.00   -0.009(0.002),$p$=.00
        edu          +7.875(1.939),$p$=.00   +0.009(0.005),$p$=.08     +3.935(1.359),$p$=.00   +0.016(0.004),$p$=.00
        height    +170.272(83.414),$p$=.04   +0.114(0.199),$p$=.57   +82.393(53.722),$p$=.12   +0.086(0.184),$p$=.64
slope   age          -0.028(0.151),$p$=.85   -0.001(0.001),$p$=.04     -0.474(0.091),$p$=.00   -0.001(0.000),$p$=.00
        edu          -0.130(0.348),$p$=.71   +0.001(0.001),$p$=.21     -0.061(0.267),$p$=.82   +0.001(0.001),$p$=.08
        height     +15.622(12.642),$p$=.22   -0.031(0.050),$p$=.53    +14.704(8.365),$p$=.08   -0.034(0.045),$p$=.44


Table: Random effects on the measure pef, for the hrs study.

name                            male                       female
-------  ---------------------------  ---------------------------
tau_00    +7548.570(910.501),$p$=.00   +3091.998(396.555),$p$=.00
tau_11       +32.795(34.454),$p$=.34       +8.317(15.767),$p$=.60


# **ilse** study



###  grip *vs* tug 



Table: Fixed effects for each predictor (as rows) on the measures [a] grip and [b] tug, for the ilse study.

                         grip for males           tug for males        grip for females         tug for females
------  -------  ----------------------  ----------------------  ----------------------  ----------------------
int     age       +0.887(1.633),$p$=.59   -0.060(0.159),$p$=.71   +2.817(1.832),$p$=.12   -0.147(0.215),$p$=.49
        edu       +0.743(3.496),$p$=.83   -0.191(0.249),$p$=.44   -3.112(3.589),$p$=.39   -0.506(0.373),$p$=.17
        height    +0.644(0.259),$p$=.01   -0.019(0.021),$p$=.35   +0.632(0.324),$p$=.05   +0.008(0.025),$p$=.77
slope   age       -0.041(0.203),$p$=.84   +0.004(0.024),$p$=.85   -0.592(0.332),$p$=.07   +0.003(0.028),$p$=.91
        edu       +0.125(0.482),$p$=.80   +0.024(0.043),$p$=.57   +0.670(0.498),$p$=.18   +0.049(0.053),$p$=.36
        height    -0.048(0.034),$p$=.15   +0.000(0.003),$p$=.89   -0.017(0.049),$p$=.73   +0.000(0.003),$p$=.89


Table: Random effects on the measure grip, for the ilse study.

name                          male                     female
-------  -------------------------  -------------------------
tau_00    +361.886(51.817),$p$=.00   +422.822(69.528),$p$=.00
tau_11       +1.496(1.010),$p$=.14      +5.173(1.439),$p$=.00


# **lasa** study



###  grip *vs* gait 



Table: Fixed effects for each predictor (as rows) on the measures [a] grip and [b] gait, for the lasa study.

                         grip for males          gait for males        grip for females        gait for females
------  -------  ----------------------  ----------------------  ----------------------  ----------------------
int     age       -0.344(0.047),$p$=.00   +0.040(0.123),$p$=.75   -0.264(0.030),$p$=.00   +0.142(0.048),$p$=.00
        edu       -0.132(0.098),$p$=.18   -0.095(0.091),$p$=.30   +0.098(0.067),$p$=.14   -0.069(0.066),$p$=.30
        height    +0.230(0.047),$p$=.00   -0.023(0.018),$p$=.21   +0.178(0.034),$p$=.00   -0.007(0.033),$p$=.83
slope   age       -0.039(0.008),$p$=.00   +0.033(0.031),$p$=.29   -0.013(0.003),$p$=.00   +0.034(0.009),$p$=.00
        edu       +0.012(0.008),$p$=.15   -0.010(0.020),$p$=.62   -0.004(0.005),$p$=.38   -0.005(0.009),$p$=.60
        height    -0.003(0.004),$p$=.47   +0.002(0.004),$p$=.64   -0.003(0.003),$p$=.27   +0.008(0.004),$p$=.06


Table: Random effects on the measure grip, for the lasa study.

name                        male                   female
-------  -----------------------  -----------------------
tau_00    +39.067(5.082),$p$=.00   +15.757(3.111),$p$=.00
tau_11     +0.063(0.092),$p$=.49    +0.006(0.024),$p$=.81


###  grip *vs* pef 



Table: Fixed effects for each predictor (as rows) on the measures [a] grip and [b] pef, for the lasa study.

                         grip for males           pef for males        grip for females         pef for females
------  -------  ----------------------  ----------------------  ----------------------  ----------------------
int     age       -0.361(0.045),$p$=.00   -7.478(0.649),$p$=.00   -0.265(0.029),$p$=.00   -4.988(0.497),$p$=.00
        edu       -0.089(0.094),$p$=.34   +4.424(1.439),$p$=.00   +0.106(0.066),$p$=.11   +2.123(1.219),$p$=.08
        height    +0.222(0.045),$p$=.00   +3.195(0.634),$p$=.00   +0.172(0.034),$p$=.00   +1.948(0.550),$p$=.00
slope   age       -0.034(0.004),$p$=.00   -0.044(0.063),$p$=.48   -0.012(0.003),$p$=.00   -0.081(0.050),$p$=.10
        edu       +0.003(0.008),$p$=.72   -0.046(0.133),$p$=.73   -0.006(0.005),$p$=.27   +0.000(0.111),$p$=.99
        height    -0.002(0.004),$p$=.68   -0.030(0.056),$p$=.59   -0.003(0.003),$p$=.42   +0.013(0.050),$p$=.80


Table: Random effects on the measure grip, for the lasa study.

name                        male                   female
-------  -----------------------  -----------------------
tau_00    +38.434(3.247),$p$=.00   +14.764(3.174),$p$=.00
tau_11     +0.010(0.002),$p$=.00    +0.002(0.027),$p$=.95


###  pef *vs* gait 



Table: Fixed effects for each predictor (as rows) on the measures [a] pef and [b] gait, for the lasa study.

                          pef for males          gait for males         pef for females        gait for females
------  -------  ----------------------  ----------------------  ----------------------  ----------------------
int     age       -6.524(0.472),$p$=.00   +0.082(0.011),$p$=.00   -4.495(0.357),$p$=.00   +0.129(0.018),$p$=.00
        edu       +4.455(1.111),$p$=.00   -0.066(0.025),$p$=.01   +3.083(0.871),$p$=.00   -0.049(0.036),$p$=.17
        height    +3.174(0.497),$p$=.00   -0.017(0.010),$p$=.11   +2.534(0.411),$p$=.00   -0.026(0.019),$p$=.16
slope   age       -0.160(0.042),$p$=.00   +0.024(0.003),$p$=.00   -0.138(0.030),$p$=.00   +0.039(0.007),$p$=.00
        edu       -0.058(0.089),$p$=.52   -0.013(0.005),$p$=.01   -0.088(0.065),$p$=.17   -0.008(0.009),$p$=.39
        height    -0.021(0.036),$p$=.56   +0.001(0.003),$p$=.74   -0.042(0.030),$p$=.17   +0.011(0.005),$p$=.01


Table: Random effects on the measure pef, for the lasa study.

name                            male                       female
-------  ---------------------------  ---------------------------
tau_00    +9154.709(603.180),$p$=.00   +3905.202(273.762),$p$=.00
tau_11        +15.633(3.403),$p$=.00        +1.263(0.912),$p$=.17


# **nuage** study



###  grip *vs* gait 



Table: Fixed effects for each predictor (as rows) on the measures [a] grip and [b] gait, for the nuage study.

                          grip for males          gait for males         grip for females        gait for females
------  -------  -----------------------  ----------------------  -----------------------  ----------------------
int     age        -1.389(0.127),$p$=.00   +0.042(0.009),$p$=.00    -0.940(0.113),$p$=.00   +0.055(0.007),$p$=.00
        edu        +0.126(0.115),$p$=.27   -0.016(0.005),$p$=.00    +0.008(0.132),$p$=.95   -0.018(0.008),$p$=.03
        height    +59.477(7.297),$p$=.00   -1.272(0.442),$p$=.00   -10.970(8.002),$p$=.17   -2.614(0.472),$p$=.00
slope   age        -0.028(0.028),$p$=.32   +0.018(0.005),$p$=.00    +0.016(0.029),$p$=.56   +0.014(0.003),$p$=.00
        edu        -0.001(0.024),$p$=.96   +0.000(0.003),$p$=.90    -0.016(0.034),$p$=.64   +0.002(0.003),$p$=.58
        height     -0.541(1.655),$p$=.74   -0.016(0.170),$p$=.92    -0.987(2.011),$p$=.62   +0.093(0.217),$p$=.67


Table: Random effects on the measure grip, for the nuage study.

name                          male                     female
-------  -------------------------  -------------------------
tau_00    +201.080(13.545),$p$=.00   +176.110(10.891),$p$=.00
tau_11       +1.842(0.882),$p$=.04      +2.674(0.883),$p$=.00


###  grip *vs* tug 



Table: Fixed effects for each predictor (as rows) on the measures [a] grip and [b] tug, for the nuage study.

                          grip for males           tug for males         grip for females         tug for females
------  -------  -----------------------  ----------------------  -----------------------  ----------------------
int     age        -1.391(0.127),$p$=.00   +0.139(0.019),$p$=.00    -0.941(0.113),$p$=.00   +0.173(0.019),$p$=.00
        edu        +0.125(0.115),$p$=.27   -0.015(0.014),$p$=.30    +0.009(0.132),$p$=.95   +0.003(0.021),$p$=.89
        height    +59.554(7.299),$p$=.00   -1.012(1.185),$p$=.39   -10.912(8.001),$p$=.17   -3.389(1.289),$p$=.01
slope   age        -0.028(0.028),$p$=.32   +0.048(0.012),$p$=.00    +0.014(0.029),$p$=.62   +0.039(0.007),$p$=.00
        edu        -0.001(0.024),$p$=.97   -0.001(0.008),$p$=.85    -0.015(0.034),$p$=.67   +0.008(0.007),$p$=.27
        height     -0.567(1.653),$p$=.73   +0.499(0.479),$p$=.30    -0.994(2.009),$p$=.62   +0.357(0.485),$p$=.46


Table: Random effects on the measure grip, for the nuage study.

name                          male                     female
-------  -------------------------  -------------------------
tau_00    +201.231(13.568),$p$=.00   +176.038(10.891),$p$=.00
tau_11       +1.811(0.883),$p$=.04      +2.696(0.885),$p$=.00


# **octo** study



###  grip *vs* gait 



Table: Fixed effects for each predictor (as rows) on the measures [a] grip and [b] gait, for the octo study.

                         grip for males          gait for males        grip for females        gait for females
------  -------  ----------------------  ----------------------  ----------------------  ----------------------
int     age       -0.160(0.067),$p$=.02   +0.282(0.101),$p$=.00   -0.154(0.042),$p$=.00   +0.321(0.090),$p$=.00
        edu       -0.133(0.051),$p$=.01   -0.075(0.096),$p$=.43   +0.171(0.068),$p$=.01   -0.315(0.127),$p$=.01
        height    +0.109(0.037),$p$=.00   -0.058(0.042),$p$=.17   +0.092(0.023),$p$=.00   -0.044(0.053),$p$=.41
slope   age       -0.059(0.021),$p$=.00   -0.003(0.034),$p$=.92   -0.004(0.007),$p$=.64   -0.005(0.042),$p$=.91
        edu       -0.001(0.012),$p$=.91   +0.006(0.028),$p$=.83   -0.009(0.010),$p$=.39   -0.031(0.044),$p$=.48
        height    -0.009(0.006),$p$=.10   +0.011(0.011),$p$=.31   -0.002(0.003),$p$=.46   +0.009(0.020),$p$=.66


Table: Random effects on the measure grip, for the octo study.

name                       male                  female
-------  ----------------------  ----------------------
tau_00    +4.475(0.681),$p$=.00   +3.195(0.434),$p$=.00
tau_11    +0.045(0.024),$p$=.06   +0.018(0.009),$p$=.04


###  grip *vs* pef 



Table: Fixed effects for each predictor (as rows) on the measures [a] grip and [b] pef, for the octo study.

                         grip for males            pef for males        grip for females         pef for females
------  -------  ----------------------  -----------------------  ----------------------  ----------------------
int     age       -0.163(0.067),$p$=.01   -11.406(4.142),$p$=.01   -0.155(0.042),$p$=.00   -6.623(1.895),$p$=.00
        edu       -0.134(0.050),$p$=.01    +6.933(2.092),$p$=.00   +0.171(0.068),$p$=.01   +5.828(2.655),$p$=.03
        height    +0.109(0.037),$p$=.00    +2.092(1.475),$p$=.16   +0.091(0.023),$p$=.00   +2.595(0.984),$p$=.01
slope   age       -0.054(0.020),$p$=.01    -0.010(1.037),$p$=.99   -0.003(0.007),$p$=.64   +0.942(0.355),$p$=.01
        edu       -0.001(0.011),$p$=.96    -0.442(0.587),$p$=.45   -0.009(0.010),$p$=.38   -0.260(0.456),$p$=.57
        height    -0.010(0.006),$p$=.08    +0.200(0.266),$p$=.45   -0.002(0.003),$p$=.52   -0.209(0.195),$p$=.28


Table: Random effects on the measure grip, for the octo study.

name                       male                  female
-------  ----------------------  ----------------------
tau_00    +4.422(0.681),$p$=.00   +3.177(0.433),$p$=.00
tau_11    +0.038(0.022),$p$=.08   +0.017(0.009),$p$=.05


###  pef *vs* gait 



Table: Fixed effects for each predictor (as rows) on the measures [a] pef and [b] gait, for the octo study.

                           pef for males          gait for males         pef for females        gait for females
------  -------  -----------------------  ----------------------  ----------------------  ----------------------
int     age       -11.398(4.151),$p$=.01   +0.270(0.102),$p$=.01   -6.120(1.859),$p$=.00   +0.315(0.090),$p$=.00
        edu        +7.045(2.110),$p$=.00   -0.087(0.095),$p$=.36   +5.664(2.642),$p$=.03   -0.306(0.126),$p$=.01
        height     +2.132(1.476),$p$=.15   -0.057(0.043),$p$=.18   +2.618(0.976),$p$=.01   -0.043(0.053),$p$=.42
slope   age        +0.166(0.993),$p$=.87   -0.006(0.033),$p$=.85   +0.820(0.456),$p$=.07   -0.007(0.043),$p$=.86
        edu        -0.579(0.572),$p$=.31   +0.007(0.025),$p$=.78   -0.159(0.572),$p$=.78   -0.030(0.052),$p$=.56
        height     +0.224(0.262),$p$=.39   +0.007(0.011),$p$=.53   -0.252(0.231),$p$=.28   +0.011(0.024),$p$=.65


Table: Random effects on the measure pef, for the octo study.

name                             male                       female
-------  ----------------------------  ---------------------------
tau_00    +8329.506(1416.883),$p$=.00   +4215.375(488.817),$p$=.00
tau_11        +36.142(20.555),$p$=.08      +39.570(68.786),$p$=.56


# **radc** study



###  fev *vs* gait 



Table: Fixed effects for each predictor (as rows) on the measures [a] fev and [b] gait, for the radc study.

                          fev for males          gait for males         fev for females        gait for females
------  -------  ----------------------  ----------------------  ----------------------  ----------------------
int     age       -0.027(0.004),$p$=.00   -0.007(0.002),$p$=.00   -0.024(0.002),$p$=.00   -0.007(0.001),$p$=.00
        edu       +0.021(0.009),$p$=.02   +0.011(0.003),$p$=.00   +0.012(0.004),$p$=.00   +0.011(0.002),$p$=.00
        height    +1.637(0.451),$p$=.00   +0.137(0.153),$p$=.37   +1.625(0.216),$p$=.00   +0.231(0.087),$p$=.01
slope   age       +0.000(0.001),$p$=.71   -0.001(0.001),$p$=.15   +0.001(0.000),$p$=.05   -0.001(0.000),$p$=.00
        edu       +0.000(0.002),$p$=.87   -0.002(0.001),$p$=.11   +0.000(0.001),$p$=.92   -0.002(0.001),$p$=.01
        height    +0.109(0.128),$p$=.40   +0.000(0.057),$p$=.99   -0.068(0.041),$p$=.10   -0.013(0.031),$p$=.66


Table: Random effects on the measure fev, for the radc study.

name                       male                  female
-------  ----------------------  ----------------------
tau_00    +0.263(0.024),$p$=.00   +0.108(0.008),$p$=.00
tau_11    +0.002(0.001),$p$=.23   +0.000(0.001),$p$=.52


###  fev *vs* grip 



Table: Fixed effects for each predictor (as rows) on the measures [a] fev and [b] grip, for the radc study.

                          fev for males            grip for males         fev for females         grip for females
------  -------  ----------------------  ------------------------  ----------------------  -----------------------
int     age       -0.027(0.004),$p$=.00     -1.050(0.127),$p$=.00   -0.024(0.002),$p$=.00    -0.608(0.049),$p$=.00
        edu       +0.020(0.009),$p$=.02     +0.030(0.260),$p$=.91   +0.012(0.004),$p$=.00    +0.393(0.130),$p$=.00
        height    +1.670(0.451),$p$=.00   +80.607(11.316),$p$=.00   +1.629(0.216),$p$=.00   +38.991(4.195),$p$=.00
slope   age       +0.000(0.001),$p$=.79     -0.038(0.040),$p$=.33   +0.001(0.000),$p$=.07    -0.020(0.012),$p$=.09
        edu       +0.001(0.002),$p$=.78     +0.096(0.069),$p$=.16   +0.000(0.001),$p$=.94    -0.079(0.032),$p$=.01
        height    +0.113(0.132),$p$=.39     -2.884(3.590),$p$=.42   -0.067(0.041),$p$=.10    -1.252(1.162),$p$=.28


Table: Random effects on the measure fev, for the radc study.

name                       male                  female
-------  ----------------------  ----------------------
tau_00    +0.260(0.024),$p$=.00   +0.108(0.008),$p$=.00
tau_11    +0.001(0.001),$p$=.29   +0.000(0.001),$p$=.53


###  gait *vs* grip 



Table: Fixed effects for each predictor (as rows) on the measures [a] gait and [b] grip, for the radc study.

                         gait for males            grip for males        gait for females         grip for females
------  -------  ----------------------  ------------------------  ----------------------  -----------------------
int     age       -0.007(0.002),$p$=.00     -1.048(0.127),$p$=.00   -0.007(0.001),$p$=.00    -0.610(0.050),$p$=.00
        edu       +0.011(0.003),$p$=.00     +0.030(0.261),$p$=.91   +0.012(0.002),$p$=.00    +0.396(0.130),$p$=.00
        height    +0.148(0.155),$p$=.34   +80.707(11.313),$p$=.00   +0.229(0.087),$p$=.01   +39.137(4.196),$p$=.00
slope   age       -0.001(0.001),$p$=.36     -0.037(0.040),$p$=.35   -0.001(0.000),$p$=.00    -0.019(0.012),$p$=.12
        edu       -0.002(0.001),$p$=.14     +0.093(0.067),$p$=.16   -0.002(0.001),$p$=.01    -0.082(0.033),$p$=.01
        height    +0.046(0.054),$p$=.39     -2.611(3.578),$p$=.47   -0.013(0.030),$p$=.68    -1.216(1.185),$p$=.30


Table: Random effects on the measure gait, for the radc study.

name                       male                  female
-------  ----------------------  ----------------------
tau_00    +0.019(0.003),$p$=.00   +0.020(0.002),$p$=.00
tau_11    +0.000(0.000),$p$=.26   +0.001(0.000),$p$=.00

# Session Information
For the sake of documentation and reproducibility, the current report was rendered on a system using the following software.


```
Report rendered by Will at 2015-10-27, 21:15 -0500
```

```
R version 3.2.2 Patched (2015-10-11 r69514)
Platform: x86_64-w64-mingw32/x64 (64-bit)
Running under: Windows >= 8 x64 (build 9200)

locale:
[1] LC_COLLATE=English_United States.1252  LC_CTYPE=English_United States.1252    LC_MONETARY=English_United States.1252
[4] LC_NUMERIC=C                           LC_TIME=English_United States.1252    

attached base packages:
[1] stats     graphics  grDevices utils     datasets  methods   base     

other attached packages:
[1] magrittr_1.5  ggplot2_1.0.1 knitr_1.11   

loaded via a namespace (and not attached):
 [1] Rcpp_0.12.1      MASS_7.3-44      testit_0.4       munsell_0.4.2    colorspace_1.2-6 R6_2.1.1        
 [7] highr_0.5.1      stringr_1.0.0    plyr_1.8.3       dplyr_0.4.3      tools_3.2.2      parallel_3.2.2  
[13] grid_3.2.2       gtable_0.1.2     DBI_0.3.1        htmltools_0.2.6  lazyeval_0.1.10  yaml_2.1.13     
[19] digest_0.6.8     assertthat_0.1   tidyr_0.3.1      reshape2_1.4.1   formatR_1.2.1    evaluate_0.8    
[25] rmarkdown_0.8.1  stringi_1.0-1    scales_0.3.0     proto_0.3-10    
```
