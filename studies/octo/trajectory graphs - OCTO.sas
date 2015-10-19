


* Merging, creating STACKED & MV text file for Mplus;
DATA octostack; SET octostack;
	FILE "&filesave.\octostack_150902.dat";
	PUT 	Case PairID TwinID Wave time Zygosity Female Educyrs EduCcat SESgrp Resgrp Smoke 
			SESChild SESChOth  HlthLif CogPrev LonelyE
			Dead DeadAge YTDead tvdead dedtime CompAge CompAge1
			DemAge tvdem demtime YTDem DemEver TotDem DemType  
			dxAngina dxCHF dxMI dxStroke dxTIA dxHT dx225diab dx230diab dx235diab 
			dxdemAD dxdemVA dxdemPD dxdemPos
			Marital weight height SRhlth living SR2hlth SROhlth HlthPrv HlthTra Vision Hearing
	        CogPres AGames ACross ALiter AWrite AStudy AOther LonelyP FrTalk FrPart 
			LackCo Abandon NumFr NumPref SeeChGr PhoChGr SeeOthr PhoOthr NumClos NumDiff
			bmi pek gripp chr5tim padl iadl 
			digspf digspb prose block info synnum figure digsym psif
			mirnam mirrcl mirrcg mircor clock mmse mismmse filtmmse
            highBP sbp dbp MIyn angYN strokeYN broncYN emphYN lung diabYN p_cncr b_cncr cncr cogstat 
			demsyn demsev cesd miscesd filtcesd cesdm lsiz mislisz filtlsiz lsizm 
			loc misloc filtloc locm 
			hloc_I mhlocI fhlocI hlocIm  hloc_C mhlocC fhlocC hlocCm hloc_PO mhlocPO fhlocPO hlocPOm 
			epi_e miepie filepie epiem  epi_n miepin filepin epinm
            BPEVER DIABEVER HRTEVER STRKEVER CNCREVER comorbid;
RUN;

* Merging, creating MULTIVARIATE text file for Mplus;
DATA octomult; MERGE time octomult; BY Case; 
	FILE "&filesave.\octomult_150902.dat";
	PUT 	Case PairID TwinID Zygosity Female Educyrs EducCat SESgrp Resgrp Smoke
			SESChild SESChOth  HlthLif CogPrev LonelyE
			Dead DeadAge YTDead TotDem DemEver DemType DemAge YTDem
			dxAngina dxCHF dxMI dxStroke dxTIA dxHT dx225diab dx230diab dx235diab 
			dxdemAD dxdemVA dxdemPD dxdemPos
			time1 time2 time3 time4 time5 
		 	dedtime1 dedtime2 dedtime3 dedtime4 dedtime5 tvdead1 tvdead2 tvdead3 tvdead4 tvdead5 
		 	demtime1 demtime2 demtime3 demtime4 demtime5 tvdem1 tvdem2 tvdem3 tvdem4 tvdem5 
			CompAge1-CompAge5 Marital1-Marital5 weight1-weight5 height1-height5 bmi1-bmi5
			SRhlth1-SRhlth5 living1-living5 
			SR2hlth1-SR2hlth5 SROhlth1-SROhlth5 HlthPrv1-HlthPrv5 HlthTra1-HlthTra5  Vision1-Vision5 Hearing1-Hearing5
			CogPres1-CogPres5 AGames1-AGames5 ACross1-ACross5 
			ALiter1-ALiter5 AWrite1-AWrite5 AStudy1-AStudy5 AOther1-AOther5
			LonelyP1-LonelyP5 FrTalk1-FrTalk5 FrPart1-FrPart5
			LackCo1-LackCo5 Abandon1-Abandon5 NumFr1-NumFr5 NumPref1-NumPref5 SeeChGr1-SeeChGr5
			pek1-pek5 gripp1-gripp5 chr5tim1-chr5tim5 padl1-padl5 iadl1-iadl5 digspf1-digspf5 digspb1-digspb5
			prose1-prose5 block1-block5 info1-info5 synnum1-synnum5 figure1-figure5 digsym1-digsym5 psif1-psif5
			mirnam1-mirnam5 mirrcl1-mirrcl5 mirrcg1-mirrcg5 mircor1-mircor5 clock1-clock5
			mmse1-mmse5 mismmse1-mismmse5 filtmmse1-filtmmse5
			highBP1-highBP5 sbp1-sbp5 dbp1-dbp5 MIyn1-MIyn5 HTyn1-HTyn5 angYN1-angYN5 strokeYN1-strokeYN5 
			broncYN1-broncYN5 emphYN1-emphYN5 lung1-lung5 diabYN1-diabYN5
            p_cncr1-p_cncr5 b_cncr1-b_cncr5 cncr1-cncr5 cogstat1-cogstat5 demsyn1-demsyn5 demsev1-demsev5
		    cesd1-cesd5 miscesd1-miscesd5 filtcesd1-filtcesd5 cesdm1-cesdm5
			lsiz1-lsiz4 mislsiz1-mislsiz4 filtlsiz1-filtlsiz4 lsizm1-lsizm4
		    loc1-loc4 misloc1-misloc4 filtloc1-filtloc4 locm1-locm4
			hloc_I1-hloc_I4 mhlocI1-mhlocI4 fhlocI1-fhlocI4 hlocIm1-hlocIm4
			hloc_C1-hloc_C4 mhlocC1-mhlocC4 fhlocC1-fhlocC4 hlocCm1-hlocCm4
			hloc_PO1-hloc_PO4 mhlocPO1-mhlocPO4 fhlocPO1-fhlocPO4 hlocPOm1-hlocPOm4
		    epi_e1-epi_e4 miepie1-miepie4 filepie1-filepie4 epiem1-epiem4 
			epi_n1-epi_n4 miepin1-miepin4 filepin1-filepin4 epinm1-epinm4
			BPEVER DIABEVER HRTEVER STRKEVER CNCREVER comorbid;
RUN;
