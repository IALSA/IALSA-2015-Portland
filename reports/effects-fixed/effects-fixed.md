# Fixed Effects
Date: `r Sys.Date()`  

This report contains a searchable table, followed by publication-ready tables.

<!--  Set the working directory to the repository's base directory; this assumes the report is nested inside of two directories.-->


<!-- Set the report-wide options, and point to the external code file. -->


<!-- Load the sources.  Suppress the output when loading sources. --> 


<!-- Load 'sourced' R files.  Suppress the output when loading packages. --> 


<!-- Load any global functions and variables declared in the R file.  Suppress the output. --> 


<!-- Declare any global functions specific to a Rmd output.  Suppress the output. --> 


<!-- Load the datasets.   -->


<!-- Tweak the datasets.   -->


# Summary

### Notes 
1. All available models are contained in the dynamic table, while only the 'aehplus' models are shown in the static tables.

### Unanswered Questions

1. How should we handle entries that are entirely missing?
1. How should we handle entries containing null/NA results?

### Answered Questions




# Dynamic Table

<!--html_preserve--><div id="htmlwidget-1471" style="width:100%;height:auto;" class="datatables html-widget"></div>
<script type="application/json" data-for="htmlwidget-1471">{"x":{"data":[["1","2","3","4","5","6","7","8","9","10","11","12","13","14","15","16","17","18","19","20","21","22","23","24","25","26","27","28","29","30","31","32","33","34","35","36","37","38","39","40","41","42","43","44","45","46","47","48","49","50","51","52","53","54","55","56","57","58","59","60","61","62","63","64","65","66","67","68","69","70","71","72","73","74","75","76","77","78","79","80","81","82","83","84","85","86","87","88","89","90","91","92","93","94","95","96","97","98","99","100","101","102","103","104","105","106","107","108","109","110","111","112","113","114","115","116","117","118","119","120","121","122","123","124","125","126","127","128","129","130","131","132","133","134","135","136","137","138","139","140","141","142","143","144","145","146","147","148","149","150","151","152","153","154","155","156","157","158","159","160","161","162","163","164","165","166","167","168","169","170","171","172","173","174","175","176","177","178","179","180","181","182","183","184","185","186","187","188","189","190","191","192","193","194","195","196","197","198","199","200","201","202","203","204","205","206","207","208","209","210","211","212","213","214","215","216","217","218","219","220","221","222","223","224","225","226","227","228","229","230","231","232","233","234","235","236","237","238","239","240","241","242","243","244","245","246","247","248","249","250","251","252","253","254","255","256","257","258","259","260","261","262","263","264","265","266","267","268","269","270","271","272","273","274","275","276","277","278","279","280","281","282","283","284","285","286","287","288","289","290","291","292","293","294","295","296","297","298","299","300","301","302","303","304","305","306","307","308","309","310","311","312","313","314","315","316","317","318","319","320","321","322","323","324","325","326","327","328","329","330","331","332","333","334","335","336","337","338","339","340","341","342","343","344","345","346","347","348","349","350","351","352","353","354","355","356","357","358","359","360","361","362","363","364","365","366","367","368","369","370","371","372","373","374","375","376","377","378","379","380","381","382","383","384","385","386","387","388","389","390","391","392","393","394","395","396","397","398","399","400","401","402","403","404","405","406","407","408","409","410","411","412","413","414","415","416","417","418","419","420","421","422","423","424","425","426","427","428","429","430","431","432","433","434","435","436","437","438","439","440","441","442","443","444","445","446","447","448","449","450","451","452","453","454","455","456","457","458","459","460","461","462","463","464","465","466","467","468","469","470","471","472","473","474","475","476","477","478","479","480","481","482","483","484","485","486","487","488","489","490","491","492","493","494","495","496","497","498","499","500","501","502","503","504","505","506","507","508","509","510","511","512","513","514","515","516","517","518","519","520","521","522","523","524","525","526","527","528","529","530","531","532","533","534","535","536","537","538","539","540","541","542","543","544","545","546","547","548","549","550","551","552","553","554","555","556","557","558","559","560","561","562","563","564","565","566","567","568","569","570","571","572","573","574","575","576","577","578","579","580","581","582","583","584","585","586","587","588","589","590","591","592","593","594","595","596","597","598","599","600","601","602","603","604","605","606","607","608","609","610","611","612","613","614","615","616","617","618","619","620","621","622","623","624","625","626","627","628","629","630","631","632","633","634","635","636","637","638","639","640","641","642","643","644","645","646","647","648","649","650","651","652","653","654","655","656","657","658","659","660","661","662","663","664","665","666","667","668","669","670","671","672","673","674","675","676","677","678","679","680","681","682","683","684","685","686","687","688","689","690","691","692","693","694","695","696","697","698","699","700","701","702","703","704","705","706","707","708","709","710","711","712","713","714","715","716","717","718","719","720","721","722","723","724","725","726","727","728","729","730","731","732","733","734","735","736","737","738","739","740","741","742","743","744","745","746","747","748","749","750","751","752","753","754","755","756","757","758","759","760","761","762","763","764","765","766","767","768","769","770","771","772","773","774","775","776","777","778","779","780","781","782","783","784","785","786","787","788","789","790","791","792","793","794","795","796","797","798","799","800","801","802","803","804","805","806","807","808","809","810","811","812","813","814","815","816","817","818","819","820","821","822","823","824","825","826","827","828","829","830","831","832","833","834","835","836","837","838","839","840","841","842","843","844","845","846","847","848","849","850","851","852","853","854","855","856","857","858","859","860","861","862","863","864","865","866","867","868","869","870","871","872","873","874","875","876","877","878","879","880","881","882","883","884","885","886","887","888","889","890","891","892","893","894","895","896","897","898","899","900","901","902","903","904","905","906","907","908","909","910","911","912","913","914","915","916","917","918","919","920","921","922","923","924","925","926","927","928","929","930","931","932","933","934","935","936","937","938","939","940","941","942","943","944","945","946","947","948","949","950","951","952","953","954","955","956","957","958","959","960","961","962","963","964","965","966","967","968","969","970","971","972","973","974","975","976","977","978","979","980","981","982","983","984","985","986","987","988","989","990","991","992","993","994","995","996","997","998","999","1000","1001","1002","1003","1004","1005","1006","1007","1008","1009","1010","1011","1012","1013","1014","1015","1016","1017","1018","1019","1020","1021","1022","1023","1024","1025","1026","1027","1028","1029","1030","1031","1032","1033","1034","1035","1036","1037","1038","1039","1040","1041","1042","1043","1044","1045","1046","1047","1048","1049","1050","1051","1052","1053","1054","1055","1056","1057","1058","1059","1060","1061","1062","1063","1064","1065","1066","1067","1068","1069","1070","1071","1072","1073","1074","1075","1076","1077","1078","1079","1080","1081","1082","1083","1084","1085","1086","1087","1088","1089","1090","1091","1092","1093","1094","1095","1096","1097","1098","1099","1100","1101","1102","1103","1104","1105","1106","1107","1108","1109","1110","1111","1112","1113","1114","1115","1116","1117","1118","1119","1120","1121","1122","1123","1124","1125","1126","1127","1128","1129","1130","1131","1132","1133","1134","1135","1136","1137","1138","1139","1140"],["eas","eas","eas","eas","eas","eas","eas","eas","eas","eas","eas","eas","eas","eas","eas","eas","eas","eas","eas","eas","eas","eas","eas","eas","eas","eas","eas","eas","eas","eas","eas","eas","eas","eas","eas","eas","eas","eas","eas","eas","eas","eas","eas","eas","eas","eas","eas","eas","eas","eas","eas","eas","eas","eas","eas","eas","eas","eas","eas","eas","eas","eas","eas","eas","eas","eas","eas","eas","eas","eas","eas","eas","eas","eas","eas","eas","eas","eas","eas","eas","eas","eas","eas","eas","eas","eas","eas","eas","eas","eas","eas","eas","eas","eas","eas","eas","eas","eas","eas","eas","eas","eas","eas","eas","eas","eas","eas","eas","eas","eas","eas","eas","eas","eas","eas","eas","eas","eas","eas","eas","eas","eas","eas","eas","eas","eas","eas","eas","eas","eas","eas","eas","eas","eas","eas","eas","eas","eas","eas","eas","eas","eas","eas","eas","eas","eas","eas","eas","eas","eas","eas","eas","eas","eas","eas","eas","eas","eas","eas","eas","eas","eas","eas","eas","eas","eas","eas","eas","eas","eas","eas","eas","eas","eas","eas","eas","eas","eas","eas","eas","eas","eas","eas","eas","eas","eas","eas","eas","eas","eas","eas","eas","eas","eas","eas","eas","eas","eas","eas","eas","eas","eas","eas","eas","eas","eas","eas","eas","eas","eas","eas","eas","eas","eas","eas","eas","eas","eas","eas","eas","eas","eas","eas","eas","eas","eas","eas","eas","eas","eas","eas","eas","eas","eas","eas","eas","eas","eas","eas","eas","eas","eas","eas","eas","eas","eas","eas","eas","eas","eas","eas","eas","eas","eas","eas","elsa","elsa","elsa","elsa","elsa","elsa","elsa","elsa","elsa","elsa","elsa","elsa","elsa","elsa","elsa","elsa","elsa","elsa","hrs","hrs","hrs","hrs","hrs","hrs","hrs","hrs","hrs","hrs","hrs","hrs","hrs","hrs","hrs","hrs","hrs","hrs","hrs","hrs","hrs","hrs","hrs","hrs","hrs","hrs","hrs","hrs","hrs","hrs","hrs","hrs","hrs","hrs","hrs","hrs","hrs","hrs","hrs","hrs","hrs","hrs","hrs","hrs","hrs","hrs","hrs","hrs","hrs","hrs","hrs","hrs","hrs","hrs","hrs","hrs","hrs","hrs","hrs","hrs","hrs","hrs","hrs","hrs","hrs","hrs","hrs","hrs","hrs","hrs","hrs","hrs","ilse","ilse","ilse","ilse","ilse","ilse","ilse","ilse","ilse","ilse","ilse","ilse","ilse","ilse","ilse","ilse","ilse","ilse","ilse","ilse","ilse","ilse","ilse","ilse","ilse","ilse","ilse","ilse","ilse","ilse","ilse","ilse","ilse","ilse","ilse","ilse","ilse","ilse","ilse","lasa","lasa","lasa","lasa","lasa","lasa","lasa","lasa","lasa","lasa","lasa","lasa","lasa","lasa","lasa","lasa","lasa","lasa","map","map","map","map","map","map","map","map","map","map","map","map","map","map","map","map","map","map","map","map","map","map","map","map","map","map","map","map","map","map","map","map","map","map","map","map","map","map","map","map","map","map","map","map","map","map","map","map","map","map","map","map","map","map","map","map","map","map","map","map","map","map","map","map","map","map","map","map","map","map","map","map","map","map","map","map","map","map","map","map","map","map","map","map","map","map","map","map","map","map","map","map","map","map","map","map","map","map","map","map","map","map","map","map","map","map","map","map","map","map","map","map","map","map","map","map","map","map","map","map","map","map","map","map","map","map","map","map","map","map","map","map","map","map","map","map","map","map","map","map","map","map","map","map","map","map","map","map","map","map","map","map","map","map","map","map","map","map","map","map","map","map","map","map","map","map","map","map","map","map","map","map","map","map","map","map","map","map","map","map","map","map","map","map","map","map","map","map","map","map","map","map","map","map","map","map","map","map","map","map","map","map","map","map","map","map","map","map","map","map","map","map","map","map","map","map","map","map","map","map","map","map","map","map","map","map","map","map","map","map","map","map","map","map","map","map","map","map","map","map","map","map","map","map","map","map","map","map","map","map","map","map","map","map","map","map","map","map","map","map","map","map","map","map","map","map","map","map","map","map","map","map","map","map","map","map","map","map","map","map","map","map","map","map","map","map","map","map","map","map","map","map","map","map","map","map","map","map","map","map","map","map","map","map","map","map","map","map","map","map","map","map","map","map","map","map","map","map","map","map","map","map","map","map","map","map","map","map","map","map","map","map","map","map","map","map","map","map","map","map","map","map","map","map","map","map","map","map","map","map","map","map","map","map","map","map","map","map","map","map","map","map","map","map","map","map","map","map","map","map","map","map","map","map","map","map","map","map","map","map","map","map","map","map","map","map","map","map","map","map","map","map","map","map","map","map","map","map","map","map","map","map","map","map","map","map","map","map","map","map","map","map","map","map","map","map","map","map","map","map","map","map","map","map","map","map","map","map","map","map","map","map","map","map","map","map","map","map","map","map","map","map","map","map","map","map","map","nuage","nuage","nuage","nuage","nuage","nuage","nuage","nuage","nuage","nuage","nuage","nuage","octo","octo","octo","octo","octo","octo","octo","octo","octo","octo","octo","octo","octo","octo","octo","octo","octo","octo","octo","octo","octo","octo","octo","octo","octo","octo","octo","octo","octo","octo","octo","octo","octo","octo","octo","octo","octo","octo","octo","octo","octo","octo","octo","octo","octo","octo","octo","octo","octo","octo","octo","octo","octo","octo","octo","octo","octo","octo","octo","octo","octo","octo","octo","octo","octo","octo","octo","octo","octo","octo","octo","octo","octo","octo","octo","octo","octo","octo","octo","octo","octo","octo","octo","octo","octo","octo","octo","octo","octo","octo","octo","octo","octo","octo","octo","octo","octo","octo","octo","octo","octo","octo","octo","octo","octo","octo","octo","octo","octo","octo","octo","octo","octo","octo","octo","octo","octo","octo","octo","octo","octo","satsa","satsa","satsa","satsa","satsa","satsa","satsa","satsa","satsa","satsa","satsa","satsa","satsa","satsa","satsa","satsa","satsa","satsa","satsa","satsa","satsa","satsa","satsa","satsa","satsa","satsa","satsa","satsa","satsa","satsa","satsa","satsa","satsa","satsa","satsa","satsa","satsa","satsa","satsa","satsa","satsa","satsa","satsa","satsa","satsa","satsa","satsa","satsa","satsa","satsa","satsa","satsa","satsa","satsa","satsa","satsa","satsa","satsa","satsa","satsa","satsa","satsa","satsa","satsa","satsa","satsa","satsa","satsa","satsa","satsa","satsa","satsa","satsa","satsa","satsa","satsa","satsa","satsa","satsa","satsa","satsa","satsa","satsa","satsa","satsa","satsa","satsa","satsa","satsa","satsa","satsa","satsa","satsa","satsa","satsa","satsa","satsa","satsa","satsa","satsa","satsa","satsa","satsa","satsa","satsa","satsa","satsa","satsa","satsa","satsa","satsa","satsa","satsa","satsa","satsa","satsa","satsa","satsa","satsa","satsa","satsa","satsa","satsa","satsa","satsa","satsa","satsa","satsa","satsa","satsa","satsa","satsa","satsa","satsa","satsa","satsa","satsa","satsa","satsa","satsa","satsa","satsa","satsa","satsa","satsa","satsa","satsa","satsa","satsa","satsa","satsa","satsa","satsa","satsa","satsa","satsa","satsa","satsa"],["gait","gait","gait","gait","gait","gait","gait","gait","gait","gait","gait","gait","gait","gait","gait","gait","gait","gait","gait","gait","gait","gait","gait","gait","gait","gait","gait","gait","gait","gait","gait","gait","gait","gait","gait","gait","gait","gait","gait","gait","gait","gait","gait","gait","gait","gait","gait","gait","gait","gait","gait","gait","gait","gait","gait","gait","gait","gait","gait","gait","gait","gait","gait","gait","gait","gait","gait","gait","gait","gait","gait","gait","gait","gait","gait","gait","gait","gait","gait","gait","gait","gait","gait","gait","gait","gait","gait","gait","gait","gait","gait","gait","gait","gait","gait","gait","gait","gait","gait","gait","gait","gait","gait","gait","gait","gait","gait","gait","gait","gait","grip","grip","grip","grip","grip","grip","grip","grip","grip","grip","grip","grip","grip","grip","grip","grip","grip","grip","grip","grip","grip","grip","grip","grip","grip","grip","grip","grip","grip","grip","grip","grip","grip","grip","grip","grip","grip","grip","grip","grip","grip","grip","grip","grip","grip","grip","grip","grip","grip","grip","grip","grip","grip","grip","grip","grip","grip","grip","grip","grip","grip","grip","grip","grip","grip","grip","grip","grip","grip","grip","grip","grip","grip","grip","grip","grip","grip","grip","grip","grip","grip","grip","grip","grip","grip","grip","grip","grip","grip","grip","grip","grip","grip","grip","grip","grip","grip","grip","grip","grip","grip","grip","grip","grip","grip","grip","grip","grip","grip","pef","pef","pef","pef","pef","pef","pef","pef","pef","pef","pef","pef","pef","pef","pef","pef","pef","pef","pef","pef","pef","pef","pef","pef","pef","pef","pef","pef","pef","pef","pef","pef","pef","pef","pef","pef","fev","fev","fev","fev","fev100","fev100","fev100","fev100","gait","gait","gait","gait","gait","gait","grip","grip","grip","grip","gait","gait","gait","gait","gait","gait","gait","gait","gait","gait","gait","gait","gait","gait","gait","gait","gait","gait","gait","gait","gait","gait","gait","gait","grip","grip","grip","grip","grip","grip","grip","grip","grip","grip","grip","grip","grip","grip","grip","grip","grip","grip","grip","grip","grip","grip","grip","grip","pef","pef","pef","pef","pef","pef","pef","pef","pef","pef","pef","pef","pef","pef","pef","pef","pef","pef","pef","pef","pef","pef","pef","pef","grip","grip","grip","grip","grip","grip","grip","grip","nophys","nophys","tug","tug","tug","tug","tug","tug","tug","tug","tug","tug","tug","tug","tug","tug","tug","tug","tug","tug","tug","tug","tug","tug","tug","tug","tug","tug","tug","tug","tug","gait","gait","gait","gait","gait","gait","grip","grip","grip","grip","grip","grip","pef","pef","pef","pef","pef","pef","fev","fev","fev","fev","fev","fev","fev","fev","fev","fev","fev","fev","fev","fev","fev","fev","fev","fev","fev","fev","fev","fev","fev","fev","fev","fev","fev","fev","fev","fev","fev","fev","fev","fev","fev","fev","fev","fev","fev","fev","fev","fev","fev","fev","fev","fev","fev","fev","fev","fev","fev","fev","fev","fev","fev","fev","fev","fev","fev","fev","fev","fev","fev","fev","fev","fev","fev","fev","fev","fev","fev","fev","fev","fev","fev","fev","fev","fev","fev","fev","fev","fev","fev","fev","fev","fev","fev","fev","fev","fev","fev","fev","fev","fev","fev","fev","fev","fev","fev","fev","fev","fev","fev","fev","fev","fev","fev","fev","fev","fev","fev","fev","fev","fev","fev","fev","fev","fev","fev","fev","fev","fev","fev","fev","fev","fev","fev","fev","fev","fev","fev","fev","fev","fev","fev","fev","fev","fev","fev","fev","fev","fev","fev","fev","fev","fev","fev","fev","fev","fev","grip","grip","grip","grip","grip","grip","grip","grip","grip","grip","grip","grip","grip","grip","grip","grip","grip","grip","grip","grip","grip","grip","grip","grip","grip","grip","grip","grip","grip","grip","grip","grip","grip","grip","grip","grip","grip","grip","grip","grip","grip","grip","grip","grip","grip","grip","grip","grip","grip","grip","grip","grip","grip","grip","grip","grip","grip","grip","grip","grip","grip","grip","grip","grip","grip","grip","grip","grip","grip","grip","grip","grip","grip","grip","grip","grip","grip","grip","grip","grip","grip","grip","grip","grip","grip","grip","grip","grip","grip","grip","grip","grip","grip","grip","grip","grip","grip","grip","grip","grip","grip","grip","grip","grip","grip","grip","grip","grip","grip","grip","grip","grip","grip","grip","grip","grip","grip","grip","grip","grip","grip","grip","grip","grip","grip","grip","grip","grip","grip","grip","grip","grip","grip","grip","grip","grip","grip","grip","grip","grip","grip","grip","grip","grip","grip","grip","grip","grip","nophys","nophys","nophys","nophys","nophys","nophys","nophys","nophys","nophys","nophys","nophys","nophys","nophys","nophys","nophys","nophys","nophys","nophys","nophys","nophys","nophys","nophys","nophys","nophys","nophys","nophys","nophys","nophys","nophys","nophys","nophys","nophys","nophys","nophys","nophys","nophys","nophys","nophys","nophys","nophys","nophys","nophys","nophys","nophys","nophys","nophys","nophys","nophys","nophys","nophys","nophys","nophys","nophys","nophys","nophys","nophys","nophys","nophys","nophys","nophys","nophys","nophys","nophys","nophys","nophys","nophys","nophys","nophys","nophys","nophys","nophys","nophys","nophys","nophys","nophys","nophys","nophys","nophys","nophys","nophys","nophys","nophys","nophys","nophys","nophys","nophys","nophys","nophys","nophys","nophys","nophys","nophys","nophys","nophys","nophys","nophys","nophys","nophys","nophys","nophys","nophys","nophys","nophys","nophys","nophys","nophys","nophys","nophys","nophys","nophys","nophys","nophys","nophys","nophys","nophys","nophys","nophys","nophys","nophys","nophys","nophys","nophys","nophys","nophys","nophys","nophys","nophys","nophys","nophys","nophys","nophys","nophys","nophys","nophys","nophys","nophys","nophys","nophys","nophys","nophys","nophys","nophys","nophys","nophys","nophys","nophys","nophys","nophys","nophys","grip","grip","grip","grip","grip","grip","nophys","nophys","nophys","nophys","nophys","nophys","gait","gait","gait","gait","gait","gait","gait","gait","gait","grip","grip","grip","grip","grip","grip","grip","grip","grip","grip","grip","grip","grip","grip","grip","grip","grip","grip","grip","grip","grip","grip","grip","grip","grip","grip","grip","grip","grip","grip","grip","grip","grip","grip","grip","grip","grip","grip","grip","grip","grip","grip","grip","grip","grip","grip","grip","grip","grip","grip","grip","grip","grip","grip","grip","grip","grip","grip","pef","pef","pef","pef","pef","pef","pef","pef","pef","pef","pef","pef","pef","pef","pef","pef","pef","pef","pef","pef","pef","pef","pef","pef","pef","pef","pef","pef","pef","pef","pef","pef","pef","pef","pef","pef","pef","pef","pef","pef","pef","pef","pef","pef","pef","pef","pef","pef","pef","pef","pef","pef","pef","pef","fev","fev","fev","fev","fev","fev","fev","fev","fev","fev","fev","fev","fev","fev","fev","fev","fev","fev","fev","fev","fev","fev","fev","fev","fev","fev","fev","fev","fev","fev","fev","fev","fev","fev","fev","fev","fev","fev","fev","fev","fev","fev","fev","fev","fev","fev","fev","fev","fev","fev","fev","fev","fev","fev","fev","fev","fev","fev","fev","fev","fev","fev","fev","fev","fev","fev","fev","fev","fev","fev","fev","fev","fev","fev","fev","fev","fev","fev","fev","fev","fev","fev","fev","fev","fev","fev","fev","fev","fev","fev","fev","fev","fev","fev","fev","fev","fev","fev","fev","fev","fev","fev","fev","fev","fev","fev","grip","grip","grip","grip","grip","grip","grip","grip","grip","grip","grip","grip","grip","grip","grip","grip","grip","grip","grip","grip","grip","grip","grip","grip","grip","grip","grip","grip","grip","grip","grip","grip","grip","grip","grip","grip","grip","grip","grip","grip","grip","grip","grip","grip","grip","grip","grip","grip","grip","grip","grip","grip"],["block","block","block","block","block","block","block","block","block","block","bnt","bnt","bnt","bnt","bnt","bnt","bnt","bnt","bnt","bnt","categories","categories","categories","categories","categories","categories","categories","categories","categories","categories","digit_tot","digit_tot","digit_tot","digit_tot","digit_tot","digit_tot","digit_tot","digit_tot","digit_tot","digit_tot","fas","fas","fas","fas","fas","fas","fas","fas","fas","fas","information","information","information","information","information","information","information","information","information","information","logic_tot","logic_tot","logic_tot","logic_tot","logic_tot","logic_tot","logic_tot","logic_tot","logic_tot","logic_tot","mmms","mmms","mmms","mmms","mmms","mmms","mmms","mmms","mmms","mmms","symbol","symbol","symbol","symbol","symbol","symbol","symbol","symbol","symbol","symbol","trailsb","trailsb","trailsb","trailsb","trailsb","trailsb","trailsb","trailsb","trailsb","trailsb","waisvocab","waisvocab","waisvocab","waisvocab","waisvocab","waisvocab","waisvocab","waisvocab","waisvocab","waisvocab","block","block","block","block","block","block","block","block","block","block","bnt","bnt","bnt","bnt","bnt","bnt","bnt","bnt","bnt","bnt","categories","categories","categories","categories","categories","categories","categories","categories","categories","categories","digit_tot","digit_tot","digit_tot","digit_tot","digit_tot","digit_tot","digit_tot","digit_tot","digit_tot","digit_tot","fas","fas","fas","fas","fas","fas","fas","fas","fas","fas","information","information","information","information","information","information","information","information","information","information","logic_tot","logic_tot","logic_tot","logic_tot","logic_tot","logic_tot","logic_tot","logic_tot","logic_tot","mmms","mmms","mmms","mmms","mmms","mmms","mmms","mmms","mmms","mmms","symbol","symbol","symbol","symbol","symbol","symbol","symbol","symbol","symbol","symbol","trailsb","trailsb","trailsb","trailsb","trailsb","trailsb","trailsb","trailsb","trailsb","trailsb","waisvocab","waisvocab","waisvocab","waisvocab","waisvocab","waisvocab","waisvocab","waisvocab","waisvocab","waisvocab","block","block","block","block","block","block","block","digit_tot","digit_tot","digit_tot","digit_tot","digit_tot","digit_tot","digit_tot","digit_tot","digit_tot","fas","symbol","symbol","symbol","symbol","symbol","symbol","symbol","symbol","symbol","symbol","trailsb","trailsb","trailsb","trailsb","trailsb","trailsb","trailsb","trailsb","trailsb","word_de","word_de","word_im","word_im","word_de","word_de","word_im","word_im","fluency","fluency","word_de","word_de","word_im","word_im","word_de","word_de","word_im","word_im","serial7","serial7","serial7","serial7","serial7","serial7","tics","tics","tics","tics","tics","tics","word_de","word_de","word_de","word_de","word_de","word_de","word_im","word_im","word_im","word_im","word_im","word_im","serial7","serial7","serial7","serial7","serial7","serial7","tics","tics","tics","tics","tics","tics","word_de","word_de","word_de","word_de","word_de","word_de","word_im","word_im","word_im","word_im","word_im","word_im","serial7","serial7","serial7","serial7","serial7","serial7","tics","tics","tics","tics","tics","tics","word_de","word_de","word_de","word_de","word_de","word_de","word_im","word_im","word_im","word_im","word_im","word_im","fluency","fluency","piccomp","piccomp","symbol","symbol","waisgeneral","waisgeneral","block","block","block","block","block","block","block","block","fluency","fluency","fluency","fluency","fluency","piccomp","piccomp","piccomp","piccomp","piccomp","piccomp","symbol","symbol","symbol","symbol","symbol","symbol","waisgeneral","waisgeneral","waisgeneral","waisgeneral","waisgeneral","waisgeneral","letter","letter","raven","raven","word_im","word_im","letter","letter","raven","raven","word_im","word_im","letter","letter","raven","raven","word_im","word_im","bnt","bnt","bnt","bnt","bnt","bnt","bnt","bnt","bstory_de","bstory_de","bstory_de","bstory_de","bstory_de","bstory_de","bstory_de","bstory_de","bstory_im","bstory_im","bstory_im","bstory_im","bstory_im","bstory_im","bstory_im","bstory_im","categories","categories","categories","categories","categories","categories","categories","categories","digit_b","digit_b","digit_b","digit_b","digit_b","digit_b","digit_b","digit_b","digit_f","digit_f","digit_f","digit_f","digit_f","digit_f","digit_f","digit_f","digit_o","digit_o","digit_o","digit_o","digit_o","digit_o","digit_o","digit_o","ideas","ideas","ideas","ideas","ideas","ideas","ideas","ideas","line","line","line","line","line","line","line","line","logic_de","logic_de","logic_de","logic_de","logic_de","logic_de","logic_de","logic_de","logic_im","logic_im","logic_im","logic_im","logic_im","logic_im","logic_im","matrices","matrices","matrices","matrices","matrices","matrices","matrices","matrices","mmms","mmms","mmms","mmms","mmms","mmms","mmms","nart","nart","nart","nart","nart","nart","nart","nart","num_comp","num_comp","num_comp","num_comp","num_comp","num_comp","num_comp","num_comp","symbol","symbol","symbol","symbol","symbol","symbol","symbol","symbol","word_de","word_de","word_de","word_de","word_de","word_de","word_de","word_de","word_im","word_im","word_im","word_im","word_im","word_im","word_im","word_im","word_rec","word_rec","word_rec","word_rec","word_rec","word_rec","word_rec","word_rec","bnt","bnt","bnt","bnt","bnt","bnt","bnt","bstory_de","bstory_de","bstory_de","bstory_de","bstory_de","bstory_de","bstory_de","bstory_de","bstory_im","bstory_im","bstory_im","bstory_im","bstory_im","bstory_im","bstory_im","bstory_im","categories","categories","categories","categories","categories","categories","categories","categories","digit_b","digit_b","digit_b","digit_b","digit_b","digit_b","digit_b","digit_b","digit_f","digit_f","digit_f","digit_f","digit_f","digit_f","digit_f","digit_f","digit_o","digit_o","digit_o","digit_o","digit_o","digit_o","digit_o","digit_o","ideas","ideas","ideas","ideas","ideas","ideas","ideas","ideas","line","line","line","line","line","line","line","line","logic_de","logic_de","logic_de","logic_de","logic_de","logic_de","logic_de","logic_de","logic_im","logic_im","logic_im","logic_im","logic_im","logic_im","logic_im","logic_im","matrices","matrices","matrices","matrices","matrices","matrices","matrices","matrices","mmms","mmms","mmms","mmms","mmms","mmms","mmms","mmms","nart","nart","nart","nart","nart","nart","nart","num_comp","num_comp","num_comp","num_comp","num_comp","num_comp","num_comp","symbol","symbol","symbol","symbol","symbol","symbol","symbol","symbol","word_de","word_de","word_de","word_de","word_de","word_de","word_de","word_de","word_im","word_im","word_im","word_im","word_im","word_im","word_im","word_im","word_rec","word_rec","word_rec","word_rec","word_rec","word_rec","word_rec","bnt","bnt","bnt","bnt","bnt","bnt","bnt","bnt","bstory_de","bstory_de","bstory_de","bstory_de","bstory_de","bstory_de","bstory_de","bstory_de","bstory_im","bstory_im","bstory_im","bstory_im","bstory_im","bstory_im","bstory_im","bstory_im","categories","categories","categories","categories","categories","categories","categories","categories","digit_b","digit_b","digit_b","digit_b","digit_b","digit_b","digit_b","digit_b","digit_f","digit_f","digit_f","digit_f","digit_f","digit_f","digit_f","digit_f","digit_o","digit_o","digit_o","digit_o","digit_o","digit_o","digit_o","digit_o","ideas","ideas","ideas","ideas","ideas","ideas","ideas","ideas","line","line","line","line","line","line","line","line","logic_de","logic_de","logic_de","logic_de","logic_de","logic_de","logic_de","logic_de","logic_im","logic_im","logic_im","logic_im","logic_im","logic_im","logic_im","logic_im","matrices","matrices","matrices","matrices","matrices","matrices","matrices","matrices","mmms","mmms","mmms","mmms","mmms","mmms","mmms","mmms","nart","nart","nart","nart","nart","nart","nart","nart","num_comp","num_comp","num_comp","num_comp","num_comp","num_comp","num_comp","num_comp","symbol","symbol","symbol","symbol","symbol","symbol","symbol","symbol","word_de","word_de","word_de","word_de","word_de","word_de","word_de","word_de","word_im","word_im","word_im","word_im","word_im","word_im","word_im","word_im","word_rec","word_rec","word_rec","word_rec","word_rec","mmms","mmms","mmms","mmms","mmms","mmms","mmms","mmms","mmms","mmms","mmms","mmms","block","block","digit_b","digit_b","digit_f","digit_f","prose_im","symbol","symbol","block","block","block","block","block","block","digit_b","digit_b","digit_b","digit_b","digit_b","digit_b","digit_f","digit_f","digit_f","digit_f","digit_f","digit_f","fig_logic","fig_logic","fig_logic","fig_logic","fig_logic","fig_logic","information","information","information","information","mir","mir","mir","mir","mir","mir","mmms","mmms","mmms","mmms","prose_im","prose_im","prose_im","prose_im","prose_im","prose_im","psif","psif","psif","psif","symbol","symbol","symbol","symbol","symbol","symbol","synonyms","synonyms","synonyms","synonyms","block","block","block","block","block","block","digit_b","digit_b","digit_b","digit_b","digit_b","digit_b","digit_f","digit_f","digit_f","digit_f","digit_f","digit_f","fig_logic","fig_logic","fig_logic","fig_logic","information","information","information","information","mir","mir","mir","mir","mmms","mmms","mmms","mmms","prose_im","prose_im","prose_im","prose_im","prose_im","prose_im","psif","psif","psif","psif","symbol","symbol","symbol","symbol","symbol","symbol","synonyms","synonyms","synonyms","synonyms","analogies","analogies","analogies","analogies","analogies","analogies","analogies","analogies","analogies","analogies","block","block","block","block","block","block","block","block","block","block","digit_b","digit_b","digit_b","digit_b","digit_b","digit_b","digit_b","digit_b","digit_b","digit_b","digit_f","digit_f","digit_f","digit_f","digit_f","digit_f","digit_f","digit_f","digit_f","digit_f","fig_id","fig_id","fig_id","fig_id","fig_id","fig_id","fig_mem","fig_mem","fig_mem","fig_mem","fig_mem","fig_mem","fig_mem","fig_mem","fig_mem","fig_mem","information","information","information","information","information","information","information","information","information","information","mmms","mmms","mmms","mmms","mmms","mmms","mmms","mmms","mmms","mmms","rotate","rotate","rotate","rotate","rotate","rotate","rotate","rotate","rotate","rotate","symbol","symbol","symbol","symbol","symbol","symbol","symbol","symbol","symbol","symbol","synonyms","synonyms","synonyms","synonyms","synonyms","synonyms","synonyms","synonyms","synonyms","synonyms","analogies","analogies","analogies","analogies","analogies","analogies","analogies","analogies","block","block","digit_b","digit_b","digit_f","digit_f","fig_id","fig_id","fig_id","fig_id","fig_id","fig_id","information","information","information","information","information","information","information","information","mmms","mmms","mmms","mmms","mmms","mmms","mmms","mmms","symbol","symbol","symbol","symbol","symbol","symbol","symbol","symbol","synonyms","synonyms","synonyms","synonyms","synonyms","synonyms","synonyms","synonyms"],["female","female","female","female","female","male","male","male","male","male","female","female","female","female","female","male","male","male","male","male","female","female","female","female","female","male","male","male","male","male","female","female","female","female","female","male","male","male","male","male","female","female","female","female","female","male","male","male","male","male","female","female","female","female","female","male","male","male","male","male","female","female","female","female","female","male","male","male","male","male","female","female","female","female","female","male","male","male","male","male","female","female","female","female","female","male","male","male","male","male","female","female","female","female","female","male","male","male","male","male","female","female","female","female","female","male","male","male","male","male","female","female","female","female","female","male","male","male","male","male","female","female","female","female","female","male","male","male","male","male","female","female","female","female","female","male","male","male","male","male","female","female","female","female","female","male","male","male","male","male","female","female","female","female","female","male","male","male","male","male","female","female","female","female","female","male","male","male","male","male","female","female","female","female","female","male","male","male","male","female","female","female","female","female","male","male","male","male","male","female","female","female","female","female","male","male","male","male","male","female","female","female","female","female","male","male","male","male","male","female","female","female","female","female","male","male","male","male","male","female","female","female","female","male","male","male","female","female","female","female","male","male","male","male","male","male","female","female","female","female","female","male","male","male","male","male","female","female","female","female","female","male","male","male","male","female","male","female","male","female","male","female","male","female","male","female","male","female","male","female","male","female","male","female","female","female","male","male","male","female","female","female","male","male","male","female","female","female","male","male","male","female","female","female","male","male","male","female","female","female","male","male","male","female","female","female","male","male","male","female","female","female","male","male","male","female","female","female","male","male","male","female","female","female","male","male","male","female","female","female","male","male","male","female","female","female","male","male","male","female","female","female","male","male","male","female","male","female","male","female","male","female","male","female","male","female","female","female","male","male","male","female","female","female","male","male","female","female","female","male","male","male","female","female","female","male","male","male","female","female","female","male","male","male","female","male","female","male","female","male","female","male","female","male","female","male","female","male","female","male","female","male","female","female","female","female","male","male","male","male","female","female","female","female","male","male","male","male","female","female","female","female","male","male","male","male","female","female","female","female","male","male","male","male","female","female","female","female","male","male","male","male","female","female","female","female","male","male","male","male","female","female","female","female","male","male","male","male","female","female","female","female","male","male","male","male","female","female","female","female","male","male","male","male","female","female","female","female","male","male","male","male","female","female","female","male","male","male","male","female","female","female","female","male","male","male","male","female","female","female","female","male","male","male","female","female","female","female","male","male","male","male","female","female","female","female","male","male","male","male","female","female","female","female","male","male","male","male","female","female","female","female","male","male","male","male","female","female","female","female","male","male","male","male","female","female","female","female","male","male","male","male","female","female","female","male","male","male","male","female","female","female","female","male","male","male","male","female","female","female","female","male","male","male","male","female","female","female","female","male","male","male","male","female","female","female","female","male","male","male","male","female","female","female","female","male","male","male","male","female","female","female","female","male","male","male","male","female","female","female","female","male","male","male","male","female","female","female","female","male","male","male","male","female","female","female","female","male","male","male","male","female","female","female","female","male","male","male","male","female","female","female","female","male","male","male","male","female","female","female","female","male","male","male","male","female","female","female","male","male","male","male","female","female","female","female","male","male","male","female","female","female","female","male","male","male","male","female","female","female","female","male","male","male","male","female","female","female","female","male","male","male","male","female","female","female","male","male","male","male","female","female","female","female","male","male","male","male","female","female","female","female","male","male","male","male","female","female","female","female","male","male","male","male","female","female","female","female","male","male","male","male","female","female","female","female","male","male","male","male","female","female","female","female","male","male","male","male","female","female","female","female","male","male","male","male","female","female","female","female","male","male","male","male","female","female","female","female","male","male","male","male","female","female","female","female","male","male","male","male","female","female","female","female","male","male","male","male","female","female","female","female","male","male","male","male","female","female","female","female","male","male","male","male","female","female","female","female","male","male","male","male","female","female","female","female","male","male","male","male","female","female","female","female","male","male","male","male","female","female","female","female","male","male","male","male","female","female","female","female","male","male","male","male","female","female","male","male","male","female","female","female","male","male","male","female","female","female","male","male","male","female","male","female","male","female","male","female","female","male","female","female","female","male","male","male","female","female","female","male","male","male","female","female","female","male","male","male","female","female","female","male","male","male","female","female","male","male","female","female","female","male","male","male","female","female","male","male","female","female","female","male","male","male","female","female","male","male","female","female","female","male","male","male","female","female","male","male","female","female","female","male","male","male","female","female","female","male","male","male","female","female","female","male","male","male","female","female","male","male","female","female","male","male","female","female","male","male","female","female","male","male","female","female","female","male","male","male","female","female","male","male","female","female","female","male","male","male","female","female","male","male","female","female","female","female","female","male","male","male","male","male","female","female","female","female","female","male","male","male","male","male","female","female","female","female","female","male","male","male","male","male","female","female","female","female","female","male","male","male","male","male","female","female","female","male","male","male","female","female","female","female","female","male","male","male","male","male","female","female","female","female","female","male","male","male","male","male","female","female","female","female","female","male","male","male","male","male","female","female","female","female","female","male","male","male","male","male","female","female","female","female","female","male","male","male","male","male","female","female","female","female","female","male","male","male","male","male","female","female","female","female","male","male","male","male","female","male","female","male","female","male","female","female","female","male","male","male","female","female","female","female","male","male","male","male","female","female","female","female","male","male","male","male","female","female","female","female","male","male","male","male","female","female","female","female","male","male","male","male"],["a","ae","aeh","aehplus","full","a","ae","aeh","aehplus","full","a","ae","aeh","aehplus","full","a","ae","aeh","aehplus","full","a","ae","aeh","aehplus","full","a","ae","aeh","aehplus","full","a","ae","aeh","aehplus","full","a","ae","aeh","aehplus","full","a","ae","aeh","aehplus","full","a","ae","aeh","aehplus","full","a","ae","aeh","aehplus","full","a","ae","aeh","aehplus","full","a","ae","aeh","aehplus","full","a","ae","aeh","aehplus","full","a","ae","aeh","aehplus","full","a","ae","aeh","aehplus","full","a","ae","aeh","aehplus","full","a","ae","aeh","aehplus","full","a","ae","aeh","aehplus","full","a","ae","aeh","aehplus","full","a","ae","aeh","aehplus","full","a","ae","aeh","aehplus","full","a","ae","aeh","aehplus","full","a","ae","aeh","aehplus","full","a","ae","aeh","aehplus","full","a","ae","aeh","aehplus","full","a","ae","aeh","aehplus","full","a","ae","aeh","aehplus","full","a","ae","aeh","aehplus","full","a","ae","aeh","aehplus","full","a","ae","aeh","aehplus","full","a","ae","aeh","aehplus","full","a","ae","aeh","aehplus","full","a","ae","aeh","aehplus","full","a","ae","aeh","aehplus","full","a","ae","aehplus","full","a","ae","aeh","aehplus","full","a","ae","aeh","aehplus","full","a","ae","aeh","aehplus","full","a","ae","aeh","aehplus","full","a","ae","aeh","aehplus","full","a","ae","aeh","aehplus","full","a","ae","aeh","aehplus","full","a","ae","aeh","aehplus","full","ae","aeh","aehplus","full","ae","aeh","aehplus","a","ae","aeh","aehplus","a","ae","aeh","aehplus","full","a","a","ae","aeh","aehplus","full","a","ae","aeh","aehplus","full","a","ae","aeh","aehplus","full","ae","aeh","aehplus","full","aehplus","aehplus","aehplus","aehplus","aehplus","aehplus","aehplus","aehplus","aehplus","aehplus","aehplus","aehplus","aehplus","aehplus","aehplus","aehplus","aehplus","aehplus","a","aeh","aehplus","a","aeh","aehplus","a","aeh","aehplus","a","aeh","aehplus","a","aeh","aehplus","a","aeh","aehplus","a","aeh","aehplus","a","aeh","aehplus","a","aeh","aehplus","a","aeh","aehplus","a","aeh","aehplus","a","aeh","aehplus","a","aeh","aehplus","a","aeh","aehplus","a","aeh","aehplus","a","aeh","aehplus","a","aeh","aehplus","a","aeh","aehplus","a","aeh","aehplus","a","aeh","aehplus","a","aeh","aehplus","a","aeh","aehplus","a","aeh","aehplus","a","aeh","aehplus","aehplus","aehplus","aehplus","aehplus","aehplus","aehplus","aehplus","aehplus","aehplus","aehplus","a","aeh","aehplus","a","aeh","aehplus","a","aeh","aehplus","a","aeh","a","aeh","aehplus","a","aeh","aehplus","a","aeh","aehplus","a","aeh","aehplus","a","aeh","aehplus","a","aeh","aehplus","aehplus","aehplus","aehplus","aehplus","aehplus","aehplus","aehplus","aehplus","aehplus","aehplus","aehplus","aehplus","aehplus","aehplus","aehplus","aehplus","aehplus","aehplus","a","ae","aeh","aehplus","a","ae","aeh","aehplus","a","ae","aeh","aehplus","a","ae","aeh","aehplus","a","ae","aeh","aehplus","a","ae","aeh","aehplus","a","ae","aeh","aehplus","a","ae","aeh","aehplus","a","ae","aeh","aehplus","a","ae","aeh","aehplus","a","ae","aeh","aehplus","a","ae","aeh","aehplus","a","ae","aeh","aehplus","a","ae","aeh","aehplus","a","ae","aeh","aehplus","a","ae","aeh","aehplus","a","ae","aeh","aehplus","a","ae","aeh","aehplus","a","ae","aeh","aehplus","a","ae","aeh","aehplus","ae","aeh","aehplus","a","ae","aeh","aehplus","a","ae","aeh","aehplus","a","ae","aeh","aehplus","a","ae","aeh","aehplus","ae","aeh","aehplus","a","ae","aeh","aehplus","a","ae","aeh","aehplus","a","ae","aeh","aehplus","a","ae","aeh","aehplus","a","ae","aeh","aehplus","a","ae","aeh","aehplus","a","ae","aeh","aehplus","a","ae","aeh","aehplus","a","ae","aeh","aehplus","a","ae","aeh","aehplus","a","ae","aeh","aehplus","a","ae","aeh","aehplus","a","aeh","aehplus","a","ae","aeh","aehplus","a","ae","aeh","aehplus","a","ae","aeh","aehplus","a","ae","aeh","aehplus","a","ae","aeh","aehplus","a","ae","aeh","aehplus","a","ae","aeh","aehplus","a","ae","aeh","aehplus","a","ae","aeh","aehplus","a","ae","aeh","aehplus","a","ae","aeh","aehplus","a","ae","aeh","aehplus","a","ae","aeh","aehplus","a","ae","aeh","aehplus","a","ae","aeh","aehplus","a","ae","aeh","aehplus","a","ae","aeh","aehplus","a","ae","aeh","aehplus","a","ae","aeh","aehplus","a","ae","aeh","aehplus","a","ae","aeh","aehplus","a","ae","aeh","aehplus","a","ae","aeh","aehplus","a","ae","aeh","aehplus","a","ae","aeh","aehplus","a","aeh","aehplus","a","ae","aeh","aehplus","a","ae","aeh","aehplus","a","aeh","aehplus","a","ae","aeh","aehplus","a","ae","aeh","aehplus","a","ae","aeh","aehplus","a","ae","aeh","aehplus","a","ae","aeh","aehplus","a","ae","aeh","aehplus","a","ae","aeh","a","ae","aeh","aehplus","a","ae","aeh","aehplus","a","ae","aeh","aehplus","a","ae","aeh","aehplus","a","ae","aeh","aehplus","a","ae","aeh","aehplus","a","ae","aeh","aehplus","a","ae","aeh","aehplus","a","ae","aeh","aehplus","a","ae","aeh","aehplus","a","ae","aeh","aehplus","a","ae","aeh","aehplus","a","ae","aeh","aehplus","a","ae","aeh","aehplus","a","ae","aeh","aehplus","a","ae","aeh","aehplus","a","ae","aeh","aehplus","a","ae","aeh","aehplus","a","ae","aeh","aehplus","a","ae","aeh","aehplus","a","ae","aeh","aehplus","a","ae","aeh","aehplus","a","ae","aeh","aehplus","a","ae","aeh","aehplus","a","ae","aeh","aehplus","a","ae","aeh","aehplus","a","ae","aeh","aehplus","a","ae","aeh","aehplus","a","ae","aeh","aehplus","a","ae","aeh","aehplus","a","ae","aeh","aehplus","a","ae","aeh","aehplus","a","ae","aeh","aehplus","a","ae","aeh","aehplus","a","ae","aeh","aehplus","a","ae","aeh","aehplus","a","ae","aeh","aehplus","a","aehplus","a","aeh","aehplus","a","aeh","aehplus","a","aeh","aehplus","a","aeh","aehplus","a","aeh","aehplus","aehplus","aehplus","aehplus","aehplus","aehplus","aehplus","aehplus","aehplus","aehplus","a","aeh","aehplus","a","aeh","aehplus","a","aeh","aehplus","a","aeh","aehplus","a","aeh","aehplus","a","aeh","aehplus","a","aeh","aehplus","a","aeh","aehplus","a","aeh","a","aeh","a","aeh","aehplus","a","aeh","aehplus","a","aeh","a","aeh","a","aeh","aehplus","a","aeh","aehplus","a","aeh","a","aeh","a","aeh","aehplus","a","aeh","aehplus","a","aeh","a","aeh","a","aeh","aehplus","a","aeh","aehplus","a","aeh","aehplus","a","aeh","aehplus","a","aeh","aehplus","a","aeh","aehplus","a","aeh","a","aeh","a","aeh","a","aeh","a","aeh","a","aeh","a","aeh","a","aeh","a","aeh","aehplus","a","aeh","aehplus","a","aeh","a","aeh","a","aeh","aehplus","a","aeh","aehplus","a","aeh","a","aeh","0","a","ae","aeh","aehplus","0","a","ae","aeh","aehplus","0","a","ae","aeh","aehplus","0","a","ae","aeh","aehplus","0","a","ae","aeh","aehplus","0","a","ae","aeh","aehplus","0","a","ae","aeh","aehplus","0","a","ae","aeh","aehplus","a","ae","aeh","a","ae","aeh","0","a","ae","aeh","aehplus","0","a","ae","aeh","aehplus","0","a","ae","aeh","aehplus","0","a","ae","aeh","aehplus","0","a","ae","aeh","aehplus","0","a","ae","aeh","aehplus","0","a","ae","aeh","aehplus","0","a","ae","aeh","aehplus","0","a","ae","aeh","aehplus","0","a","ae","aeh","aehplus","0","a","ae","aeh","aehplus","0","a","ae","aeh","aehplus","a","ae","aeh","aehplus","a","ae","aeh","aehplus","aehplus","aehplus","aehplus","aehplus","aehplus","aehplus","a","ae","aeh","a","ae","aeh","a","ae","aeh","aehplus","a","ae","aeh","aehplus","a","ae","aeh","aehplus","a","ae","aeh","aehplus","a","ae","aeh","aehplus","a","ae","aeh","aehplus","a","ae","aeh","aehplus","a","ae","aeh","aehplus"],["+106.265(2.845),p=.00","+101.240(4.962),p=.00","+105.942(7.868),p=.00","+110.351(7.894),p=.00","+118.648(8.007),p=.00","+107.766(3.226),p=.00","+107.608(5.319),p=.00","+102.873(9.908),p=.00","+106.988(12.919),p=.00","+107.729(15.975),p=.00","+106.407(2.865),p=.00","+101.659(4.971),p=.00","+106.267(8.155),p=.00","+111.421(8.179),p=.00","+119.701(8.322),p=.00","+109.080(3.336),p=.00","+108.474(5.633),p=.00","+101.875(11.390),p=.00","+105.402(17.007),p=.00","+106.604(18.895),p=.00","+106.668(2.878),p=.00","+102.149(4.929),p=.00","+106.236(7.823),p=.00","+110.596(7.950),p=.00","+118.862(8.044),p=.00","+109.167(3.390),p=.00","+106.562(5.882),p=.00","+101.751(10.950),p=.00","+105.782(14.544),p=.00","+107.654(19.033),p=.00","+105.689(2.867),p=.00","+100.504(4.884),p=.00","+105.587(7.908),p=.00","+109.876(7.853),p=.00","+118.177(7.917),p=.00","+108.575(3.317),p=.00","+105.036(5.421),p=.00","+101.536(10.666),p=.00","+105.923(13.182),p=.00","+107.410(18.644),p=.00","+105.174(2.889),p=.00","+100.953(4.903),p=.00","+105.652(7.869),p=.00","+109.603(8.327),p=.00","+117.836(8.506),p=.00","+108.362(3.171),p=.00","+107.076(5.217),p=.00","+102.309(10.277),p=.00","+107.022(13.866),p=.00","+107.874(17.892),p=.00","+105.966(2.954),p=.00","+102.001(5.117),p=.00","+105.783(8.482),p=.00","+109.787(8.610),p=.00","+117.950(8.598),p=.00","+109.339(3.262),p=.00","+105.882(5.699),p=.00","+100.718(10.566),p=.00","+104.240(15.201),p=.00","+105.808(19.357),p=.00","+106.102(2.920),p=.00","+101.401(4.991),p=.00","+106.113(8.799),p=.00","+110.347(8.684),p=.00","+118.543(8.957),p=.00","+109.177(3.383),p=.00","+105.834(5.822),p=.00","+102.841(10.124),p=.00","+106.518(13.088),p=.00","+107.931(16.425),p=.00","+107.701(3.410),p=.00","+107.675(5.570),p=.00","+101.633(11.253),p=.00","+105.724(12.963),p=.00","+107.268(14.300),p=.00","+107.701(3.410),p=.00","+107.675(5.570),p=.00","+101.633(11.253),p=.00","+105.724(12.963),p=.00","+107.268(14.300),p=.00","+105.424(2.795),p=.00","+100.414(4.748),p=.00","+105.238(7.891),p=.00","+109.427(8.403),p=.00","+117.551(8.176),p=.00","+106.893(3.199),p=.00","+108.318(5.397),p=.00","+102.186(10.515),p=.00","+106.256(13.358),p=.00","+108.099(22.365),p=.00","+106.197(2.940),p=.00","+101.553(5.225),p=.00","+105.457(8.295),p=.00","+110.036(8.268),p=.00","+117.960(7.862),p=.00","+107.448(3.341),p=.00","+107.566(5.742),p=.00","+102.332(10.978),p=.00","+106.978(17.006),p=.00","+108.442(18.758),p=.00","+106.166(2.941),p=.00","+101.106(5.022),p=.00","+105.707(8.175),p=.00","+109.774(8.365),p=.00","+118.033(8.552),p=.00","+108.709(3.474),p=.00","+105.958(5.827),p=.00","+102.441(10.373),p=.00","+106.418(15.373),p=.00","+107.244(18.873),p=.00","+18.444(0.953),p=.00","+18.738(1.332),p=.00","+18.364(1.564),p=.00","+18.536(1.690),p=.00","+18.352(1.780),p=.00","+34.864(1.660),p=.00","+36.281(2.851),p=.00","+35.655(3.572),p=.00","+36.226(5.059),p=.00","+37.945(5.473),p=.00","+18.579(0.945),p=.00","+18.759(1.308),p=.00","+18.322(1.600),p=.00","+18.557(1.828),p=.00","+18.380(1.877),p=.00","+34.940(1.937),p=.00","+36.422(2.738),p=.00","+35.655(3.405),p=.00","+36.495(5.630),p=.00","+38.131(6.442),p=.00","+18.647(0.961),p=.00","+18.971(1.343),p=.00","+18.466(1.471),p=.00","+18.675(1.579),p=.00","+18.514(1.653),p=.00","+35.051(1.936),p=.00","+37.060(2.769),p=.00","+35.808(3.953),p=.00","+36.507(5.984),p=.00","+38.208(7.258),p=.00","+18.862(0.953),p=.00","+19.263(1.320),p=.00","+18.412(1.441),p=.00","+18.605(1.629),p=.00","+18.402(1.777),p=.00","+34.761(1.582),p=.00","+37.563(2.543),p=.00","+35.702(3.322),p=.00","+36.356(5.242),p=.00","+38.068(6.009),p=.00","+18.542(0.973),p=.00","+18.729(1.360),p=.00","+18.414(1.484),p=.00","+18.610(1.666),p=.00","+18.424(1.816),p=.00","+34.926(1.880),p=.00","+37.570(2.845),p=.00","+35.773(3.625),p=.00","+36.355(5.037),p=.00","+37.751(5.543),p=.00","+18.135(1.041),p=.00","+18.430(1.434),p=.00","+18.337(1.468),p=.00","+18.482(1.647),p=.00","+18.375(1.712),p=.00","+33.515(1.726),p=.00","+36.635(2.992),p=.00","+35.692(3.194),p=.00","+36.250(5.497),p=.00","+37.923(5.930),p=.00","+18.715(0.969),p=.00","+18.940(1.311),p=.00","+18.406(1.492),p=.00","+18.599(1.573),p=.00","+18.418(1.653),p=.00","+35.058(1.577),p=.00","+37.278(2.576),p=.00","+36.452(5.619),p=.00","+38.264(5.968),p=.00","+18.475(0.951),p=.00","+19.514(1.344),p=.00","+18.381(1.480),p=.00","+18.548(1.589),p=.00","+18.375(1.694),p=.00","+34.936(1.922),p=.00","+36.096(2.840),p=.00","+35.724(3.491),p=.00","+36.555(5.283),p=.00","+37.675(6.162),p=.00","+18.408(0.945),p=.00","+18.471(1.327),p=.00","+18.503(1.573),p=.00","+18.766(1.714),p=.00","+18.582(1.785),p=.00","+34.594(1.794),p=.00","+37.638(2.666),p=.00","+35.648(3.289),p=.00","+36.269(4.576),p=.00","+37.626(5.061),p=.00","+18.747(0.944),p=.00","+18.925(1.322),p=.00","+18.522(1.521),p=.00","+18.743(1.674),p=.00","+18.617(1.802),p=.00","+35.250(1.692),p=.00","+37.561(2.722),p=.00","+35.929(3.664),p=.00","+36.414(5.621),p=.00","+38.698(5.826),p=.00","+18.695(0.964),p=.00","+18.953(1.328),p=.00","+18.324(1.509),p=.00","+18.432(1.822),p=.00","+18.246(1.926),p=.00","+35.232(1.612),p=.00","+38.372(2.714),p=.00","+35.662(3.173),p=.00","+36.185(5.452),p=.00","+37.719(6.017),p=.00","+310.354(17.369),p=.00","+333.070(17.926),p=.00","+345.283(25.903),p=.00","+339.067(26.693),p=.00","+468.264(40.460),p=.00","+412.908(49.384),p=.00","+454.499(91.233),p=.00","+317.521(14.433),p=.00","+312.286(21.037),p=.00","+335.310(24.639),p=.00","+347.878(25.147),p=.00","+454.787(29.614),p=.00","+436.638(46.156),p=.00","+412.123(66.578),p=.00","+454.763(89.937),p=.00","+477.177(153.242),p=.00","+455.134(30.102),p=.00","+311.439(13.058),p=.00","+293.533(20.691),p=.00","+327.852(24.343),p=.00","+338.879(25.751),p=.00","+333.176(26.588),p=.00","+449.896(33.339),p=.00","+439.831(55.759),p=.00","+407.421(64.294),p=.00","+442.711(90.706),p=.00","+464.530(143.130),p=.00","+319.620(13.001),p=.00","+313.501(20.644),p=.00","+332.192(25.632),p=.00","+344.528(25.992),p=.00","+338.481(26.862),p=.00","+449.463(48.718),p=.00","+413.574(61.667),p=.00","+445.387(93.935),p=.00","+467.799(151.549),p=.00","+1.885(0.017),p=.00","+2.626(0.032),p=.00","+1.885(0.017),p=.00","+2.626(0.032),p=.00","+188.513(1.682),p=.00","+262.629(3.206),p=.00","+188.492(1.681),p=.00","+262.607(3.206),p=.00","+0.826(0.009),p=.00","+0.862(0.013),p=.00","+0.826(0.009),p=.00","+0.863(0.013),p=.00","+0.826(0.009),p=.00","+0.862(0.013),p=.00","+20.255(0.176),p=.00","+34.272(0.330),p=.00","+20.254(0.176),p=.00","+34.272(0.330),p=.00","+0.845(0.016),p=.00","+0.761(0.022),p=.00","+0.792(0.025),p=.00","+0.915(0.017),p=.00","+0.837(0.037),p=.00","+0.863(0.036),p=.00","+0.843(0.016),p=.00","+0.760(0.022),p=.00","+0.793(0.025),p=.00","+0.910(0.017),p=.00","+0.830(0.036),p=.00","+0.861(0.036),p=.00","+0.841(0.035),p=.00","+0.758(0.022),p=.00","+0.791(0.025),p=.00","+0.909(0.017),p=.00","+0.828(0.036),p=.00","+0.859(0.036),p=.00","+0.841(0.016),p=.00","+0.759(0.022),p=.00","+0.791(0.025),p=.00","+0.909(0.017),p=.00","+0.829(0.036),p=.00","+0.860(0.036),p=.00","+24.153(0.470),p=.00","+22.570(0.893),p=.00","+23.625(0.891),p=.00","+39.420(0.534),p=.00","+35.239(1.294),p=.00","+35.254(1.110),p=.00","+24.139(0.459),p=.00","+22.558(0.891),p=.00","+23.660(0.889),p=.00","+39.397(0.565),p=.00","+35.219(1.306),p=.00","+35.262(1.126),p=.00","+24.144(0.461),p=.00","+22.564(0.894),p=.00","+23.626(0.895),p=.00","+39.405(0.551),p=.00","+35.226(1.303),p=.00","+35.214(1.118),p=.00","+24.143(0.459),p=.00","+22.564(0.894),p=.00","+23.623(0.894),p=.00","+39.406(0.551),p=.00","+35.228(1.303),p=.00","+35.227(1.120),p=.00","+274.854(2.748),p=.00","+248.483(5.602),p=.00","+256.766(6.160),p=.00","+405.244(5.019),p=.00","+320.419(13.749),p=.00","+339.383(14.496),p=.00","+274.840(2.739),p=.00","+248.537(5.600),p=.00","+256.954(6.161),p=.00","+405.135(5.005),p=.00","+320.470(13.753),p=.00","+339.429(14.454),p=.00","+274.847(2.756),p=.00","+248.501(5.605),p=.00","+256.731(6.155),p=.00","+405.193(5.013),p=.00","+320.440(13.768),p=.00","+339.218(14.452),p=.00","+274.847(2.777),p=.00","+248.500(5.611),p=.00","+256.721(6.157),p=.00","+405.194(5.016),p=.00","+320.439(13.744),p=.00","+339.271(14.464),p=.00","+88.572(13.392),p=.00","+95.038(12.776),p=.00","+87.359(13.864),p=.00","+94.668(12.541),p=.00","+87.545(13.547),p=.00","+94.640(12.738),p=.00","+87.839(14.241),p=.00","+94.551(13.162),p=.00","+87.565(13.566),p=.00","+94.352(12.925),p=.00","+5.363(1.215),p=.00","+4.918(1.534),p=.00","+4.778(1.647),p=.00","+5.260(0.959),p=.00","+5.021(1.043),p=.00","+4.710(1.104),p=.00","+5.313(1.255),p=.00","+4.917(1.556),p=.00","+4.787(1.647),p=.00","+5.435(0.952),p=.00","+5.147(1.102),p=.00","+5.383(1.212),p=.00","+4.911(1.543),p=.00","+4.795(1.620),p=.00","+5.422(0.964),p=.00","+5.109(1.062),p=.00","+4.767(1.140),p=.00","+5.462(1.167),p=.00","+4.961(1.405),p=.00","+4.855(1.517),p=.00","+5.426(0.922),p=.00","+5.178(1.040),p=.00","+4.920(1.096),p=.00","+5.525(1.177),p=.00","+4.895(1.455),p=.00","+4.787(1.545),p=.00","+5.439(0.944),p=.00","+5.190(1.053),p=.00","+4.877(1.130),p=.00","+7.756(0.173),p=.00","+7.198(0.142),p=.00","+7.775(0.175),p=.00","+7.199(0.142),p=.00","+7.772(0.173),p=.00","+7.198(0.142),p=.00","+19.445(0.285),p=.00","+34.019(0.493),p=.00","+19.430(0.285),p=.00","+33.983(0.491),p=.00","+19.422(0.286),p=.00","+34.050(0.492),p=.00","+352.088(4.518),p=.00","+468.551(6.541),p=.00","+352.054(4.511),p=.00","+468.327(6.538),p=.00","+351.995(4.518),p=.00","+468.422(6.534),p=.00","+1.736(0.021),p=.00","+1.590(0.034),p=.00","+1.612(0.032),p=.00","+1.677(0.035),p=.00","+2.413(0.057),p=.00","+2.107(0.085),p=.00","+2.128(0.084),p=.00","+2.409(0.108),p=.00","+1.737(0.021),p=.00","+1.589(0.034),p=.00","+1.612(0.032),p=.00","+1.676(0.035),p=.00","+2.411(0.057),p=.00","+2.105(0.085),p=.00","+2.126(0.084),p=.00","+2.405(0.108),p=.00","+1.738(0.021),p=.00","+1.590(0.034),p=.00","+1.613(0.032),p=.00","+1.677(0.035),p=.00","+2.411(0.057),p=.00","+2.106(0.085),p=.00","+2.128(0.084),p=.00","+2.406(0.108),p=.00","+1.735(0.021),p=.00","+1.590(0.034),p=.00","+1.612(0.032),p=.00","+1.675(0.035),p=.00","+2.410(0.057),p=.00","+2.109(0.085),p=.00","+2.129(0.084),p=.00","+2.410(0.108),p=.00","+1.737(0.021),p=.00","+1.588(0.034),p=.00","+1.611(0.032),p=.00","+1.675(0.035),p=.00","+2.412(0.057),p=.00","+2.107(0.085),p=.00","+2.129(0.084),p=.00","+2.408(0.108),p=.00","+1.737(0.021),p=.00","+1.589(0.034),p=.00","+1.612(0.032),p=.00","+1.677(0.035),p=.00","+2.413(0.057),p=.00","+2.105(0.085),p=.00","+2.127(0.084),p=.00","+2.404(0.109),p=.00","+1.736(0.021),p=.00","+1.589(0.034),p=.00","+1.612(0.032),p=.00","+1.676(0.035),p=.00","+2.412(0.057),p=.00","+2.104(0.085),p=.00","+2.125(0.084),p=.00","+2.403(0.108),p=.00","+1.737(0.021),p=.00","+1.591(0.034),p=.00","+1.613(0.032),p=.00","+1.677(0.035),p=.00","+2.411(0.057),p=.00","+2.106(0.085),p=.00","+2.128(0.084),p=.00","+2.407(0.108),p=.00","+1.737(0.021),p=.00","+1.587(0.034),p=.00","+1.621(0.032),p=.00","+1.675(0.035),p=.00","+2.414(0.057),p=.00","+2.105(0.085),p=.00","+2.118(0.085),p=.00","+2.408(0.108),p=.00","+1.738(0.021),p=.00","+1.591(0.034),p=.00","+1.614(0.032),p=.00","+1.678(0.035),p=.00","+2.411(0.057),p=.00","+2.104(0.085),p=.00","+2.126(0.084),p=.00","+2.405(0.108),p=.00","+1.591(0.034),p=.00","+1.613(0.032),p=.00","+1.678(0.035),p=.00","+2.411(0.057),p=.00","+2.103(0.085),p=.00","+2.125(0.084),p=.00","+2.404(0.108),p=.00","+1.736(0.021),p=.00","+1.588(0.034),p=.00","+1.611(0.032),p=.00","+1.676(0.035),p=.00","+2.412(0.057),p=.00","+2.106(0.085),p=.00","+2.127(0.084),p=.00","+2.405(0.108),p=.00","+1.738(0.021),p=.00","+1.590(0.034),p=.00","+1.613(0.032),p=.00","+1.677(0.035),p=.00","+2.105(0.085),p=.00","+2.127(0.084),p=.00","+2.405(0.108),p=.00","+1.737(0.021),p=.00","+1.591(0.034),p=.00","+1.613(0.032),p=.00","+1.679(0.035),p=.00","+2.412(0.057),p=.00","+2.104(0.085),p=.00","+2.126(0.084),p=.00","+2.403(0.108),p=.00","+1.736(0.021),p=.00","+1.589(0.034),p=.00","+1.611(0.032),p=.00","+1.677(0.035),p=.00","+2.412(0.057),p=.00","+2.105(0.085),p=.00","+2.126(0.084),p=.00","+2.406(0.108),p=.00","+1.737(0.021),p=.00","+1.587(0.034),p=.00","+1.611(0.032),p=.00","+1.675(0.035),p=.00","+2.414(0.057),p=.00","+2.105(0.085),p=.00","+2.127(0.084),p=.00","+2.406(0.108),p=.00","+1.737(0.021),p=.00","+1.589(0.034),p=.00","+1.612(0.032),p=.00","+1.677(0.035),p=.00","+2.411(0.057),p=.00","+2.105(0.085),p=.00","+2.126(0.084),p=.00","+2.406(0.108),p=.00","+1.737(0.021),p=.00","+1.588(0.034),p=.00","+1.612(0.032),p=.00","+1.677(0.035),p=.00","+2.411(0.057),p=.00","+2.101(0.086),p=.00","+2.122(0.084),p=.00","+2.401(0.109),p=.00","+1.736(0.021),p=.00","+1.588(0.034),p=.00","+1.611(0.032),p=.00","+1.675(0.035),p=.00","+2.412(0.057),p=.00","+2.103(0.085),p=.00","+2.125(0.084),p=.00","+2.404(0.108),p=.00","+47.277(0.622),p=.00","+43.926(1.137),p=.00","+43.717(1.257),p=.00","+80.438(1.817),p=.00","+74.966(2.972),p=.00","+76.258(2.657),p=.00","+79.683(3.032),p=.00","+47.290(0.621),p=.00","+43.372(1.175),p=.00","+43.926(1.137),p=.00","+43.699(1.257),p=.00","+80.368(1.818),p=.00","+74.843(2.972),p=.00","+76.134(2.664),p=.00","+79.539(3.054),p=.00","+1.738(0.021),p=.00","+1.590(0.034),p=.00","+1.613(0.032),p=.00","+1.677(0.035),p=.00","+2.411(0.057),p=.00","+2.106(0.085),p=.00","+76.097(2.671),p=.00","+79.494(3.055),p=.00","+47.268(0.622),p=.00","+43.378(1.178),p=.00","+43.941(1.140),p=.00","+43.697(1.260),p=.00","+80.314(1.822),p=.00","+74.828(2.976),p=.00","+76.116(2.667),p=.00","+79.537(3.043),p=.00","+1.737(0.021),p=.00","+1.588(0.034),p=.00","+1.611(0.032),p=.00","+1.675(0.035),p=.00","+2.412(0.057),p=.00","+2.107(0.085),p=.00","+76.128(2.655),p=.00","+79.595(3.032),p=.00","+47.297(0.621),p=.00","+43.395(1.176),p=.00","+43.948(1.137),p=.00","+43.729(1.257),p=.00","+80.407(1.823),p=.00","+74.887(2.977),p=.00","+76.237(2.663),p=.00","+79.600(3.038),p=.00","+47.282(0.622),p=.00","+43.386(1.178),p=.00","+43.937(1.140),p=.00","+43.714(1.260),p=.00","+80.346(1.820),p=.00","+74.848(2.976),p=.00","+76.131(2.672),p=.00","+79.564(3.048),p=.00","+47.288(0.621),p=.00","+43.373(1.176),p=.00","+43.925(1.138),p=.00","+43.687(1.258),p=.00","+80.379(1.821),p=.00","+74.838(2.974),p=.00","+76.153(2.667),p=.00","+79.387(3.043),p=.00","+47.278(0.621),p=.00","+43.353(1.177),p=.00","+43.915(1.139),p=.00","+43.677(1.258),p=.00","+80.379(1.820),p=.00","+74.836(2.976),p=.00","+76.238(2.660),p=.00","+79.672(3.040),p=.00","+47.281(0.622),p=.00","+43.353(1.177),p=.00","+43.912(1.138),p=.00","+43.674(1.259),p=.00","+80.398(1.817),p=.00","+74.861(2.974),p=.00","+76.178(2.665),p=.00","+79.502(3.047),p=.00","+47.290(0.621),p=.00","+43.365(1.178),p=.00","+43.924(1.139),p=.00","+43.695(1.260),p=.00","+80.383(1.820),p=.00","+74.864(2.972),p=.00","+76.167(2.665),p=.00","+79.495(3.046),p=.00","+47.275(0.622),p=.00","+43.361(1.177),p=.00","+43.924(1.139),p=.00","+43.693(1.258),p=.00","+80.382(1.822),p=.00","+74.870(2.979),p=.00","+76.194(2.659),p=.00","+79.565(3.038),p=.00","+47.302(0.620),p=.00","+43.368(1.175),p=.00","+43.929(1.137),p=.00","+43.697(1.256),p=.00","+80.319(1.822),p=.00","+74.676(2.974),p=.00","+75.986(2.666),p=.00","+79.335(3.042),p=.00","+47.289(0.622),p=.00","+43.946(1.138),p=.00","+43.726(1.257),p=.00","+80.347(1.822),p=.00","+74.805(2.978),p=.00","+76.115(2.671),p=.00","+79.521(3.053),p=.00","+47.291(0.621),p=.00","+43.383(1.176),p=.00","+43.940(1.138),p=.00","+43.722(1.257),p=.00","+80.349(1.824),p=.00","+76.110(2.677),p=.00","+79.488(3.060),p=.00","+47.262(0.622),p=.00","+43.340(1.177),p=.00","+43.909(1.139),p=.00","+43.680(1.259),p=.00","+80.294(1.822),p=.00","+74.832(2.976),p=.00","+76.238(2.660),p=.00","+79.531(3.056),p=.00","+47.268(0.623),p=.00","+43.336(1.177),p=.00","+43.899(1.139),p=.00","+43.686(1.259),p=.00","+80.376(1.821),p=.00","+74.847(2.976),p=.00","+76.152(2.667),p=.00","+79.553(3.056),p=.00","+47.239(0.623),p=.00","+43.323(1.176),p=.00","+43.887(1.138),p=.00","+43.699(1.258),p=.00","+80.335(1.816),p=.00","+74.776(2.977),p=.00","+76.093(2.669),p=.00","+79.459(3.050),p=.00","+1.736(0.021),p=.00","+1.588(0.034),p=.00","+1.611(0.032),p=.00","+2.412(0.057),p=.00","+2.103(0.085),p=.00","+76.204(2.671),p=.00","+79.660(3.070),p=.00","NaN(NaN),p=NA","NaN(NaN),p=NA","NaN(NaN),p=NA","NaN(NaN),p=NA","NaN(NaN),p=NA","NaN(NaN),p=NA","NaN(NaN),p=NA","NaN(NaN),p=NA","NaN(NaN),p=NA","NaN(NaN),p=NA","NaN(NaN),p=NA","NaN(NaN),p=NA","NaN(NaN),p=NA","NaN(NaN),p=NA","NaN(NaN),p=NA","NaN(NaN),p=NA","NaN(NaN),p=NA","NaN(NaN),p=NA","NaN(NaN),p=NA","NaN(NaN),p=NA","NaN(NaN),p=NA","NaN(NaN),p=NA","NaN(NaN),p=NA","NaN(NaN),p=NA","NaN(NaN),p=NA","NaN(NaN),p=NA","NaN(NaN),p=NA","NaN(NaN),p=NA","NaN(NaN),p=NA","NaN(NaN),p=NA","NaN(NaN),p=NA","NaN(NaN),p=NA","NaN(NaN),p=NA","NaN(NaN),p=NA","NaN(NaN),p=NA","NaN(NaN),p=NA","NaN(NaN),p=NA","NaN(NaN),p=NA","NaN(NaN),p=NA","NaN(NaN),p=NA","NaN(NaN),p=NA","NaN(NaN),p=NA","NaN(NaN),p=NA","NaN(NaN),p=NA","NaN(NaN),p=NA","NaN(NaN),p=NA","NaN(NaN),p=NA","NaN(NaN),p=NA","NaN(NaN),p=NA","NaN(NaN),p=NA","NaN(NaN),p=NA","NaN(NaN),p=NA","NaN(NaN),p=NA","NaN(NaN),p=NA","NaN(NaN),p=NA","NaN(NaN),p=NA","NaN(NaN),p=NA","NaN(NaN),p=NA","NaN(NaN),p=NA","NaN(NaN),p=NA","NaN(NaN),p=NA","NaN(NaN),p=NA","NaN(NaN),p=NA","NaN(NaN),p=NA","NaN(NaN),p=NA","NaN(NaN),p=NA","NaN(NaN),p=NA","NaN(NaN),p=NA","NaN(NaN),p=NA","NaN(NaN),p=NA","NaN(NaN),p=NA","NaN(NaN),p=NA","NaN(NaN),p=NA","NaN(NaN),p=NA","NaN(NaN),p=NA","NaN(NaN),p=NA","NaN(NaN),p=NA","NaN(NaN),p=NA","NaN(NaN),p=NA","NaN(NaN),p=NA","NaN(NaN),p=NA","NaN(NaN),p=NA","NaN(NaN),p=NA","NaN(NaN),p=NA","NaN(NaN),p=NA","NaN(NaN),p=NA","NaN(NaN),p=NA","NaN(NaN),p=NA","NaN(NaN),p=NA","NaN(NaN),p=NA","NaN(NaN),p=NA","NaN(NaN),p=NA","NaN(NaN),p=NA","NaN(NaN),p=NA","NaN(NaN),p=NA","NaN(NaN),p=NA","NaN(NaN),p=NA","NaN(NaN),p=NA","NaN(NaN),p=NA","NaN(NaN),p=NA","NaN(NaN),p=NA","NaN(NaN),p=NA","NaN(NaN),p=NA","NaN(NaN),p=NA","NaN(NaN),p=NA","NaN(NaN),p=NA","NaN(NaN),p=NA","NaN(NaN),p=NA","NaN(NaN),p=NA","NaN(NaN),p=NA","NaN(NaN),p=NA","NaN(NaN),p=NA","NaN(NaN),p=NA","NaN(NaN),p=NA","NaN(NaN),p=NA","NaN(NaN),p=NA","NaN(NaN),p=NA","NaN(NaN),p=NA","NaN(NaN),p=NA","NaN(NaN),p=NA","NaN(NaN),p=NA","NaN(NaN),p=NA","NaN(NaN),p=NA","NaN(NaN),p=NA","NaN(NaN),p=NA","NaN(NaN),p=NA","NaN(NaN),p=NA","NaN(NaN),p=NA","NaN(NaN),p=NA","NaN(NaN),p=NA","NaN(NaN),p=NA","NaN(NaN),p=NA","NaN(NaN),p=NA","NaN(NaN),p=NA","NaN(NaN),p=NA","NaN(NaN),p=NA","NaN(NaN),p=NA","NaN(NaN),p=NA","NaN(NaN),p=NA","NaN(NaN),p=NA","NaN(NaN),p=NA","NaN(NaN),p=NA","NaN(NaN),p=NA","NaN(NaN),p=NA","NaN(NaN),p=NA","NaN(NaN),p=NA","NaN(NaN),p=NA","NaN(NaN),p=NA","NaN(NaN),p=NA","+60.954(0.714),p=.00","+60.533(0.987),p=.00","+60.566(1.122),p=.00","+79.888(0.787),p=.00","+81.103(0.968),p=.00","+80.725(1.370),p=.00","NaN(NaN),p=NA","NaN(NaN),p=NA","NaN(NaN),p=NA","NaN(NaN),p=NA","NaN(NaN),p=NA","NaN(NaN),p=NA","+10.261(0.449),p=.00","+9.229(0.649),p=.00","+10.274(0.446),p=.00","+9.093(0.647),p=.00","+10.294(0.455),p=.00","+9.009(0.628),p=.00","+10.306(0.461),p=.00","+10.258(0.481),p=.00","+9.216(0.647),p=.00","+8.822(0.203),p=.00","+8.981(0.218),p=.00","+9.154(0.225),p=.00","+11.276(0.375),p=.00","+11.776(0.345),p=.00","+12.095(0.418),p=.00","+8.835(0.202),p=.00","+8.990(0.217),p=.00","+9.161(0.225),p=.00","+11.299(0.372),p=.00","+11.784(0.344),p=.00","+12.101(0.417),p=.00","+8.827(0.203),p=.00","+8.988(0.218),p=.00","+9.159(0.226),p=.00","+11.298(0.370),p=.00","+11.778(0.344),p=.00","+12.096(0.416),p=.00","+8.838(0.196),p=.00","+8.992(0.217),p=.00","+9.165(0.225),p=.00","+11.235(0.360),p=.00","+11.759(0.346),p=.00","+12.057(0.419),p=.00","+8.836(0.208),p=.00","+8.988(0.218),p=.00","+11.311(0.389),p=.00","+11.786(0.344),p=.00","+8.833(0.196),p=.00","+8.988(0.218),p=.00","+9.155(0.225),p=.00","+11.296(0.358),p=.00","+11.776(0.343),p=.00","+12.073(0.416),p=.00","+8.773(0.209),p=.00","+8.983(0.220),p=.00","+11.354(0.382),p=.00","+11.811(0.343),p=.00","+8.834(0.196),p=.00","+8.990(0.218),p=.00","+9.178(0.235),p=.00","+11.295(0.357),p=.00","+11.761(0.345),p=.00","+11.435(0.508),p=.00","+8.841(0.207),p=.00","+8.996(0.218),p=.00","+11.279(0.393),p=.00","+11.762(0.345),p=.00","+8.834(0.196),p=.00","+8.997(0.218),p=.00","+9.167(0.225),p=.00","+11.294(0.356),p=.00","+11.771(0.346),p=.00","+12.105(0.418),p=.00","+8.826(0.209),p=.00","+8.986(0.218),p=.00","+11.290(0.387),p=.00","+11.769(0.344),p=.00","+312.136(7.368),p=.00","+318.410(7.773),p=.00","+328.186(8.749),p=.00","+430.645(16.087),p=.00","+434.688(16.269),p=.00","+464.578(23.315),p=.00","+310.920(7.458),p=.00","+317.607(7.893),p=.00","+327.585(8.824),p=.00","+432.048(16.082),p=.00","+435.163(16.325),p=.00","+466.550(23.552),p=.00","+311.380(7.359),p=.00","+317.579(7.797),p=.00","+327.370(8.778),p=.00","+434.374(16.148),p=.00","+435.378(16.316),p=.00","+469.379(23.602),p=.00","+311.713(7.399),p=.00","+318.233(7.796),p=.00","+429.059(16.429),p=.00","+433.730(16.298),p=.00","+311.476(7.340),p=.00","+317.480(7.786),p=.00","+435.306(16.011),p=.00","+435.988(16.334),p=.00","+311.036(7.402),p=.00","+317.749(7.824),p=.00","+432.471(16.095),p=.00","+433.959(16.179),p=.00","+310.380(7.613),p=.00","+317.962(7.820),p=.00","+430.505(16.313),p=.00","+434.619(16.250),p=.00","+310.750(7.362),p=.00","+317.440(7.804),p=.00","+327.356(8.750),p=.00","+432.490(16.098),p=.00","+434.452(16.316),p=.00","+465.567(23.567),p=.00","+309.744(7.479),p=.00","+316.265(7.848),p=.00","+427.734(16.229),p=.00","+428.851(16.258),p=.00","+310.768(7.375),p=.00","+317.530(7.807),p=.00","+327.749(8.805),p=.00","+433.648(15.942),p=.00","+435.228(16.236),p=.00","+463.728(23.407),p=.00","+311.969(7.338),p=.00","+317.779(7.769),p=.00","+433.058(16.092),p=.00","+434.969(16.311),p=.00","NaN(NaN),p=NA","+1.777(0.025),p=.00","+1.753(0.026),p=.00","+1.750(0.026),p=.00","+1.798(0.034),p=.00","NaN(NaN),p=NA","+2.528(0.052),p=.00","+2.479(0.057),p=.00","+2.431(0.057),p=.00","+2.554(0.074),p=.00","NaN(NaN),p=NA","+1.776(0.026),p=.00","+1.754(0.027),p=.00","+1.750(0.025),p=.00","+1.798(0.034),p=.00","NaN(NaN),p=NA","+2.522(0.055),p=.00","+2.472(0.060),p=.00","+2.424(0.058),p=.00","+2.545(0.074),p=.00","NaN(NaN),p=NA","+1.776(0.026),p=.00","+1.754(0.027),p=.00","+1.751(0.026),p=.00","+1.800(0.035),p=.00","NaN(NaN),p=NA","+2.530(0.055),p=.00","+2.478(0.060),p=.00","+2.431(0.058),p=.00","+2.553(0.074),p=.00","NaN(NaN),p=NA","+1.777(0.026),p=.00","+1.755(0.027),p=.00","+1.752(0.025),p=.00","+1.800(0.034),p=.00","NaN(NaN),p=NA","+2.525(0.055),p=.00","+2.476(0.060),p=.00","+2.429(0.057),p=.00","+2.552(0.075),p=.00","+1.779(0.025),p=.00","+1.756(0.027),p=.00","+1.752(0.026),p=.00","+2.530(0.052),p=.00","+2.479(0.057),p=.00","+2.431(0.057),p=.00","NaN(NaN),p=NA","+1.776(0.026),p=.00","+1.754(0.027),p=.00","+1.750(0.025),p=.00","+1.798(0.034),p=.00","NaN(NaN),p=NA","+2.529(0.054),p=.00","+2.479(0.060),p=.00","+2.431(0.058),p=.00","+2.558(0.075),p=.00","NaN(NaN),p=NA","+1.777(0.026),p=.00","+1.755(0.027),p=.00","+1.752(0.026),p=.00","+1.800(0.035),p=.00","NaN(NaN),p=NA","+2.525(0.055),p=.00","+2.474(0.060),p=.00","+2.427(0.058),p=.00","+2.550(0.074),p=.00","NaN(NaN),p=NA","+1.780(0.025),p=.00","+1.758(0.026),p=.00","+1.754(0.026),p=.00","+1.801(0.035),p=.00","NaN(NaN),p=NA","+2.522(0.056),p=.00","+2.472(0.063),p=.00","+2.425(0.061),p=.00","+2.550(0.079),p=.00","NaN(NaN),p=NA","+1.778(0.026),p=.00","+1.755(0.027),p=.00","+1.751(0.026),p=.00","+1.798(0.035),p=.00","NaN(NaN),p=NA","+2.530(0.054),p=.00","+2.479(0.058),p=.00","+2.431(0.057),p=.00","+2.556(0.073),p=.00","NaN(NaN),p=NA","+1.780(0.019),p=.00","+1.756(0.022),p=.00","+1.753(0.022),p=.00","+1.802(0.035),p=.00","NaN(NaN),p=NA","+2.524(0.048),p=.00","+2.476(0.054),p=.00","+2.429(0.050),p=.00","+2.548(0.074),p=.00","NaN(NaN),p=NA","+1.775(0.025),p=.00","+1.752(0.026),p=.00","+1.749(0.026),p=.00","+1.797(0.035),p=.00","NaN(NaN),p=NA","+2.525(0.052),p=.00","+2.475(0.057),p=.00","+2.428(0.057),p=.00","+2.552(0.073),p=.00","+21.024(0.324),p=.00","+20.845(0.355),p=.00","+20.819(0.361),p=.00","+21.477(0.446),p=.00","+38.584(0.935),p=.00","+38.572(1.059),p=.00","+38.204(1.049),p=.00","+37.728(1.495),p=.00","+21.501(0.451),p=.00","+36.863(0.852),p=.00","+21.506(0.459),p=.00","+36.857(0.829),p=.00","+21.502(0.447),p=.00","+36.827(0.823),p=.00","+21.042(0.327),p=.00","+20.855(0.359),p=.00","+20.829(0.365),p=.00","+38.648(0.943),p=.00","+38.611(1.056),p=.00","+38.244(1.049),p=.00","+21.036(0.326),p=.00","+20.863(0.357),p=.00","+20.834(0.365),p=.00","+21.473(0.447),p=.00","+38.555(0.932),p=.00","+38.535(1.057),p=.00","+38.170(1.056),p=.00","+37.690(1.540),p=.00","+21.016(0.325),p=.00","+20.849(0.355),p=.00","+20.821(0.365),p=.00","+21.455(0.450),p=.00","+38.473(0.980),p=.00","+38.446(1.105),p=.00","+38.093(1.089),p=.00","+37.574(1.578),p=.00","+21.035(0.300),p=.00","+20.848(0.338),p=.00","+20.820(0.334),p=.00","+21.505(0.455),p=.00","+38.617(0.939),p=.00","+38.613(1.058),p=.00","+38.230(1.048),p=.00","+36.835(0.831),p=.00","+21.037(0.324),p=.00","+20.856(0.357),p=.00","+20.830(0.363),p=.00","+21.476(0.455),p=.00","+38.574(0.945),p=.00","+38.539(1.075),p=.00","+38.171(1.068),p=.00","+37.672(1.605),p=.00"],["-2.691(0.516),p=.00","-3.540(1.082),p=.00","-4.176(2.319),p=.07","-4.009(2.389),p=.09","-4.264(2.295),p=.06","-2.076(0.729),p=.00","-2.042(1.207),p=.09","-0.476(3.045),p=.88","-2.183(4.469),p=.62","-1.483(6.110),p=.81","-2.716(0.580),p=.00","-3.586(1.098),p=.00","-4.110(2.763),p=.14","-4.448(2.745),p=.10","-4.723(2.949),p=.11","-2.314(0.802),p=.00","-2.290(1.266),p=.07","+0.145(3.425),p=.97","-1.280(6.412),p=.84","-0.950(7.905),p=.90","-2.714(0.535),p=.00","-3.748(1.056),p=.00","-3.915(2.312),p=.09","-3.985(2.605),p=.13","-4.186(2.617),p=.11","-2.402(0.783),p=.00","-1.538(1.137),p=.18","+0.267(2.932),p=.93","-1.754(4.935),p=.72","-1.702(6.644),p=.80","-2.492(0.582),p=.00","-3.361(1.072),p=.00","-3.429(2.185),p=.12","-3.295(2.365),p=.16","-3.600(2.399),p=.13","-2.277(0.690),p=.00","-1.113(1.192),p=.35","+0.188(3.160),p=.95","-1.815(6.008),p=.76","-1.683(7.166),p=.81","-2.607(0.606),p=.00","-3.664(1.094),p=.00","-3.266(2.279),p=.15","-3.103(2.435),p=.20","-3.400(2.413),p=.16","-2.141(0.734),p=.00","-1.340(1.119),p=.23","-0.190(2.917),p=.95","-2.315(4.482),p=.60","-1.795(7.083),p=.80","-2.367(0.577),p=.00","-3.517(1.140),p=.00","-3.410(2.400),p=.15","-3.181(2.647),p=.23","-3.381(2.637),p=.20","-2.242(0.730),p=.00","-1.502(1.143),p=.19","+0.549(3.062),p=.86","-0.877(5.470),p=.87","-0.746(6.820),p=.91","-2.602(0.580),p=.00","-3.435(1.100),p=.00","-3.740(2.371),p=.12","-3.655(2.581),p=.16","-3.870(2.628),p=.14","-2.203(0.728),p=.00","-1.270(1.253),p=.31","-0.504(3.070),p=.87","-1.982(4.907),p=.69","-1.717(6.006),p=.78","-2.265(0.726),p=.00","-2.218(1.144),p=.05","+0.060(2.912),p=.98","-1.644(5.959),p=.78","-1.372(6.995),p=.84","-2.265(0.726),p=.00","-2.218(1.144),p=.05","+0.060(2.912),p=.98","-1.644(5.959),p=.78","-1.372(6.995),p=.84","-2.385(0.548),p=.00","-3.310(1.028),p=.00","-3.182(2.498),p=.20","-3.045(2.837),p=.28","-3.262(3.001),p=.28","-2.106(0.719),p=.00","-1.257(1.219),p=.30","-0.146(3.154),p=.96","-1.808(4.793),p=.71","-1.740(8.129),p=.83","-2.651(0.553),p=.00","-3.507(1.137),p=.00","-3.567(2.455),p=.15","-3.507(2.526),p=.17","-3.760(2.650),p=.16","-2.048(0.830),p=.01","-2.043(1.273),p=.11","+0.033(3.250),p=.99","-2.183(5.619),p=.70","-1.931(5.594),p=.73","-2.523(0.587),p=.00","-3.409(1.165),p=.00","-3.421(2.580),p=.18","-3.226(2.683),p=.23","-3.448(2.628),p=.19","-2.248(0.811),p=.01","-1.566(1.209),p=.20","-0.288(3.450),p=.93","-1.971(5.796),p=.73","-1.442(6.089),p=.81","-0.780(0.224),p=.00","-0.876(0.355),p=.01","-2.222(0.371),p=.00","-2.347(0.419),p=.00","-2.269(0.417),p=.00","-1.016(0.441),p=.02","-0.973(0.742),p=.19","-1.816(1.178),p=.12","-2.333(1.362),p=.09","-2.829(1.454),p=.05","-0.936(0.249),p=.00","-1.051(0.380),p=.01","-2.172(0.396),p=.00","-2.349(0.472),p=.00","-2.266(0.482),p=.00","-1.234(0.502),p=.01","-1.166(0.735),p=.11","-1.814(1.287),p=.16","-2.455(1.466),p=.09","-2.889(1.641),p=.08","-0.980(0.231),p=.00","-1.143(0.348),p=.00","-2.232(0.382),p=.00","-2.414(0.475),p=.00","-2.346(0.491),p=.00","-1.195(0.519),p=.02","-0.962(0.669),p=.15","-1.911(1.197),p=.11","-2.524(1.518),p=.10","-3.009(1.908),p=.12","-0.872(0.237),p=.00","-0.954(0.384),p=.01","-2.196(0.416),p=.00","-2.350(0.479),p=.00","-2.258(0.485),p=.00","-1.172(0.410),p=.00","-0.969(0.667),p=.15","-1.811(1.301),p=.16","-2.376(1.387),p=.09","-2.871(1.615),p=.07","-0.970(0.235),p=.00","-1.118(0.350),p=.00","-2.219(0.412),p=.00","-2.388(0.419),p=.00","-2.317(0.426),p=.00","-1.154(0.468),p=.01","-0.921(0.710),p=.20","-1.883(1.105),p=.09","-2.394(1.467),p=.10","-2.699(1.712),p=.12","-0.775(0.272),p=.00","-0.850(0.410),p=.04","-2.150(0.412),p=.00","-2.279(0.481),p=.00","-2.240(0.483),p=.00","-0.880(0.529),p=.10","-0.490(0.766),p=.52","-1.831(1.234),p=.14","-2.345(1.778),p=.19","-2.803(1.901),p=.14","-0.985(0.234),p=.00","-1.097(0.341),p=.00","-2.192(0.364),p=.00","-2.363(0.470),p=.00","-2.285(0.485),p=.00","-1.204(0.458),p=.01","-0.847(0.667),p=.20","-2.463(1.449),p=.09","-3.013(1.489),p=.04","-0.897(0.228),p=.00","-1.223(0.373),p=.00","-2.155(0.433),p=.00","-2.287(0.505),p=.00","-2.210(0.489),p=.00","-1.126(0.477),p=.02","-1.079(0.672),p=.11","-1.904(1.209),p=.12","-2.544(1.748),p=.15","-2.648(2.410),p=.27","-0.822(0.219),p=.00","-0.884(0.328),p=.01","-2.319(0.391),p=.00","-2.510(0.473),p=.00","-2.436(0.487),p=.00","-1.009(0.452),p=.03","-1.157(0.753),p=.12","-1.824(1.218),p=.13","-2.342(1.546),p=.13","-2.588(1.705),p=.13","-1.031(0.234),p=.00","-1.150(0.361),p=.00","-2.371(0.400),p=.00","-2.514(0.445),p=.00","-2.490(0.450),p=.00","-1.210(0.424),p=.00","-1.030(0.720),p=.15","-1.936(1.144),p=.09","-2.425(1.240),p=.05","-3.236(1.371),p=.02","-0.956(0.228),p=.00","-1.087(0.344),p=.00","-2.142(0.408),p=.00","-2.237(0.481),p=.00","-2.154(0.481),p=.00","-1.186(0.435),p=.01","-1.062(0.662),p=.11","-1.820(1.180),p=.12","-2.294(1.836),p=.21","-2.684(1.844),p=.15","-10.713(4.199),p=.01","-26.727(3.995),p=.00","-28.925(6.905),p=.00","-26.986(7.295),p=.00","-18.937(8.623),p=.03","-29.253(10.465),p=.01","-34.233(25.425),p=.18","-12.733(3.306),p=.00","-9.964(5.247),p=.06","-27.657(5.420),p=.00","-30.345(5.906),p=.00","-15.221(9.104),p=.10","-12.329(13.964),p=.38","-31.062(27.147),p=.25","-37.404(32.258),p=.25","-37.618(40.310),p=.35","-15.661(8.335),p=.06","-11.583(2.771),p=.00","-5.545(5.618),p=.32","-23.545(7.426),p=.00","-25.209(8.419),p=.00","-23.530(9.296),p=.01","-14.848(9.592),p=.12","-12.819(18.009),p=.48","-26.035(33.482),p=.44","-27.752(39.846),p=.49","-26.946(47.627),p=.57","-14.420(2.886),p=.00","-11.067(4.816),p=.02","-25.888(6.464),p=.00","-28.330(7.033),p=.00","-26.654(7.659),p=.00","-16.649(13.607),p=.22","-29.158(30.956),p=.35","-29.806(37.753),p=.43","-29.381(50.402),p=.56","-0.021(0.002),p=.00","-0.022(0.004),p=.00","-0.021(0.002),p=.00","-0.022(0.004),p=.00","-2.125(0.194),p=.00","-2.217(0.442),p=.00","-2.132(0.193),p=.00","-2.202(0.441),p=.00","-0.012(0.001),p=.00","-0.011(0.002),p=.00","-0.012(0.001),p=.00","-0.011(0.002),p=.00","-0.012(0.001),p=.00","-0.011(0.002),p=.00","-0.294(0.019),p=.00","-0.451(0.039),p=.00","-0.294(0.019),p=.00","-0.452(0.039),p=.00","-0.022(0.008),p=.01","-0.028(0.006),p=.00","-0.029(0.005),p=.00","-0.027(0.005),p=.00","-0.029(0.011),p=.01","-0.027(0.011),p=.01","-0.018(0.004),p=.00","-0.028(0.005),p=.00","-0.030(0.005),p=.00","-0.018(0.004),p=.00","-0.021(0.010),p=.03","-0.024(0.010),p=.02","-0.019(0.040),p=.64","-0.026(0.005),p=.00","-0.029(0.005),p=.00","-0.019(0.007),p=.01","-0.020(0.011),p=.08","-0.022(0.010),p=.03","-0.019(0.005),p=.00","-0.027(0.007),p=.00","-0.029(0.005),p=.00","-0.020(0.004),p=.00","-0.021(0.010),p=.04","-0.023(0.010),p=.03","-0.519(0.102),p=.00","-0.262(0.187),p=.16","-0.248(0.190),p=.19","-0.926(0.070),p=.00","-0.811(0.222),p=.00","-0.569(0.237),p=.02","-0.503(0.083),p=.00","-0.249(0.188),p=.18","-0.274(0.184),p=.14","-0.896(0.202),p=.00","-0.786(0.236),p=.00","-0.595(0.235),p=.01","-0.507(0.085),p=.00","-0.254(0.189),p=.18","-0.250(0.191),p=.19","-0.906(0.070),p=.00","-0.795(0.231),p=.00","-0.508(0.226),p=.03","-0.507(0.082),p=.00","-0.255(0.190),p=.18","-0.246(0.189),p=.19","-0.909(0.070),p=.00","-0.798(0.230),p=.00","-0.549(0.226),p=.01","-2.675(0.618),p=.00","-2.209(1.327),p=.10","-2.157(1.288),p=.09","-5.671(1.060),p=.00","-6.409(3.128),p=.04","-6.000(2.749),p=.03","-2.657(0.562),p=.00","-2.276(1.267),p=.07","-2.339(1.285),p=.07","-5.535(0.976),p=.00","-6.472(2.974),p=.03","-5.940(2.660),p=.03","-2.667(0.588),p=.00","-2.230(1.304),p=.09","-2.110(1.276),p=.10","-5.608(0.997),p=.00","-6.434(3.049),p=.04","-5.641(2.640),p=.03","-2.667(0.594),p=.00","-2.230(1.304),p=.09","-2.097(1.276),p=.10","-5.609(0.998),p=.00","-6.434(3.051),p=.04","-5.609(2.653),p=.04","-7.092(2.244),p=.00","-2.831(1.541),p=.07","-6.393(2.311),p=.01","-2.761(1.573),p=.08","-6.555(2.212),p=.00","-2.819(1.590),p=.08","-6.771(2.326),p=.00","-2.639(1.614),p=.10","-6.422(2.352),p=.01","-2.699(1.558),p=.08","+0.224(0.124),p=.07","+0.233(0.181),p=.20","+0.206(0.198),p=.30","+0.225(0.153),p=.14","+0.257(0.172),p=.14","+0.284(0.179),p=.11","+0.229(0.137),p=.09","+0.232(0.177),p=.19","+0.208(0.198),p=.29","+0.212(0.161),p=.19","+0.249(0.180),p=.17","+0.233(0.125),p=.06","+0.236(0.183),p=.20","+0.206(0.199),p=.30","+0.213(0.154),p=.17","+0.253(0.168),p=.13","+0.285(0.178),p=.11","+0.200(0.119),p=.09","+0.217(0.176),p=.22","+0.186(0.192),p=.33","+0.223(0.150),p=.14","+0.249(0.167),p=.14","+0.268(0.176),p=.13","+0.210(0.120),p=.08","+0.240(0.174),p=.17","+0.208(0.189),p=.27","+0.212(0.162),p=.19","+0.235(0.177),p=.18","+0.262(0.186),p=.16","+0.423(0.049),p=.00","+0.422(0.064),p=.00","+0.417(0.050),p=.00","+0.421(0.063),p=.00","+0.419(0.050),p=.00","+0.420(0.063),p=.00","-0.288(0.030),p=.00","-0.606(0.059),p=.00","-0.282(0.030),p=.00","-0.594(0.059),p=.00","-0.278(0.030),p=.00","-0.615(0.060),p=.00","-3.804(0.362),p=.00","-5.403(0.548),p=.00","-3.795(0.363),p=.00","-5.303(0.559),p=.00","-3.766(0.359),p=.00","-5.307(0.545),p=.00","-0.038(0.004),p=.00","-0.037(0.008),p=.00","-0.039(0.008),p=.00","-0.038(0.009),p=.00","-0.046(0.012),p=.00","-0.042(0.016),p=.01","-0.040(0.016),p=.01","-0.081(0.023),p=.00","-0.038(0.004),p=.00","-0.036(0.008),p=.00","-0.037(0.008),p=.00","-0.037(0.009),p=.00","-0.045(0.012),p=.00","-0.038(0.016),p=.02","-0.037(0.016),p=.02","-0.079(0.024),p=.00","-0.038(0.004),p=.00","-0.036(0.008),p=.00","-0.037(0.008),p=.00","-0.037(0.009),p=.00","-0.047(0.012),p=.00","-0.041(0.016),p=.01","-0.039(0.016),p=.02","-0.080(0.023),p=.00","-0.038(0.004),p=.00","-0.036(0.008),p=.00","-0.038(0.008),p=.00","-0.037(0.009),p=.00","-0.046(0.012),p=.00","-0.041(0.016),p=.01","-0.040(0.016),p=.01","-0.081(0.024),p=.00","-0.038(0.004),p=.00","-0.035(0.008),p=.00","-0.037(0.008),p=.00","-0.037(0.009),p=.00","-0.046(0.012),p=.00","-0.039(0.016),p=.01","-0.038(0.017),p=.02","-0.079(0.023),p=.00","-0.038(0.004),p=.00","-0.036(0.008),p=.00","-0.037(0.008),p=.00","-0.037(0.009),p=.00","-0.046(0.012),p=.00","-0.039(0.016),p=.01","-0.037(0.016),p=.02","-0.077(0.023),p=.00","-0.038(0.004),p=.00","-0.036(0.008),p=.00","-0.038(0.008),p=.00","-0.037(0.009),p=.00","-0.045(0.012),p=.00","-0.039(0.016),p=.01","-0.038(0.016),p=.02","-0.079(0.023),p=.00","-0.038(0.004),p=.00","-0.036(0.008),p=.00","-0.038(0.008),p=.00","-0.037(0.009),p=.00","-0.045(0.012),p=.00","-0.040(0.016),p=.01","-0.039(0.017),p=.02","-0.082(0.024),p=.00","-0.038(0.004),p=.00","-0.036(0.008),p=.00","-0.038(0.008),p=.00","-0.038(0.009),p=.00","-0.046(0.012),p=.00","-0.042(0.016),p=.01","-0.043(0.017),p=.01","-0.081(0.023),p=.00","-0.038(0.004),p=.00","-0.036(0.008),p=.00","-0.038(0.008),p=.00","-0.038(0.009),p=.00","-0.047(0.012),p=.00","-0.041(0.016),p=.01","-0.040(0.016),p=.02","-0.082(0.024),p=.00","-0.036(0.008),p=.00","-0.037(0.008),p=.00","-0.037(0.009),p=.00","-0.046(0.012),p=.00","-0.039(0.016),p=.01","-0.038(0.016),p=.02","-0.080(0.023),p=.00","-0.038(0.004),p=.00","-0.035(0.008),p=.00","-0.037(0.008),p=.00","-0.037(0.009),p=.00","-0.046(0.012),p=.00","-0.040(0.016),p=.01","-0.038(0.016),p=.02","-0.079(0.023),p=.00","-0.038(0.004),p=.00","-0.036(0.008),p=.00","-0.037(0.008),p=.00","-0.037(0.010),p=.00","-0.042(0.016),p=.01","-0.041(0.017),p=.01","-0.082(0.023),p=.00","-0.038(0.004),p=.00","-0.036(0.008),p=.00","-0.038(0.008),p=.00","-0.038(0.009),p=.00","-0.047(0.012),p=.00","-0.042(0.016),p=.01","-0.041(0.016),p=.01","-0.080(0.023),p=.00","-0.038(0.004),p=.00","-0.036(0.008),p=.00","-0.038(0.008),p=.00","-0.038(0.009),p=.00","-0.046(0.012),p=.00","-0.041(0.016),p=.01","-0.039(0.016),p=.02","-0.081(0.023),p=.00","-0.038(0.004),p=.00","-0.036(0.008),p=.00","-0.038(0.008),p=.00","-0.038(0.009),p=.00","-0.046(0.012),p=.00","-0.042(0.016),p=.01","-0.041(0.017),p=.01","-0.081(0.023),p=.00","-0.038(0.004),p=.00","-0.036(0.008),p=.00","-0.038(0.008),p=.00","-0.038(0.009),p=.00","-0.046(0.012),p=.00","-0.039(0.016),p=.01","-0.038(0.017),p=.02","-0.080(0.024),p=.00","-0.039(0.004),p=.00","-0.037(0.008),p=.00","-0.038(0.008),p=.00","-0.038(0.009),p=.00","-0.046(0.013),p=.00","-0.039(0.016),p=.02","-0.038(0.017),p=.03","-0.078(0.024),p=.00","-0.037(0.005),p=.00","-0.034(0.008),p=.00","-0.036(0.008),p=.00","-0.036(0.010),p=.00","-0.046(0.012),p=.00","-0.038(0.016),p=.02","-0.037(0.016),p=.02","-0.080(0.023),p=.00","-0.954(0.144),p=.00","-0.468(0.306),p=.12","-0.416(0.317),p=.19","-1.501(0.403),p=.00","-1.748(0.600),p=.00","-1.814(0.605),p=.00","-2.484(0.897),p=.01","-0.947(0.145),p=.00","-0.413(0.305),p=.17","-0.456(0.304),p=.13","-0.412(0.316),p=.19","-1.512(0.405),p=.00","-1.730(0.604),p=.00","-1.810(0.606),p=.00","-2.471(0.897),p=.01","-0.038(0.004),p=.00","-0.036(0.008),p=.00","-0.037(0.008),p=.00","-0.037(0.009),p=.00","-0.047(0.012),p=.00","-0.041(0.016),p=.01","-1.796(0.609),p=.00","-2.474(0.898),p=.01","-0.953(0.144),p=.00","-0.414(0.306),p=.18","-0.455(0.305),p=.14","-0.404(0.318),p=.20","-1.485(0.401),p=.00","-1.737(0.596),p=.00","-1.808(0.598),p=.00","-2.445(0.878),p=.01","-0.038(0.004),p=.00","-0.035(0.008),p=.00","-0.037(0.008),p=.00","-0.037(0.009),p=.00","-0.046(0.012),p=.00","-0.039(0.016),p=.01","-1.756(0.595),p=.00","-2.406(0.873),p=.01","-0.950(0.143),p=.00","-0.420(0.302),p=.17","-0.459(0.302),p=.13","-0.410(0.314),p=.19","-1.516(0.407),p=.00","-1.729(0.612),p=.01","-1.814(0.611),p=.00","-2.450(0.888),p=.01","-0.946(0.146),p=.00","-0.420(0.309),p=.17","-0.461(0.309),p=.14","-0.412(0.321),p=.20","-1.469(0.401),p=.00","-1.750(0.601),p=.00","-1.833(0.605),p=.00","-2.472(0.886),p=.01","-0.948(0.143),p=.00","-0.411(0.301),p=.17","-0.453(0.301),p=.13","-0.392(0.315),p=.21","-1.498(0.408),p=.00","-1.701(0.606),p=.01","-1.784(0.607),p=.00","-2.386(0.887),p=.01","-0.940(0.145),p=.00","-0.410(0.305),p=.18","-0.452(0.304),p=.14","-0.395(0.315),p=.21","-1.465(0.405),p=.00","-1.740(0.616),p=.01","-1.828(0.623),p=.00","-2.464(0.901),p=.01","-0.953(0.146),p=.00","-0.420(0.307),p=.17","-0.460(0.306),p=.13","-0.406(0.319),p=.20","-1.523(0.407),p=.00","-1.753(0.603),p=.00","-1.839(0.604),p=.00","-2.476(0.893),p=.01","-0.951(0.145),p=.00","-0.411(0.306),p=.18","-0.453(0.305),p=.14","-0.404(0.318),p=.20","-1.491(0.405),p=.00","-1.698(0.596),p=.00","-1.784(0.598),p=.00","-2.455(0.890),p=.01","-0.941(0.145),p=.00","-0.407(0.308),p=.19","-0.449(0.307),p=.14","-0.392(0.319),p=.22","-1.521(0.408),p=.00","-1.730(0.616),p=.01","-1.815(0.616),p=.00","-2.471(0.907),p=.01","-0.994(0.143),p=.00","-0.504(0.308),p=.10","-0.543(0.307),p=.08","-0.511(0.321),p=.11","-1.549(0.406),p=.00","-1.714(0.615),p=.01","-1.800(0.617),p=.00","-2.449(0.909),p=.01","-0.931(0.144),p=.00","-0.418(0.305),p=.17","-0.372(0.316),p=.24","-1.488(0.406),p=.00","-1.725(0.615),p=.01","-1.811(0.620),p=.00","-2.475(0.901),p=.01","-0.951(0.143),p=.00","-0.415(0.307),p=.18","-0.456(0.306),p=.14","-0.405(0.317),p=.20","-1.512(0.406),p=.00","-1.852(0.608),p=.00","-2.519(0.899),p=.01","-0.952(0.146),p=.00","-0.431(0.314),p=.17","-0.471(0.314),p=.13","-0.413(0.324),p=.20","-1.524(0.405),p=.00","-1.862(0.600),p=.00","-1.828(0.623),p=.00","-2.577(0.894),p=.00","-0.957(0.146),p=.00","-0.424(0.311),p=.17","-0.465(0.310),p=.13","-0.411(0.322),p=.20","-1.511(0.406),p=.00","-1.752(0.606),p=.00","-1.831(0.608),p=.00","-2.501(0.895),p=.01","-0.939(0.147),p=.00","-0.402(0.306),p=.19","-0.444(0.305),p=.15","-0.394(0.317),p=.21","-1.515(0.406),p=.00","-1.731(0.615),p=.01","-1.812(0.615),p=.00","-2.430(0.895),p=.01","-0.037(0.005),p=.00","-0.034(0.008),p=.00","-0.036(0.008),p=.00","-0.046(0.012),p=.00","-0.038(0.016),p=.02","-1.828(0.605),p=.00","-2.564(0.899),p=.00","NaN(NaN),p=NA","NaN(NaN),p=NA","NaN(NaN),p=NA","NaN(NaN),p=NA","NaN(NaN),p=NA","NaN(NaN),p=NA","NaN(NaN),p=NA","NaN(NaN),p=NA","NaN(NaN),p=NA","NaN(NaN),p=NA","NaN(NaN),p=NA","NaN(NaN),p=NA","NaN(NaN),p=NA","NaN(NaN),p=NA","NaN(NaN),p=NA","NaN(NaN),p=NA","NaN(NaN),p=NA","NaN(NaN),p=NA","NaN(NaN),p=NA","NaN(NaN),p=NA","NaN(NaN),p=NA","NaN(NaN),p=NA","NaN(NaN),p=NA","NaN(NaN),p=NA","NaN(NaN),p=NA","NaN(NaN),p=NA","NaN(NaN),p=NA","NaN(NaN),p=NA","NaN(NaN),p=NA","NaN(NaN),p=NA","NaN(NaN),p=NA","NaN(NaN),p=NA","NaN(NaN),p=NA","NaN(NaN),p=NA","NaN(NaN),p=NA","NaN(NaN),p=NA","NaN(NaN),p=NA","NaN(NaN),p=NA","NaN(NaN),p=NA","NaN(NaN),p=NA","NaN(NaN),p=NA","NaN(NaN),p=NA","NaN(NaN),p=NA","NaN(NaN),p=NA","NaN(NaN),p=NA","NaN(NaN),p=NA","NaN(NaN),p=NA","NaN(NaN),p=NA","NaN(NaN),p=NA","NaN(NaN),p=NA","NaN(NaN),p=NA","NaN(NaN),p=NA","NaN(NaN),p=NA","NaN(NaN),p=NA","NaN(NaN),p=NA","NaN(NaN),p=NA","NaN(NaN),p=NA","NaN(NaN),p=NA","NaN(NaN),p=NA","NaN(NaN),p=NA","NaN(NaN),p=NA","NaN(NaN),p=NA","NaN(NaN),p=NA","NaN(NaN),p=NA","NaN(NaN),p=NA","NaN(NaN),p=NA","NaN(NaN),p=NA","NaN(NaN),p=NA","NaN(NaN),p=NA","NaN(NaN),p=NA","NaN(NaN),p=NA","NaN(NaN),p=NA","NaN(NaN),p=NA","NaN(NaN),p=NA","NaN(NaN),p=NA","NaN(NaN),p=NA","NaN(NaN),p=NA","NaN(NaN),p=NA","NaN(NaN),p=NA","NaN(NaN),p=NA","NaN(NaN),p=NA","NaN(NaN),p=NA","NaN(NaN),p=NA","NaN(NaN),p=NA","NaN(NaN),p=NA","NaN(NaN),p=NA","NaN(NaN),p=NA","NaN(NaN),p=NA","NaN(NaN),p=NA","NaN(NaN),p=NA","NaN(NaN),p=NA","NaN(NaN),p=NA","NaN(NaN),p=NA","NaN(NaN),p=NA","NaN(NaN),p=NA","NaN(NaN),p=NA","NaN(NaN),p=NA","NaN(NaN),p=NA","NaN(NaN),p=NA","NaN(NaN),p=NA","NaN(NaN),p=NA","NaN(NaN),p=NA","NaN(NaN),p=NA","NaN(NaN),p=NA","NaN(NaN),p=NA","NaN(NaN),p=NA","NaN(NaN),p=NA","NaN(NaN),p=NA","NaN(NaN),p=NA","NaN(NaN),p=NA","NaN(NaN),p=NA","NaN(NaN),p=NA","NaN(NaN),p=NA","NaN(NaN),p=NA","NaN(NaN),p=NA","NaN(NaN),p=NA","NaN(NaN),p=NA","NaN(NaN),p=NA","NaN(NaN),p=NA","NaN(NaN),p=NA","NaN(NaN),p=NA","NaN(NaN),p=NA","NaN(NaN),p=NA","NaN(NaN),p=NA","NaN(NaN),p=NA","NaN(NaN),p=NA","NaN(NaN),p=NA","NaN(NaN),p=NA","NaN(NaN),p=NA","NaN(NaN),p=NA","NaN(NaN),p=NA","NaN(NaN),p=NA","NaN(NaN),p=NA","NaN(NaN),p=NA","NaN(NaN),p=NA","NaN(NaN),p=NA","NaN(NaN),p=NA","NaN(NaN),p=NA","NaN(NaN),p=NA","NaN(NaN),p=NA","NaN(NaN),p=NA","NaN(NaN),p=NA","NaN(NaN),p=NA","NaN(NaN),p=NA","NaN(NaN),p=NA","NaN(NaN),p=NA","NaN(NaN),p=NA","NaN(NaN),p=NA","NaN(NaN),p=NA","-2.050(0.182),p=.00","-1.998(0.265),p=.00","-2.183(0.285),p=.00","-2.475(0.165),p=.00","-2.506(0.235),p=.00","-2.359(0.291),p=.00","NaN(NaN),p=NA","NaN(NaN),p=NA","NaN(NaN),p=NA","NaN(NaN),p=NA","NaN(NaN),p=NA","NaN(NaN),p=NA","+0.525(0.365),p=.15","+0.184(0.182),p=.31","+0.552(0.428),p=.20","+0.199(0.187),p=.29","+0.530(0.403),p=.19","+0.224(0.179),p=.21","+0.560(0.357),p=.12","+0.513(0.280),p=.07","+0.210(0.180),p=.24","-0.332(0.028),p=.00","-0.336(0.031),p=.00","-0.339(0.034),p=.00","-0.360(0.050),p=.00","-0.374(0.050),p=.00","-0.368(0.079),p=.00","-0.332(0.029),p=.00","-0.334(0.031),p=.00","-0.338(0.035),p=.00","-0.358(0.049),p=.00","-0.370(0.050),p=.00","-0.351(0.074),p=.00","-0.329(0.029),p=.00","-0.331(0.031),p=.00","-0.335(0.034),p=.00","-0.344(0.051),p=.00","-0.361(0.052),p=.00","-0.343(0.070),p=.00","-0.330(0.028),p=.00","-0.333(0.032),p=.00","-0.338(0.035),p=.00","-0.335(0.050),p=.00","-0.353(0.051),p=.00","-0.325(0.072),p=.00","-0.330(0.028),p=.00","-0.336(0.031),p=.00","-0.340(0.049),p=.00","-0.355(0.049),p=.00","-0.332(0.028),p=.00","-0.334(0.031),p=.00","-0.335(0.034),p=.00","-0.363(0.047),p=.00","-0.370(0.048),p=.00","-0.350(0.077),p=.00","-0.324(0.029),p=.00","-0.332(0.031),p=.00","-0.387(0.052),p=.00","-0.385(0.048),p=.00","-0.333(0.028),p=.00","-0.335(0.031),p=.00","-0.338(0.037),p=.00","-0.345(0.048),p=.00","-0.353(0.049),p=.00","-0.233(0.088),p=.11","-0.338(0.034),p=.00","-0.340(0.038),p=.00","-0.334(0.055),p=.00","-0.353(0.054),p=.00","-0.333(0.028),p=.00","-0.337(0.031),p=.00","-0.339(0.034),p=.00","-0.353(0.048),p=.00","-0.367(0.050),p=.00","-0.363(0.078),p=.00","-0.331(0.028),p=.00","-0.335(0.031),p=.00","-0.340(0.050),p=.00","-0.352(0.051),p=.00","-8.862(1.052),p=.00","-9.207(1.118),p=.00","-7.214(1.405),p=.00","-10.495(2.269),p=.00","-10.223(2.256),p=.00","-3.651(3.421),p=.29","-8.497(1.036),p=.00","-8.930(1.114),p=.00","-7.039(1.417),p=.00","-10.444(2.354),p=.00","-10.104(2.296),p=.00","-3.182(3.635),p=.38","-8.454(1.035),p=.00","-8.871(1.111),p=.00","-7.006(1.424),p=.00","-10.317(2.365),p=.00","-10.254(2.306),p=.00","-4.528(3.478),p=.19","-8.614(1.057),p=.00","-8.985(1.118),p=.00","-10.020(2.353),p=.00","-9.877(2.321),p=.00","-8.426(1.039),p=.00","-8.906(1.127),p=.00","-10.528(2.325),p=.00","-10.167(2.321),p=.00","-8.415(1.044),p=.00","-8.902(1.097),p=.00","-9.932(2.274),p=.00","-9.437(2.286),p=.00","-8.766(1.035),p=.00","-9.491(1.138),p=.00","-10.637(2.428),p=.00","-10.114(2.400),p=.00","-8.450(1.052),p=.00","-8.896(1.119),p=.00","-7.034(1.407),p=.00","-10.086(2.358),p=.00","-9.853(2.382),p=.00","-3.285(3.708),p=.38","-7.313(1.344),p=.00","-7.849(1.416),p=.00","-6.705(2.467),p=.01","-5.961(2.531),p=.02","-8.432(1.007),p=.00","-8.932(1.077),p=.00","-7.128(1.399),p=.00","-11.043(2.338),p=.00","-10.770(2.333),p=.00","-3.268(3.622),p=.37","-8.463(1.028),p=.00","-8.835(1.113),p=.00","-10.484(2.333),p=.00","-10.092(2.356),p=.00","NaN(NaN),p=NA","-0.028(0.002),p=.00","-0.028(0.003),p=.00","-0.027(0.003),p=.00","-0.025(0.003),p=.00","NaN(NaN),p=NA","-0.045(0.004),p=.00","-0.044(0.005),p=.00","-0.043(0.005),p=.00","-0.046(0.007),p=.00","NaN(NaN),p=NA","-0.029(0.003),p=.00","-0.029(0.003),p=.00","-0.028(0.003),p=.00","-0.026(0.003),p=.00","NaN(NaN),p=NA","-0.044(0.004),p=.00","-0.043(0.005),p=.00","-0.042(0.005),p=.00","-0.045(0.007),p=.00","NaN(NaN),p=NA","-0.028(0.003),p=.00","-0.028(0.003),p=.00","-0.028(0.003),p=.00","-0.025(0.003),p=.00","NaN(NaN),p=NA","-0.045(0.004),p=.00","-0.044(0.005),p=.00","-0.043(0.005),p=.00","-0.046(0.007),p=.00","NaN(NaN),p=NA","-0.028(0.002),p=.00","-0.028(0.003),p=.00","-0.028(0.003),p=.00","-0.025(0.003),p=.00","NaN(NaN),p=NA","-0.045(0.004),p=.00","-0.044(0.005),p=.00","-0.043(0.005),p=.00","-0.046(0.007),p=.00","-0.028(0.003),p=.00","-0.028(0.003),p=.00","-0.028(0.003),p=.00","-0.045(0.004),p=.00","-0.045(0.005),p=.00","-0.043(0.005),p=.00","NaN(NaN),p=NA","-0.028(0.002),p=.00","-0.028(0.003),p=.00","-0.028(0.003),p=.00","-0.025(0.003),p=.00","NaN(NaN),p=NA","-0.045(0.004),p=.00","-0.044(0.005),p=.00","-0.043(0.005),p=.00","-0.046(0.007),p=.00","NaN(NaN),p=NA","-0.029(0.003),p=.00","-0.028(0.003),p=.00","-0.028(0.003),p=.00","-0.026(0.003),p=.00","NaN(NaN),p=NA","-0.044(0.004),p=.00","-0.044(0.005),p=.00","-0.042(0.005),p=.00","-0.045(0.007),p=.00","NaN(NaN),p=NA","-0.030(0.002),p=.00","-0.030(0.003),p=.00","-0.030(0.003),p=.00","-0.028(0.003),p=.00","NaN(NaN),p=NA","-0.043(0.005),p=.00","-0.042(0.005),p=.00","-0.040(0.005),p=.00","-0.044(0.007),p=.00","NaN(NaN),p=NA","-0.028(0.002),p=.00","-0.028(0.003),p=.00","-0.028(0.003),p=.00","-0.025(0.003),p=.00","NaN(NaN),p=NA","-0.045(0.004),p=.00","-0.044(0.005),p=.00","-0.043(0.005),p=.00","-0.046(0.007),p=.00","NaN(NaN),p=NA","-0.029(0.002),p=.00","-0.029(0.002),p=.00","-0.028(0.002),p=.00","-0.026(0.003),p=.00","NaN(NaN),p=NA","-0.045(0.003),p=.00","-0.044(0.004),p=.00","-0.043(0.004),p=.00","-0.046(0.007),p=.00","NaN(NaN),p=NA","-0.027(0.002),p=.00","-0.027(0.003),p=.00","-0.027(0.003),p=.00","-0.025(0.003),p=.00","NaN(NaN),p=NA","-0.044(0.004),p=.00","-0.044(0.005),p=.00","-0.042(0.005),p=.00","-0.046(0.007),p=.00","-0.569(0.032),p=.00","-0.580(0.035),p=.00","-0.580(0.036),p=.00","-0.567(0.042),p=.00","-0.895(0.128),p=.00","-0.904(0.137),p=.00","-0.895(0.140),p=.00","-0.870(0.199),p=.00","-0.574(0.043),p=.00","-0.962(0.084),p=.00","-0.569(0.042),p=.00","-0.947(0.081),p=.00","-0.570(0.041),p=.00","-0.948(0.083),p=.00","-0.572(0.033),p=.00","-0.585(0.035),p=.00","-0.585(0.036),p=.00","-0.923(0.129),p=.00","-0.935(0.136),p=.00","-0.926(0.138),p=.00","-0.582(0.034),p=.00","-0.592(0.036),p=.00","-0.591(0.036),p=.00","-0.570(0.043),p=.00","-0.891(0.130),p=.00","-0.899(0.136),p=.00","-0.889(0.140),p=.00","-0.869(0.205),p=.00","-0.571(0.035),p=.00","-0.584(0.037),p=.00","-0.583(0.038),p=.00","-0.568(0.047),p=.00","-0.923(0.138),p=.00","-0.937(0.146),p=.00","-0.923(0.151),p=.00","-0.867(0.220),p=.00","-0.574(0.031),p=.00","-0.585(0.034),p=.00","-0.584(0.034),p=.00","-0.568(0.043),p=.00","-0.916(0.127),p=.00","-0.932(0.134),p=.00","-0.919(0.136),p=.00","-0.952(0.081),p=.00","-0.574(0.033),p=.00","-0.587(0.035),p=.00","-0.586(0.036),p=.00","-0.567(0.043),p=.00","-0.896(0.133),p=.00","-0.909(0.140),p=.00","-0.899(0.142),p=.00","-0.864(0.205),p=.00"],["+20.576(0.809),p=.00","+13.788(1.109),p=.00","+18.362(2.244),p=.00","+18.930(2.296),p=.00","+19.278(2.574),p=.00","+20.480(1.038),p=.00","+20.437(1.079),p=.00","+19.415(6.068),p=.00","+23.860(7.142),p=.00","+22.337(9.148),p=.01","+11.865(0.253),p=.00","+9.811(0.291),p=.00","+10.338(0.637),p=.00","+10.773(0.622),p=.00","+10.803(0.644),p=.00","+12.057(0.279),p=.00","+12.048(0.291),p=.00","+11.768(1.166),p=.00","+11.019(2.041),p=.00","+10.811(2.139),p=.00","+40.510(0.736),p=.00","+35.582(1.048),p=.00","+37.634(2.568),p=.00","+38.659(2.864),p=.00","+38.661(3.012),p=.00","+36.923(0.961),p=.00","+36.779(1.015),p=.00","+33.923(5.398),p=.00","+30.794(7.674),p=.00","+32.957(8.498),p=.00","+13.508(0.300),p=.00","+11.193(0.404),p=.00","+13.286(0.840),p=.00","+13.539(0.901),p=.00","+13.429(1.001),p=.00","+13.748(0.387),p=.00","+13.744(0.400),p=.00","+15.570(1.977),p=.00","+14.487(3.400),p=.00","+15.086(3.653),p=.00","+34.151(1.088),p=.00","+24.036(1.451),p=.00","+29.557(3.377),p=.00","+30.452(3.550),p=.00","+30.555(3.803),p=.00","+31.259(1.459),p=.00","+31.271(1.509),p=.00","+29.579(6.508),p=.00","+29.099(7.481),p=.00","+31.342(8.025),p=.00","+19.589(0.583),p=.00","+15.704(0.716),p=.00","+13.047(1.578),p=.00","+13.230(2.106),p=.00","+13.328(2.333),p=.00","+22.631(0.519),p=.00","+23.319(0.568),p=.00","+17.889(2.761),p=.00","+18.291(3.872),p=.00","+18.016(4.756),p=.00","+21.608(0.569),p=.00","+16.529(0.801),p=.00","+18.154(1.844),p=.00","+18.275(2.088),p=.00","+18.226(2.234),p=.00","+20.811(0.782),p=.00","+20.357(0.816),p=.00","+15.125(3.552),p=.00","+14.653(5.218),p=.01","+14.136(5.294),p=.01","+26.191(0.192),p=.00","+26.221(0.194),p=.00","+26.452(0.635),p=.00","+26.678(0.878),p=.00","+26.902(1.109),p=.00","+26.191(0.192),p=.00","+26.221(0.194),p=.00","+26.452(0.635),p=.00","+26.678(0.878),p=.00","+26.902(1.109),p=.00","+45.315(1.240),p=.00","+32.631(1.646),p=.00","+39.725(2.941),p=.00","+41.226(3.255),p=.00","+40.950(3.382),p=.00","+39.386(1.323),p=.00","+38.966(1.430),p=.00","+37.406(6.233),p=.00","+39.141(11.012),p=.00","+38.745(14.001),p=.01","+124.949(7.189),p=.00","+172.264(7.605),p=.00","+170.191(16.749),p=.00","+162.470(17.859),p=.00","+171.522(18.384),p=.00","+132.394(9.274),p=.00","+131.369(9.601),p=.00","+169.303(31.727),p=.00","+163.374(43.634),p=.00","+167.620(52.367),p=.00","+44.766(1.112),p=.00","+32.818(1.278),p=.00","+34.444(2.728),p=.00","+34.767(3.201),p=.00","+35.855(3.209),p=.00","+43.980(1.338),p=.00","+44.345(1.402),p=.00","+32.101(4.618),p=.00","+33.972(6.683),p=.00","+34.380(7.595),p=.00","+20.655(0.815),p=.00","+13.976(1.124),p=.00","+18.348(2.408),p=.00","+18.919(2.410),p=.00","+19.257(2.700),p=.00","+20.374(1.044),p=.00","+20.283(1.091),p=.00","+19.131(5.310),p=.00","+24.088(7.081),p=.00","+22.468(8.673),p=.01","+11.877(0.254),p=.00","+9.829(0.293),p=.00","+10.372(0.736),p=.00","+10.821(0.699),p=.00","+10.848(0.726),p=.00","+12.057(0.289),p=.00","+12.054(0.299),p=.00","+11.897(0.937),p=.00","+11.162(1.801),p=.00","+10.753(2.115),p=.00","+40.571(0.753),p=.00","+35.661(1.055),p=.00","+37.524(2.558),p=.00","+38.492(2.703),p=.00","+38.490(2.804),p=.00","+37.006(0.966),p=.00","+36.819(1.017),p=.00","+33.291(4.616),p=.00","+30.030(8.345),p=.00","+32.157(10.006),p=.00","+13.561(0.304),p=.00","+11.288(0.409),p=.00","+13.433(0.874),p=.00","+13.686(0.932),p=.00","+13.592(1.043),p=.00","+13.758(0.388),p=.00","+13.742(0.403),p=.00","+13.862(2.045),p=.00","+12.873(3.478),p=.00","+13.646(3.997),p=.00","+34.125(1.084),p=.00","+24.082(1.462),p=.00","+29.493(3.492),p=.00","+30.397(3.808),p=.00","+30.451(3.975),p=.00","+31.264(1.459),p=.00","+31.219(1.516),p=.00","+25.713(5.004),p=.00","+25.363(7.486),p=.00","+27.808(8.432),p=.00","+19.529(0.590),p=.00","+15.601(0.723),p=.00","+12.798(1.621),p=.00","+13.095(2.004),p=.00","+13.258(2.356),p=.00","+22.504(0.520),p=.00","+23.153(0.569),p=.00","+17.086(2.403),p=.00","+17.396(3.772),p=.00","+16.905(4.233),p=.00","+21.562(0.572),p=.00","+16.509(0.804),p=.00","+18.033(1.890),p=.00","+18.170(2.053),p=.00","+18.138(2.134),p=.00","+20.748(0.789),p=.00","+20.276(0.816),p=.00","+15.783(5.221),p=.00","+15.177(5.933),p=.01","+26.280(0.168),p=.00","+26.417(0.174),p=.00","+26.032(0.316),p=.00","+25.989(0.388),p=.00","+25.994(0.405),p=.00","+26.185(0.190),p=.00","+26.215(0.190),p=.00","+26.466(0.421),p=.00","+26.682(0.713),p=.00","+26.848(0.980),p=.00","+45.289(1.263),p=.00","+32.704(1.644),p=.00","+39.841(3.033),p=.00","+41.394(3.138),p=.00","+41.133(3.297),p=.00","+39.372(1.316),p=.00","+38.887(1.454),p=.00","+38.351(4.975),p=.00","+40.182(10.255),p=.00","+39.354(11.125),p=.00","+124.614(7.176),p=.00","+171.994(7.571),p=.00","+169.039(17.511),p=.00","+161.176(19.410),p=.00","+170.175(20.396),p=.00","+133.216(9.447),p=.00","+130.327(10.045),p=.00","+162.107(28.693),p=.00","+154.661(49.678),p=.00","+160.353(61.407),p=.01","+44.715(1.087),p=.00","+32.804(1.252),p=.00","+34.643(2.723),p=.00","+34.945(3.254),p=.00","+35.994(3.324),p=.00","+43.710(1.324),p=.00","+44.876(1.422),p=.00","+32.176(4.184),p=.00","+33.961(6.155),p=.00","+34.229(7.466),p=.00","+13.927(0.954),p=.00","+18.434(1.903),p=.00","+18.992(2.490),p=.00","+19.328(2.751),p=.00","+20.521(1.034),p=.00","+19.312(3.806),p=.00","+24.223(7.972),p=.00","+13.522(0.305),p=.00","+11.197(0.406),p=.00","+13.402(0.877),p=.00","+13.643(0.965),p=.00","+13.758(0.391),p=.00","+13.749(0.404),p=.00","+14.091(2.161),p=.00","+12.895(3.529),p=.00","+13.692(3.842),p=.00","+31.446(1.438),p=.00","+45.328(1.235),p=.00","+32.418(1.631),p=.00","+39.057(3.073),p=.00","+40.609(3.396),p=.00","+40.569(3.684),p=.00","+39.499(1.322),p=.00","+38.474(1.479),p=.00","+39.175(4.821),p=.00","+40.948(7.831),p=.00","+40.534(9.492),p=.00","+125.491(7.239),p=.00","+175.119(7.446),p=.00","+171.278(18.577),p=.00","+163.084(21.445),p=.00","+172.131(21.869),p=.00","+131.497(9.851),p=.00","+159.642(30.558),p=.00","+153.886(58.287),p=.01","+160.288(70.482),p=.02","+3.887(0.060),p=.00","+3.271(0.081),p=.00","+5.291(0.053),p=.00","+4.868(0.072),p=.00","+3.887(0.060),p=.00","+3.271(0.081),p=.00","+5.291(0.053),p=.00","+4.868(0.072),p=.00","+17.645(0.180),p=.00","+18.252(0.256),p=.00","+3.924(0.060),p=.00","+3.350(0.081),p=.00","+5.305(0.053),p=.00","+4.901(0.072),p=.00","+3.887(0.060),p=.00","+3.271(0.081),p=.00","+5.291(0.053),p=.00","+4.868(0.072),p=.00","+3.537(0.116),p=.00","+2.334(0.177),p=.00","+2.262(0.194),p=.00","+4.132(0.094),p=.00","+3.157(0.272),p=.00","+3.136(0.278),p=.00","+9.656(0.056),p=.00","+9.019(0.130),p=.00","+9.004(0.141),p=.00","+9.634(0.052),p=.00","+9.289(0.162),p=.00","+9.334(0.154),p=.00","+4.564(0.112),p=.00","+3.795(0.179),p=.00","+3.944(0.190),p=.00","+4.246(0.125),p=.00","+3.171(0.252),p=.00","+3.383(0.264),p=.00","+5.671(0.088),p=.00","+5.014(0.139),p=.00","+5.116(0.157),p=.00","+5.349(0.100),p=.00","+4.318(0.204),p=.00","+4.442(0.212),p=.00","+3.540(0.065),p=.00","+2.283(0.142),p=.00","+2.243(0.155),p=.00","+4.125(0.063),p=.00","+3.249(0.207),p=.00","+3.264(0.217),p=.00","+9.145(0.138),p=.00","+8.361(0.230),p=.00","+8.022(0.282),p=.00","+9.419(0.261),p=.00","+8.785(0.209),p=.00","+8.744(0.230),p=.00","+4.430(0.069),p=.00","+3.523(0.131),p=.00","+3.693(0.144),p=.00","+4.024(0.070),p=.00","+2.752(0.191),p=.00","+2.966(0.198),p=.00","+5.568(0.054),p=.00","+4.716(0.103),p=.00","+4.835(0.118),p=.00","+5.184(0.060),p=.00","+4.140(0.166),p=.00","+4.323(0.171),p=.00","+3.455(0.063),p=.00","+2.246(0.129),p=.00","+2.222(0.146),p=.00","+4.079(0.063),p=.00","+3.103(0.209),p=.00","+3.069(0.220),p=.00","+9.094(0.119),p=.00","+8.371(0.177),p=.00","+8.078(0.250),p=.00","+9.368(0.087),p=.00","+8.746(0.231),p=.00","+8.603(0.248),p=.00","+4.377(0.807),p=.00","+3.457(0.125),p=.00","+3.583(0.138),p=.00","+4.014(0.084),p=.00","+2.787(0.184),p=.00","+2.940(0.195),p=.00","+5.506(0.613),p=.00","+4.654(0.102),p=.00","+4.750(0.114),p=.00","+5.175(0.079),p=.00","+4.130(0.167),p=.00","+4.238(0.164),p=.00","+24.107(5.142),p=.00","+23.804(4.664),p=.00","+10.163(3.045),p=.00","+16.564(2.542),p=.00","+38.183(6.489),p=.00","+37.535(5.556),p=.00","+12.016(2.227),p=.00","+14.293(2.142),p=.00","+19.547(4.531),p=.00","+22.771(3.967),p=.00","+19.486(4.708),p=.00","+18.093(4.734),p=.00","+19.531(4.805),p=.00","+22.281(3.892),p=.00","+21.412(3.701),p=.00","+22.729(3.916),p=.00","+25.623(5.178),p=.00","+23.792(5.059),p=.00","+24.117(5.391),p=.00","+24.743(4.758),p=.00","+23.914(4.640),p=.00","+10.234(2.950),p=.00","+9.294(2.872),p=.00","+10.163(3.010),p=.00","+16.827(2.399),p=.00","+16.409(2.370),p=.00","+16.521(2.526),p=.00","+39.786(6.712),p=.00","+37.097(6.436),p=.00","+38.150(6.739),p=.00","+38.451(5.530),p=.00","+37.095(5.058),p=.00","+37.485(5.522),p=.00","+13.003(2.386),p=.00","+11.594(2.132),p=.00","+11.999(2.199),p=.00","+15.001(2.173),p=.00","+14.386(2.019),p=.00","+14.285(2.074),p=.00","+24.298(0.353),p=.00","+22.830(0.355),p=.00","+17.798(0.175),p=.00","+17.641(0.191),p=.00","+21.107(0.274),p=.00","+17.652(0.274),p=.00","+23.532(0.380),p=.00","+21.912(0.373),p=.00","+17.291(0.187),p=.00","+17.232(0.195),p=.00","+21.442(0.314),p=.00","+17.889(0.304),p=.00","+24.256(0.353),p=.00","+22.821(0.354),p=.00","+17.815(0.176),p=.00","+17.648(0.191),p=.00","+21.041(0.277),p=.00","+17.604(0.275),p=.00","+14.141(0.062),p=.00","+13.314(0.143),p=.00","+13.351(0.141),p=.00","+13.472(0.165),p=.00","+14.393(0.138),p=.00","+13.786(0.229),p=.00","+13.812(0.227),p=.00","+13.754(0.293),p=.00","+9.627(0.076),p=.00","+8.923(0.145),p=.00","+8.928(0.145),p=.00","+8.977(0.158),p=.00","+9.771(0.163),p=.00","+8.884(0.287),p=.00","+8.889(0.287),p=.00","+8.942(0.336),p=.00","+9.986(0.072),p=.00","+9.406(0.138),p=.00","+9.418(0.138),p=.00","+9.373(0.156),p=.00","+10.157(0.148),p=.00","+9.536(0.249),p=.00","+9.551(0.247),p=.00","+9.444(0.285),p=.00","+37.980(0.431),p=.00","+31.615(0.689),p=.00","+31.787(0.688),p=.00","+32.915(0.764),p=.00","+35.603(0.806),p=.00","+30.651(1.151),p=.00","+30.780(1.134),p=.00","+31.344(1.334),p=.00","+6.351(0.098),p=.00","+5.114(0.165),p=.00","+5.159(0.163),p=.00","+5.187(0.182),p=.00","+6.592(0.200),p=.00","+5.155(0.272),p=.00","+5.149(0.273),p=.00","+5.040(0.308),p=.00","+8.362(0.094),p=.00","+7.250(0.173),p=.00","+7.293(0.170),p=.00","+7.278(0.199),p=.00","+8.899(0.180),p=.00","+7.399(0.246),p=.00","+7.389(0.247),p=.00","+7.238(0.292),p=.00","+7.333(0.074),p=.00","+6.395(0.140),p=.00","+6.418(0.141),p=.00","+6.501(0.160),p=.00","+7.818(0.146),p=.00","+6.841(0.218),p=.00","+6.859(0.212),p=.00","+6.852(0.246),p=.00","+7.650(0.030),p=.00","+7.503(0.055),p=.00","+7.508(0.054),p=.00","+7.562(0.056),p=.00","+7.881(0.049),p=.00","+7.720(0.080),p=.00","+7.724(0.077),p=.00","+7.776(0.089),p=.00","+9.737(0.144),p=.00","+7.755(0.274),p=.00","+7.864(0.274),p=.00","+8.157(0.297),p=.00","+11.675(0.278),p=.00","+9.702(0.441),p=.00","+9.861(0.437),p=.00","+10.347(0.513),p=.00","+11.010(0.187),p=.00","+8.253(0.323),p=.00","+8.328(0.320),p=.00","+8.493(0.372),p=.00","+10.182(0.392),p=.00","+8.155(0.655),p=.00","+8.186(0.653),p=.00","+7.948(0.739),p=.00","+9.923(0.319),p=.00","+9.981(0.316),p=.00","+10.196(0.372),p=.00","+11.946(0.376),p=.00","+9.788(0.623),p=.00","+9.835(0.621),p=.00","+9.529(0.718),p=.00","+12.141(0.136),p=.00","+9.567(0.239),p=.00","+9.627(0.236),p=.00","+9.752(0.261),p=.00","+13.093(0.278),p=.00","+10.700(0.398),p=.00","+10.805(0.384),p=.00","+10.940(0.455),p=.00","+28.767(0.074),p=.00","+27.566(0.155),p=.00","+27.587(0.155),p=.00","+27.661(0.159),p=.00","+27.379(0.281),p=.00","+27.408(0.276),p=.00","+27.302(0.299),p=.00","+7.502(0.121),p=.00","+4.850(0.205),p=.00","+4.899(0.204),p=.00","+5.044(0.222),p=.00","+7.761(0.225),p=.00","+4.928(0.317),p=.00","+4.950(0.319),p=.00","+4.883(0.396),p=.00","+26.474(0.357),p=.00","+21.895(0.680),p=.00","+22.084(0.673),p=.00","+23.145(0.766),p=.00","+26.078(0.694),p=.00","+21.083(1.052),p=.00","+21.259(1.008),p=.00","+20.312(1.173),p=.00","+9.737(0.144),p=.00","+7.755(0.274),p=.00","+7.795(0.274),p=.00","+35.457(1.049),p=.00","+11.675(0.278),p=.00","+9.702(0.441),p=.00","+9.742(0.437),p=.00","+35.950(1.707),p=.00","+6.399(0.097),p=.00","+5.281(0.185),p=.00","+5.318(0.184),p=.00","+5.567(0.202),p=.00","+5.941(0.177),p=.00","+4.890(0.279),p=.00","+4.892(0.280),p=.00","+4.987(0.331),p=.00","+19.233(0.194),p=.00","+16.405(0.352),p=.00","+16.473(0.347),p=.00","+16.826(0.387),p=.00","+17.895(0.336),p=.00","+15.449(0.543),p=.00","+15.454(0.544),p=.00","+15.361(0.624),p=.00","+9.809(0.030),p=.00","+9.702(0.073),p=.00","+9.710(0.075),p=.00","+9.753(0.089),p=.00","+9.768(0.082),p=.00","+9.512(0.142),p=.00","+9.522(0.142),p=.00","+9.609(0.182),p=.00","+14.142(0.062),p=.00","+13.350(0.141),p=.00","+13.471(0.165),p=.00","+14.386(0.139),p=.00","+13.786(0.228),p=.00","+13.817(0.225),p=.00","+13.765(0.290),p=.00","+9.629(0.076),p=.00","+8.924(0.145),p=.00","+8.929(0.145),p=.00","+8.976(0.158),p=.00","+9.770(0.164),p=.00","+8.887(0.289),p=.00","+8.895(0.288),p=.00","+8.946(0.337),p=.00","+9.986(0.072),p=.00","+9.406(0.138),p=.00","+9.418(0.138),p=.00","+9.373(0.156),p=.00","+10.157(0.148),p=.00","+9.536(0.249),p=.00","+9.553(0.248),p=.00","+9.445(0.286),p=.00","+37.991(0.431),p=.00","+31.624(0.689),p=.00","+31.790(0.690),p=.00","+32.919(0.765),p=.00","+35.598(0.808),p=.00","+30.647(1.155),p=.00","+30.800(1.138),p=.00","+31.352(1.339),p=.00","+6.351(0.098),p=.00","+5.114(0.165),p=.00","+5.159(0.163),p=.00","+5.187(0.182),p=.00","+6.592(0.200),p=.00","+5.155(0.272),p=.00","+5.147(0.274),p=.00","+5.034(0.308),p=.00","+8.363(0.094),p=.00","+7.251(0.173),p=.00","+7.293(0.170),p=.00","+7.278(0.199),p=.00","+8.897(0.180),p=.00","+7.399(0.246),p=.00","+7.384(0.248),p=.00","+7.229(0.292),p=.00","+7.336(0.074),p=.00","+6.396(0.140),p=.00","+6.419(0.141),p=.00","+6.501(0.159),p=.00","+7.814(0.146),p=.00","+6.839(0.218),p=.00","+6.862(0.212),p=.00","+6.857(0.246),p=.00","+7.651(0.030),p=.00","+7.504(0.055),p=.00","+7.509(0.054),p=.00","+7.563(0.056),p=.00","+7.881(0.050),p=.00","+7.719(0.080),p=.00","+7.725(0.077),p=.00","+7.776(0.089),p=.00","+9.740(0.144),p=.00","+7.759(0.274),p=.00","+7.798(0.274),p=.00","+8.156(0.297),p=.00","+11.659(0.278),p=.00","+9.696(0.440),p=.00","+9.744(0.435),p=.00","+10.348(0.511),p=.00","+11.014(0.187),p=.00","+8.255(0.323),p=.00","+8.327(0.320),p=.00","+8.492(0.372),p=.00","+10.189(0.392),p=.00","+8.171(0.657),p=.00","+8.200(0.655),p=.00","+7.957(0.743),p=.00","+12.594(0.184),p=.00","+9.923(0.319),p=.00","+9.980(0.316),p=.00","+10.194(0.372),p=.00","+11.950(0.377),p=.00","+9.796(0.626),p=.00","+9.847(0.623),p=.00","+9.533(0.722),p=.00","+12.148(0.136),p=.00","+9.568(0.239),p=.00","+9.627(0.237),p=.00","+9.751(0.261),p=.00","+13.079(0.278),p=.00","+10.711(0.398),p=.00","+10.824(0.381),p=.00","+10.966(0.450),p=.00","+28.768(0.074),p=.00","+27.565(0.155),p=.00","+27.585(0.155),p=.00","+27.659(0.158),p=.00","+28.666(0.174),p=.00","+27.377(0.281),p=.00","+27.413(0.276),p=.00","+27.306(0.300),p=.00","+7.502(0.121),p=.00","+4.898(0.204),p=.00","+5.043(0.222),p=.00","+7.752(0.225),p=.00","+4.930(0.317),p=.00","+4.953(0.319),p=.00","+4.891(0.396),p=.00","+26.478(0.357),p=.00","+21.902(0.681),p=.00","+22.085(0.673),p=.00","+23.141(0.766),p=.00","+26.071(0.695),p=.00","+21.289(1.009),p=.00","+20.352(1.177),p=.00","+42.274(0.521),p=.00","+33.813(0.945),p=.00","+34.014(0.943),p=.00","+35.432(1.050),p=.00","+42.973(1.030),p=.00","+35.400(1.523),p=.00","+9.744(0.435),p=.00","+36.038(1.705),p=.00","+6.400(0.097),p=.00","+5.282(0.185),p=.00","+5.318(0.184),p=.00","+5.567(0.203),p=.00","+5.941(0.177),p=.00","+4.894(0.280),p=.00","+4.899(0.281),p=.00","+4.989(0.332),p=.00","+19.237(0.194),p=.00","+16.409(0.352),p=.00","+16.475(0.348),p=.00","+16.828(0.387),p=.00","+17.895(0.337),p=.00","+15.451(0.545),p=.00","+15.458(0.547),p=.00","+15.357(0.627),p=.00","+9.809(0.030),p=.00","+9.702(0.073),p=.00","+9.710(0.075),p=.00","+9.768(0.082),p=.00","+9.512(0.142),p=.00","+9.526(0.142),p=.00","+9.616(0.183),p=.00","+14.142(0.062),p=.00","+13.315(0.143),p=.00","+13.349(0.141),p=.00","+13.470(0.165),p=.00","+14.389(0.139),p=.00","+13.787(0.229),p=.00","+13.813(0.227),p=.00","+13.759(0.293),p=.00","+9.629(0.076),p=.00","+8.925(0.145),p=.00","+8.929(0.145),p=.00","+8.976(0.158),p=.00","+9.769(0.163),p=.00","+8.883(0.287),p=.00","+8.890(0.287),p=.00","+8.942(0.336),p=.00","+9.988(0.072),p=.00","+9.409(0.138),p=.00","+9.419(0.138),p=.00","+9.373(0.156),p=.00","+10.154(0.149),p=.00","+9.534(0.250),p=.00","+9.550(0.248),p=.00","+9.441(0.285),p=.00","+37.988(0.431),p=.00","+31.627(0.689),p=.00","+31.788(0.690),p=.00","+32.915(0.765),p=.00","+35.595(0.808),p=.00","+30.628(1.153),p=.00","+30.762(1.136),p=.00","+31.309(1.338),p=.00","+6.353(0.098),p=.00","+5.116(0.166),p=.00","+5.157(0.163),p=.00","+5.186(0.183),p=.00","+6.590(0.201),p=.00","+5.151(0.272),p=.00","+5.145(0.274),p=.00","+5.035(0.308),p=.00","+8.363(0.094),p=.00","+7.252(0.173),p=.00","+7.292(0.170),p=.00","+7.277(0.199),p=.00","+8.896(0.180),p=.00","+7.396(0.246),p=.00","+7.383(0.248),p=.00","+7.230(0.292),p=.00","+7.336(0.074),p=.00","+6.398(0.140),p=.00","+6.419(0.141),p=.00","+6.501(0.160),p=.00","+7.817(0.146),p=.00","+6.840(0.218),p=.00","+6.859(0.212),p=.00","+6.853(0.246),p=.00","+7.651(0.030),p=.00","+7.504(0.055),p=.00","+7.509(0.055),p=.00","+7.562(0.056),p=.00","+7.881(0.049),p=.00","+7.718(0.080),p=.00","+7.723(0.077),p=.00","+7.774(0.089),p=.00","+9.740(0.144),p=.00","+7.760(0.274),p=.00","+7.796(0.275),p=.00","+8.156(0.298),p=.00","+11.664(0.279),p=.00","+9.697(0.440),p=.00","+9.739(0.436),p=.00","+10.339(0.512),p=.00","+11.014(0.187),p=.00","+8.258(0.323),p=.00","+8.327(0.320),p=.00","+8.491(0.372),p=.00","+10.180(0.392),p=.00","+8.152(0.655),p=.00","+7.857(0.777),p=.00","+7.941(0.739),p=.00","+12.594(0.184),p=.00","+9.926(0.319),p=.00","+9.981(0.316),p=.00","+10.194(0.372),p=.00","+11.945(0.376),p=.00","+9.784(0.623),p=.00","+9.833(0.621),p=.00","+9.521(0.718),p=.00","+12.145(0.136),p=.00","+9.571(0.239),p=.00","+9.627(0.237),p=.00","+9.750(0.261),p=.00","+13.076(0.279),p=.00","+10.694(0.399),p=.00","+9.951(0.483),p=.00","+10.933(0.454),p=.00","+28.769(0.074),p=.00","+27.568(0.155),p=.00","+27.587(0.155),p=.00","+27.660(0.159),p=.00","+28.667(0.174),p=.00","+27.375(0.281),p=.00","+27.407(0.276),p=.00","+27.299(0.299),p=.00","+7.502(0.121),p=.00","+4.851(0.205),p=.00","+4.897(0.204),p=.00","+5.042(0.222),p=.00","+7.754(0.226),p=.00","+4.928(0.317),p=.00","+4.950(0.319),p=.00","+4.885(0.396),p=.00","+26.478(0.357),p=.00","+21.902(0.681),p=.00","+22.079(0.673),p=.00","+23.136(0.766),p=.00","+26.073(0.696),p=.00","+21.070(1.052),p=.00","+21.259(1.008),p=.00","+20.309(1.174),p=.00","+9.740(0.144),p=.00","+7.760(0.274),p=.00","+7.796(0.275),p=.00","+35.462(1.051),p=.00","+11.664(0.279),p=.00","+9.697(0.440),p=.00","+9.739(0.436),p=.00","+35.972(1.694),p=.00","+6.401(0.097),p=.00","+5.282(0.185),p=.00","+5.317(0.184),p=.00","+5.565(0.203),p=.00","+5.939(0.177),p=.00","+4.887(0.280),p=.00","+4.889(0.280),p=.00","+4.982(0.331),p=.00","+19.237(0.194),p=.00","+16.410(0.352),p=.00","+16.474(0.348),p=.00","+16.826(0.387),p=.00","+17.891(0.337),p=.00","+15.440(0.544),p=.00","+15.445(0.545),p=.00","+15.346(0.624),p=.00","+9.809(0.030),p=.00","+9.751(0.089),p=.00","+9.768(0.082),p=.00","+9.523(0.141),p=.00","+9.612(0.181),p=.00","+62.089(0.116),p=.00","+61.208(0.171),p=.00","+61.150(0.197),p=.00","+60.911(0.148),p=.00","+59.700(0.180),p=.00","+59.459(0.236),p=.00","+95.377(0.177),p=.00","+93.882(0.257),p=.00","+93.786(0.297),p=.00","+93.606(0.223),p=.00","+91.570(0.262),p=.00","+91.207(0.337),p=.00","+14.652(0.775),p=.00","+14.903(1.812),p=.00","+3.858(0.132),p=.00","+3.946(0.311),p=.00","+5.677(0.124),p=.00","+5.883(0.319),p=.00","+11.147(0.398),p=.00","+28.227(1.194),p=.00","+28.757(2.730),p=.00","+14.451(0.615),p=.00","+14.416(0.661),p=.00","+14.955(0.713),p=.00","+13.245(0.938),p=.00","+13.489(0.913),p=.00","+16.617(1.454),p=.00","+3.735(0.113),p=.00","+3.797(0.124),p=.00","+3.858(0.131),p=.00","+3.537(0.181),p=.00","+3.526(0.181),p=.00","+3.719(0.281),p=.00","+5.603(0.104),p=.00","+5.659(0.106),p=.00","+5.678(0.112),p=.00","+5.708(0.135),p=.00","+5.676(0.152),p=.00","+5.909(0.244),p=.00","+16.661(0.386),p=.00","+16.735(0.402),p=.00","+17.148(0.402),p=.00","+15.592(0.560),p=.00","+15.880(0.498),p=.00","+17.612(0.730),p=.00","+30.830(1.071),p=.00","+30.469(1.008),p=.00","+34.258(1.121),p=.00","+33.711(1.157),p=.00","+7.635(0.188),p=.00","+7.790(0.185),p=.00","+7.812(0.205),p=.00","+6.990(0.244),p=.00","+6.940(0.270),p=.00","+7.211(0.395),p=.00","+28.420(0.305),p=.00","+28.851(0.213),p=.00","+28.166(0.402),p=.00","+28.289(0.340),p=.00","+11.129(0.312),p=.00","+11.290(0.339),p=.00","+11.239(0.382),p=.00","+10.485(0.472),p=.00","+10.174(0.572),p=.00","+10.646(0.887),p=.00","+11.878(0.467),p=.00","+11.931(0.465),p=.00","+11.345(0.616),p=.00","+11.227(0.572),p=.00","+28.591(1.010),p=.00","+28.704(1.080),p=.00","+29.087(1.188),p=.00","+26.536(1.529),p=.00","+25.905(1.430),p=.00","+30.524(2.326),p=.00","+17.627(0.637),p=.00","+17.325(0.559),p=.00","+16.118(1.059),p=.00","+15.461(0.983),p=.00","+14.335(0.652),p=.00","+14.349(0.661),p=.00","+14.808(0.752),p=.00","+13.245(0.983),p=.00","+13.571(0.896),p=.00","+16.779(1.484),p=.00","+3.733(0.121),p=.00","+3.794(0.123),p=.00","+3.859(0.131),p=.00","+3.523(0.191),p=.00","+3.517(0.181),p=.00","+3.973(0.260),p=.00","+5.603(0.112),p=.00","+5.658(0.106),p=.00","+5.675(0.124),p=.00","+5.700(0.138),p=.00","+5.669(0.151),p=.00","+6.023(0.254),p=.00","+16.567(0.394),p=.00","+16.664(0.403),p=.00","+15.801(0.546),p=.00","+16.027(0.477),p=.00","+30.876(1.068),p=.00","+30.480(1.006),p=.00","+34.344(1.124),p=.00","+33.758(1.156),p=.00","+7.622(0.194),p=.00","+7.785(0.185),p=.00","+7.021(0.265),p=.00","+6.968(0.271),p=.00","+28.422(0.307),p=.00","+28.845(0.213),p=.00","+28.148(0.404),p=.00","+28.268(0.340),p=.00","+11.127(0.346),p=.00","+11.296(0.337),p=.00","+11.153(0.397),p=.00","+10.581(0.565),p=.00","+10.296(0.563),p=.00","+11.027(0.759),p=.00","+11.825(0.464),p=.00","+11.909(0.454),p=.00","+11.419(0.568),p=.00","+11.281(0.536),p=.00","+28.406(1.128),p=.00","+28.597(1.073),p=.00","+28.462(1.187),p=.00","+26.892(1.557),p=.00","+26.095(1.380),p=.00","+31.499(2.407),p=.00","+17.579(0.639),p=.00","+17.290(0.555),p=.00","+16.183(1.021),p=.00","+15.512(0.969),p=.00","NaN(NaN),p=NA","+13.727(0.233),p=.00","+13.026(0.234),p=.00","+13.049(0.238),p=.00","+13.141(0.300),p=.00","NaN(NaN),p=NA","+14.240(0.327),p=.00","+13.204(0.348),p=.00","+13.071(0.358),p=.00","+13.195(0.479),p=.00","NaN(NaN),p=NA","+17.241(0.395),p=.00","+16.250(0.413),p=.00","+16.254(0.422),p=.00","+16.499(0.520),p=.00","NaN(NaN),p=NA","+17.430(0.555),p=.00","+16.075(0.557),p=.00","+15.933(0.572),p=.00","+16.038(0.754),p=.00","NaN(NaN),p=NA","+3.938(0.073),p=.00","+3.768(0.073),p=.00","+3.765(0.073),p=.00","+3.670(0.096),p=.00","NaN(NaN),p=NA","+4.095(0.100),p=.00","+3.885(0.109),p=.00","+3.843(0.110),p=.00","+3.851(0.166),p=.00","NaN(NaN),p=NA","+5.623(0.072),p=.00","+5.526(0.075),p=.00","+5.517(0.075),p=.00","+5.551(0.096),p=.00","NaN(NaN),p=NA","+5.497(0.096),p=.00","+5.325(0.105),p=.00","+5.262(0.103),p=.00","+5.353(0.134),p=.00","+27.989(0.405),p=.00","+27.647(0.442),p=.00","+27.639(0.448),p=.00","+26.801(0.500),p=.00","+25.542(0.592),p=.00","+25.368(0.617),p=.00","NaN(NaN),p=NA","+20.801(0.243),p=.00","+20.348(0.256),p=.00","+20.405(0.257),p=.00","+20.455(0.338),p=.00","NaN(NaN),p=NA","+19.000(0.331),p=.00","+18.416(0.350),p=.00","+18.434(0.356),p=.00","+18.490(0.517),p=.00","NaN(NaN),p=NA","+29.029(0.478),p=.00","+27.591(0.445),p=.00","+27.705(0.435),p=.00","+27.862(0.569),p=.00","NaN(NaN),p=NA","+32.680(0.592),p=.00","+30.871(0.553),p=.00","+30.720(0.551),p=.00","+30.664(0.811),p=.00","NaN(NaN),p=NA","+28.103(0.099),p=.00","+27.943(0.103),p=.00","+27.968(0.105),p=.00","+28.058(0.137),p=.00","NaN(NaN),p=NA","+27.752(0.174),p=.00","+27.584(0.187),p=.00","+27.511(0.180),p=.00","+27.129(0.240),p=.00","NaN(NaN),p=NA","+42.648(1.117),p=.00","+41.826(1.235),p=.00","+41.779(1.254),p=.00","+41.527(1.570),p=.00","NaN(NaN),p=NA","+50.478(1.747),p=.00","+48.144(1.918),p=.00","+48.090(1.997),p=.00","+49.544(2.652),p=.00","NaN(NaN),p=NA","+35.417(0.551),p=.00","+33.811(0.591),p=.00","+33.858(0.593),p=.00","+34.502(0.737),p=.00","NaN(NaN),p=NA","+34.492(0.838),p=.00","+32.273(0.892),p=.00","+31.951(0.867),p=.00","+32.736(1.129),p=.00","NaN(NaN),p=NA","+18.365(0.286),p=.00","+17.322(0.282),p=.00","+17.407(0.283),p=.00","+17.713(0.340),p=.00","NaN(NaN),p=NA","+17.775(0.385),p=.00","+16.245(0.396),p=.00","+16.029(0.403),p=.00","+15.904(0.559),p=.00","+13.719(0.231),p=.00","+13.020(0.234),p=.00","+13.046(0.238),p=.00","+13.137(0.300),p=.00","+14.222(0.328),p=.00","+13.173(0.348),p=.00","+13.041(0.355),p=.00","+13.127(0.472),p=.00","+16.488(0.521),p=.00","+15.975(0.768),p=.00","+3.668(0.097),p=.00","+3.832(0.176),p=.00","+5.549(0.096),p=.00","+5.341(0.139),p=.00","+27.975(0.401),p=.00","+27.623(0.438),p=.00","+27.616(0.445),p=.00","+26.789(0.510),p=.00","+25.516(0.601),p=.00","+25.370(0.624),p=.00","+29.024(0.458),p=.00","+27.587(0.442),p=.00","+27.706(0.435),p=.00","+27.865(0.566),p=.00","+32.663(0.550),p=.00","+30.862(0.550),p=.00","+30.697(0.550),p=.00","+30.598(0.849),p=.00","+28.097(0.101),p=.00","+27.942(0.106),p=.00","+27.967(0.108),p=.00","+28.055(0.138),p=.00","+27.755(0.176),p=.00","+27.585(0.190),p=.00","+27.521(0.183),p=.00","+27.130(0.238),p=.00","+35.412(0.552),p=.00","+33.798(0.591),p=.00","+33.844(0.594),p=.00","+34.494(0.744),p=.00","+34.487(0.750),p=.00","+32.216(0.758),p=.00","+31.905(0.804),p=.00","+32.616(1.147),p=.00","+18.374(0.288),p=.00","+17.326(0.281),p=.00","+17.412(0.282),p=.00","+17.721(0.340),p=.00","+17.785(0.396),p=.00","+16.242(0.403),p=.00","+16.028(0.410),p=.00","+15.910(0.588),p=.00"],["+0.693(0.180),p=.00","+1.193(0.264),p=.00","+0.768(0.433),p=.08","+0.805(0.472),p=.09","+0.749(0.472),p=.11","+0.928(0.211),p=.00","+0.934(0.308),p=.00","+1.837(1.100),p=.10","+1.745(1.404),p=.21","+1.431(1.887),p=.45","-0.011(0.048),p=.81","+0.035(0.066),p=.59","+0.010(0.121),p=.94","-0.049(0.162),p=.76","-0.058(0.169),p=.73","-0.017(0.065),p=.79","-0.018(0.102),p=.86","+0.029(0.351),p=.93","+0.179(0.517),p=.73","+0.270(0.583),p=.64","-0.221(0.187),p=.24","-0.511(0.294),p=.08","-0.769(0.692),p=.27","-0.835(0.776),p=.28","-0.659(0.736),p=.37","-0.205(0.235),p=.38","-0.139(0.350),p=.69","+0.808(1.229),p=.51","+1.126(1.732),p=.52","+0.938(1.979),p=.64","+0.263(0.072),p=.00","+0.360(0.105),p=.00","+0.257(0.171),p=.13","+0.297(0.181),p=.10","+0.298(0.205),p=.15","+0.196(0.081),p=.02","+0.164(0.106),p=.12","-0.345(0.454),p=.45","-0.183(0.593),p=.76","-0.290(0.625),p=.64","+0.554(0.211),p=.01","+0.680(0.320),p=.03","+0.504(0.642),p=.43","+0.417(0.709),p=.56","+0.523(0.772),p=.50","+0.328(0.255),p=.20","+0.259(0.414),p=.53","+1.415(1.007),p=.16","+1.336(1.256),p=.29","+1.220(1.308),p=.35","-0.462(0.142),p=.00","-0.596(0.220),p=.01","+0.048(0.486),p=.92","+0.243(0.578),p=.67","+0.289(0.643),p=.65","-0.647(0.181),p=.00","-1.336(0.254),p=.00","-0.739(0.778),p=.34","-0.688(1.124),p=.54","-0.550(1.216),p=.65","+0.130(0.144),p=.37","+0.047(0.229),p=.84","-0.031(0.354),p=.93","-0.092(0.443),p=.83","+0.071(0.501),p=.89","+0.619(0.240),p=.01","+1.066(0.314),p=.00","+1.766(0.843),p=.04","+1.786(1.071),p=.10","+1.815(1.146),p=.11","+0.094(0.050),p=.06","+0.095(0.061),p=.12","+0.007(0.212),p=.97","-0.057(0.294),p=.84","-0.046(0.343),p=.89","+0.094(0.050),p=.06","+0.095(0.061),p=.12","+0.007(0.212),p=.97","-0.057(0.294),p=.84","-0.046(0.343),p=.89","+0.553(0.231),p=.02","+1.032(0.446),p=.02","+0.255(0.597),p=.67","+0.324(0.616),p=.60","+0.454(0.601),p=.45","+0.523(0.356),p=.14","+1.011(0.593),p=.09","+0.868(2.120),p=.68","+0.658(2.428),p=.79","+0.645(2.926),p=.82","+1.076(1.328),p=.42","+1.118(2.115),p=.60","+3.311(4.157),p=.43","+3.437(5.007),p=.49","+3.263(5.092),p=.52","+1.794(2.069),p=.39","+1.849(3.175),p=.56","-6.157(8.665),p=.48","-2.907(10.201),p=.78","-2.389(11.578),p=.84","+0.054(0.225),p=.81","-0.222(0.362),p=.54","+0.092(0.648),p=.89","+0.329(0.721),p=.65","+0.125(0.770),p=.87","-0.361(0.297),p=.22","-0.735(0.460),p=.11","+1.546(1.290),p=.23","+1.612(2.173),p=.46","+1.285(2.224),p=.56","+0.642(0.181),p=.00","+1.077(0.256),p=.00","+0.777(0.389),p=.04","+0.815(0.441),p=.07","+0.762(0.467),p=.10","+0.999(0.226),p=.00","+1.045(0.334),p=.00","+1.642(0.998),p=.10","+1.464(1.585),p=.36","+1.169(1.413),p=.41","-0.020(0.048),p=.67","+0.022(0.067),p=.74","-0.012(0.133),p=.93","-0.081(0.167),p=.63","-0.088(0.175),p=.62","-0.017(0.078),p=.83","-0.022(0.110),p=.84","+0.085(0.307),p=.78","+0.205(0.348),p=.56","+0.409(0.562),p=.47","-0.267(0.196),p=.17","-0.569(0.293),p=.05","-0.700(0.618),p=.26","-0.729(0.667),p=.28","-0.561(0.665),p=.40","-0.258(0.240),p=.28","-0.155(0.358),p=.67","+0.364(0.993),p=.71","+0.658(1.781),p=.71","+0.506(2.254),p=.82","+0.228(0.074),p=.00","+0.296(0.105),p=.01","+0.171(0.172),p=.32","+0.210(0.202),p=.30","+0.202(0.219),p=.35","+0.191(0.080),p=.02","+0.169(0.112),p=.13","-0.216(0.441),p=.62","-0.079(0.560),p=.89","-0.281(0.770),p=.71","+0.577(0.202),p=.00","+0.664(0.306),p=.03","+0.554(0.619),p=.37","+0.464(0.690),p=.50","+0.593(0.785),p=.45","+0.325(0.275),p=.24","+0.306(0.432),p=.48","+1.309(1.037),p=.21","+1.246(1.265),p=.33","+1.027(1.624),p=.53","-0.439(0.151),p=.00","-0.543(0.227),p=.02","+0.102(0.524),p=.85","+0.303(0.610),p=.62","+0.332(0.722),p=.65","-0.598(0.185),p=.00","-1.265(0.258),p=.00","-0.624(0.667),p=.35","-0.621(1.158),p=.59","-0.365(1.399),p=.79","+0.159(0.144),p=.27","+0.063(0.225),p=.78","+0.043(0.350),p=.90","-0.023(0.443),p=.96","+0.127(0.492),p=.80","+0.656(0.240),p=.01","+1.108(0.297),p=.00","+1.546(0.994),p=.12","+1.628(1.291),p=.21","+0.054(0.034),p=.11","-0.013(0.045),p=.78","+0.088(0.068),p=.20","+0.097(0.092),p=.29","+0.108(0.094),p=.25","+0.098(0.053),p=.07","+0.100(0.062),p=.11","-0.002(0.172),p=.99","-0.063(0.287),p=.83","-0.016(0.336),p=.96","+0.568(0.233),p=.01","+0.988(0.422),p=.02","+0.201(0.498),p=.69","+0.238(0.575),p=.68","+0.358(0.573),p=.53","+0.539(0.349),p=.12","+1.078(0.630),p=.09","+1.120(1.453),p=.44","+0.856(1.806),p=.64","+1.083(1.932),p=.57","+1.363(1.362),p=.32","+1.425(2.084),p=.49","+4.128(4.628),p=.37","+4.405(5.709),p=.44","+4.302(5.915),p=.47","+1.225(2.120),p=.56","+3.135(3.460),p=.36","-1.544(9.183),p=.87","+2.761(11.683),p=.81","+2.454(16.055),p=.88","+0.085(0.209),p=.68","-0.211(0.318),p=.51","-0.005(0.619),p=.99","+0.242(0.748),p=.75","+0.058(0.793),p=.94","-0.192(0.308),p=.53","-1.357(0.469),p=.00","+1.452(1.341),p=.28","+1.453(2.121),p=.49","+1.188(2.051),p=.56","+1.117(0.201),p=.00","+0.733(0.371),p=.05","+0.776(0.466),p=.10","+0.726(0.488),p=.14","+0.905(0.265),p=.00","+1.566(1.535),p=.31","+1.403(1.750),p=.42","+0.254(0.073),p=.00","+0.357(0.107),p=.00","+0.196(0.180),p=.27","+0.243(0.187),p=.19","+0.191(0.082),p=.02","+0.163(0.110),p=.14","-0.338(0.418),p=.42","-0.098(0.674),p=.89","-0.307(0.803),p=.70","+0.223(0.233),p=.34","+0.545(0.214),p=.01","+1.162(0.444),p=.01","+0.564(0.592),p=.34","+0.600(0.682),p=.38","+0.623(0.775),p=.42","+0.474(0.336),p=.16","+1.047(0.667),p=.12","+0.678(1.621),p=.68","+0.479(2.238),p=.83","+0.495(2.267),p=.83","+0.801(1.304),p=.54","-0.552(2.049),p=.79","+2.415(5.060),p=.63","+2.913(6.203),p=.64","+2.728(6.222),p=.66","+2.262(3.105),p=.47","-0.019(9.186),p=.99","+3.487(13.747),p=.80","+2.944(17.252),p=.86","-0.041(0.008),p=.00","+0.005(0.011),p=.61","-0.036(0.008),p=.00","-0.029(0.010),p=.00","-0.041(0.008),p=.00","+0.005(0.011),p=.61","-0.036(0.008),p=.00","-0.029(0.010),p=.00","-0.084(0.026),p=.00","-0.071(0.038),p=.06","-0.057(0.009),p=.00","-0.020(0.012),p=.11","-0.047(0.009),p=.00","-0.031(0.012),p=.01","-0.042(0.008),p=.00","+0.005(0.011),p=.64","-0.037(0.008),p=.00","-0.029(0.010),p=.00","-0.118(0.017),p=.00","-0.073(0.026),p=.01","-0.035(0.029),p=.23","-0.145(0.020),p=.00","-0.151(0.049),p=.00","-0.112(0.050),p=.02","-0.070(0.014),p=.00","-0.072(0.025),p=.00","-0.069(0.025),p=.01","-0.084(0.013),p=.00","-0.125(0.034),p=.00","-0.117(0.034),p=.00","-0.076(0.017),p=.00","-0.029(0.030),p=.34","-0.005(0.031),p=.87","-0.098(0.017),p=.00","-0.094(0.047),p=.04","-0.105(0.042),p=.01","-0.086(0.013),p=.00","-0.074(0.024),p=.00","-0.057(0.027),p=.03","-0.106(0.016),p=.00","-0.077(0.044),p=.08","-0.070(0.041),p=.09","-0.153(0.010),p=.00","-0.109(0.020),p=.00","-0.075(0.022),p=.00","-0.194(0.012),p=.00","-0.244(0.033),p=.00","-0.195(0.036),p=.00","-0.162(0.020),p=.00","-0.085(0.041),p=.04","-0.078(0.049),p=.11","-0.216(0.028),p=.00","-0.223(0.059),p=.00","-0.189(0.052),p=.00","-0.063(0.032),p=.05","-0.039(0.023),p=.10","-0.034(0.025),p=.17","-0.075(0.016),p=.00","-0.049(0.033),p=.14","-0.067(0.031),p=.03","-0.078(0.010),p=.00","-0.083(0.019),p=.00","-0.083(0.020),p=.00","-0.093(0.016),p=.00","-0.102(0.032),p=.00","-0.117(0.030),p=.00","-0.146(0.009),p=.00","-0.113(0.017),p=.00","-0.080(0.020),p=.00","-0.192(0.012),p=.00","-0.234(0.034),p=.00","-0.181(0.036),p=.00","-0.170(0.077),p=.03","-0.135(0.063),p=.03","-0.124(0.045),p=.01","-0.217(0.071),p=.00","-0.235(0.067),p=.00","-0.181(0.053),p=.00","-0.076(0.538),p=.89","-0.052(0.107),p=.63","-0.038(0.022),p=.09","-0.082(0.047),p=.08","-0.055(0.043),p=.20","-0.060(0.031),p=.05","-0.087(0.630),p=.89","-0.087(0.262),p=.74","-0.080(0.020),p=.00","-0.102(0.049),p=.04","-0.108(0.049),p=.03","-0.102(0.030),p=.00","-0.172(0.488),p=.72","-0.077(0.459),p=.87","+0.199(0.286),p=.53","-0.364(0.274),p=.45","+0.018(0.372),p=.96","+0.016(0.524),p=.98","+0.340(0.171),p=.05","+0.035(0.180),p=.85","-0.165(0.407),p=.69","-0.750(0.429),p=.08","-0.160(0.389),p=.68","-0.184(0.413),p=.66","-0.168(0.441),p=.70","-0.774(0.378),p=.04","-0.741(0.418),p=.08","-0.749(0.453),p=.10","-0.117(0.445),p=.79","-0.223(0.482),p=.64","-0.180(0.537),p=.74","-0.076(0.415),p=.85","-0.068(0.431),p=.88","+0.275(0.277),p=.41","+0.203(0.264),p=.53","+0.198(0.293),p=.55","-0.351(0.265),p=.47","-0.329(0.273),p=.50","-0.343(0.285),p=.43","-0.026(0.387),p=.95","-0.019(0.369),p=.96","+0.033(0.385),p=.93","-0.030(0.449),p=.95","-0.005(0.460),p=.99","+0.040(0.503),p=.94","+0.383(0.168),p=.02","+0.355(0.157),p=.02","+0.353(0.164),p=.03","+0.033(0.185),p=.86","+0.052(0.191),p=.78","+0.038(0.191),p=.84","-0.350(0.021),p=.00","-0.376(0.027),p=.00","-0.164(0.016),p=.00","-0.167(0.020),p=.00","-0.309(0.027),p=.00","-0.219(0.028),p=.00","-0.378(0.029),p=.00","-0.391(0.038),p=.00","-0.157(0.022),p=.00","-0.160(0.025),p=.00","-0.478(0.035),p=.00","-0.324(0.035),p=.00","-0.335(0.023),p=.00","-0.374(0.028),p=.00","-0.173(0.018),p=.00","-0.169(0.020),p=.00","-0.290(0.030),p=.00","-0.198(0.029),p=.00","+0.043(0.014),p=.00","+0.111(0.035),p=.00","+0.107(0.035),p=.00","+0.094(0.039),p=.02","-0.009(0.023),p=.70","+0.061(0.040),p=.12","+0.056(0.039),p=.16","+0.056(0.048),p=.24","+0.023(0.030),p=.45","+0.048(0.059),p=.41","+0.051(0.059),p=.38","+0.065(0.064),p=.31","-0.143(0.061),p=.02","-0.071(0.089),p=.43","-0.065(0.087),p=.45","-0.079(0.115),p=.49","-0.007(0.027),p=.79","-0.062(0.055),p=.26","-0.061(0.055),p=.27","-0.033(0.062),p=.59","-0.172(0.053),p=.00","-0.099(0.081),p=.22","-0.102(0.081),p=.21","-0.069(0.104),p=.51","-0.001(0.102),p=.99","-0.021(0.195),p=.91","-0.021(0.195),p=.91","-0.054(0.213),p=.80","+0.048(0.185),p=.80","+0.266(0.320),p=.41","+0.271(0.322),p=.40","+0.375(0.352),p=.29","-0.035(0.025),p=.16","+0.001(0.047),p=.99","-0.001(0.047),p=.98","-0.007(0.054),p=.90","+0.032(0.055),p=.56","+0.009(0.086),p=.92","+0.012(0.086),p=.89","+0.041(0.101),p=.68","-0.012(0.023),p=.62","+0.030(0.053),p=.57","+0.027(0.054),p=.61","+0.043(0.057),p=.46","-0.022(0.046),p=.63","+0.049(0.079),p=.53","+0.050(0.079),p=.53","+0.005(0.094),p=.95","+0.016(0.021),p=.46","+0.060(0.044),p=.18","+0.060(0.044),p=.17","+0.068(0.048),p=.16","-0.050(0.048),p=.29","-0.062(0.069),p=.37","-0.061(0.069),p=.38","-0.104(0.083),p=.21","+0.019(0.010),p=.04","+0.034(0.018),p=.06","+0.034(0.018),p=.06","+0.018(0.019),p=.34","-0.027(0.021),p=.19","+0.000(0.032),p=.99","-0.001(0.032),p=.98","-0.038(0.048),p=.43","+0.014(0.035),p=.68","+0.001(0.076),p=.99","-0.007(0.075),p=.93","-0.039(0.084),p=.64","+0.000(0.074),p=.99","-0.041(0.118),p=.73","+0.002(0.118),p=.98","-0.132(0.151),p=.38","+0.447(0.053),p=.00","+0.253(0.110),p=.02","+0.255(0.110),p=.02","+0.272(0.123),p=.03","+0.391(0.108),p=.00","+0.325(0.187),p=.08","+0.326(0.185),p=.08","+0.220(0.236),p=.35","+0.291(0.105),p=.01","+0.291(0.105),p=.01","+0.259(0.117),p=.03","+0.113(0.090),p=.21","+0.161(0.166),p=.33","+0.161(0.165),p=.33","+0.139(0.214),p=.52","+0.021(0.037),p=.57","+0.032(0.081),p=.69","+0.031(0.081),p=.70","+0.032(0.087),p=.71","+0.000(0.080),p=.99","+0.102(0.129),p=.43","+0.097(0.127),p=.45","+0.048(0.144),p=.74","-0.026(0.025),p=.30","+0.075(0.066),p=.26","+0.075(0.065),p=.25","+0.050(0.071),p=.49","+0.046(0.106),p=.66","+0.044(0.104),p=.67","+0.013(0.129),p=.92","+0.033(0.020),p=.10","+0.037(0.042),p=.38","+0.036(0.042),p=.39","+0.040(0.045),p=.38","+0.043(0.038),p=.26","+0.096(0.071),p=.18","+0.096(0.071),p=.18","+0.072(0.076),p=.35","+0.164(0.076),p=.03","+0.292(0.148),p=.05","+0.288(0.148),p=.05","+0.276(0.163),p=.09","-0.027(0.147),p=.86","+0.381(0.267),p=.15","+0.371(0.268),p=.17","+0.287(0.309),p=.35","+0.014(0.035),p=.68","+0.001(0.076),p=.99","+0.003(0.075),p=.97","+0.499(0.217),p=.02","+0.000(0.074),p=.99","-0.041(0.118),p=.73","-0.036(0.118),p=.76","-0.075(0.420),p=.86","+0.134(0.026),p=.00","+0.117(0.053),p=.03","+0.117(0.053),p=.03","+0.124(0.058),p=.03","+0.015(0.053),p=.78","+0.080(0.083),p=.33","+0.081(0.083),p=.33","+0.069(0.108),p=.52","+0.368(0.052),p=.00","+0.402(0.113),p=.00","+0.402(0.113),p=.00","+0.404(0.122),p=.00","+0.114(0.099),p=.25","+0.189(0.159),p=.23","+0.191(0.159),p=.23","+0.266(0.198),p=.18","+0.014(0.008),p=.09","+0.007(0.023),p=.76","+0.008(0.023),p=.72","+0.007(0.026),p=.81","+0.016(0.025),p=.53","+0.092(0.048),p=.06","+0.087(0.049),p=.08","+0.086(0.058),p=.14","+0.042(0.014),p=.00","+0.108(0.035),p=.00","+0.094(0.039),p=.01","-0.006(0.023),p=.80","+0.061(0.040),p=.12","+0.055(0.040),p=.16","+0.053(0.048),p=.27","+0.021(0.030),p=.49","+0.052(0.059),p=.38","+0.054(0.059),p=.36","+0.069(0.065),p=.29","-0.153(0.061),p=.01","-0.083(0.089),p=.35","-0.073(0.087),p=.40","-0.079(0.114),p=.49","-0.007(0.027),p=.79","-0.062(0.055),p=.26","-0.061(0.055),p=.27","-0.033(0.062),p=.59","-0.172(0.053),p=.00","-0.099(0.081),p=.22","-0.104(0.082),p=.20","-0.065(0.105),p=.54","-0.010(0.102),p=.92","-0.005(0.197),p=.98","-0.004(0.197),p=.98","-0.038(0.215),p=.86","-0.001(0.186),p=.99","+0.217(0.321),p=.50","+0.231(0.323),p=.47","+0.374(0.355),p=.29","-0.035(0.025),p=.16","+0.001(0.047),p=.99","-0.001(0.047),p=.98","-0.007(0.054),p=.90","+0.032(0.055),p=.56","+0.009(0.086),p=.92","+0.010(0.087),p=.91","+0.041(0.101),p=.69","-0.012(0.023),p=.59","+0.031(0.053),p=.56","+0.028(0.053),p=.60","+0.043(0.057),p=.45","-0.024(0.045),p=.60","+0.048(0.080),p=.54","+0.051(0.080),p=.52","+0.010(0.095),p=.91","+0.013(0.022),p=.55","+0.062(0.044),p=.16","+0.061(0.044),p=.17","+0.070(0.048),p=.15","-0.052(0.047),p=.27","-0.062(0.068),p=.36","-0.060(0.068),p=.38","-0.103(0.082),p=.21","+0.019(0.010),p=.05","+0.034(0.018),p=.06","+0.034(0.018),p=.06","+0.018(0.019),p=.33","-0.029(0.021),p=.16","-0.004(0.032),p=.90","-0.003(0.031),p=.91","-0.040(0.048),p=.41","+0.011(0.036),p=.75","+0.004(0.076),p=.96","+0.004(0.075),p=.96","-0.038(0.084),p=.65","-0.005(0.074),p=.95","-0.043(0.117),p=.71","-0.032(0.117),p=.79","-0.123(0.151),p=.42","+0.442(0.053),p=.00","+0.261(0.110),p=.02","+0.262(0.110),p=.02","+0.281(0.123),p=.02","+0.361(0.106),p=.00","+0.287(0.188),p=.13","+0.299(0.187),p=.11","+0.201(0.235),p=.39","+0.346(0.050),p=.00","+0.296(0.104),p=.00","+0.297(0.104),p=.00","+0.267(0.116),p=.02","+0.091(0.089),p=.30","+0.136(0.165),p=.41","+0.140(0.165),p=.40","+0.125(0.211),p=.55","+0.017(0.037),p=.65","+0.038(0.081),p=.64","+0.034(0.081),p=.68","+0.035(0.087),p=.69","-0.008(0.081),p=.92","+0.089(0.129),p=.49","+0.089(0.128),p=.48","+0.045(0.144),p=.76","-0.027(0.025),p=.28","+0.081(0.065),p=.21","+0.082(0.065),p=.21","+0.057(0.071),p=.42","-0.085(0.063),p=.18","+0.035(0.106),p=.74","+0.035(0.104),p=.74","+0.009(0.128),p=.94","+0.033(0.020),p=.10","+0.037(0.042),p=.37","+0.041(0.045),p=.36","+0.040(0.037),p=.28","+0.093(0.070),p=.18","+0.093(0.070),p=.18","+0.070(0.076),p=.36","+0.158(0.076),p=.04","+0.295(0.149),p=.05","+0.289(0.149),p=.05","+0.278(0.164),p=.09","-0.063(0.148),p=.67","+0.333(0.261),p=.20","+0.262(0.306),p=.39","+0.103(0.108),p=.34","+0.367(0.205),p=.07","+0.380(0.205),p=.06","+0.520(0.218),p=.02","+0.013(0.188),p=.95","-0.287(0.341),p=.40","-0.032(0.117),p=.79","-0.105(0.413),p=.80","+0.132(0.026),p=.00","+0.120(0.054),p=.03","+0.119(0.054),p=.03","+0.128(0.058),p=.03","+0.004(0.053),p=.95","+0.064(0.084),p=.44","+0.068(0.084),p=.42","+0.066(0.108),p=.54","+0.365(0.053),p=.00","+0.410(0.114),p=.00","+0.410(0.114),p=.00","+0.413(0.122),p=.00","+0.091(0.100),p=.36","+0.167(0.159),p=.29","+0.169(0.160),p=.29","+0.257(0.200),p=.20","+0.014(0.008),p=.09","+0.007(0.023),p=.76","+0.008(0.023),p=.72","+0.016(0.025),p=.53","+0.092(0.048),p=.06","+0.081(0.049),p=.10","+0.081(0.058),p=.16","+0.043(0.014),p=.00","+0.111(0.035),p=.00","+0.107(0.035),p=.00","+0.094(0.039),p=.02","-0.007(0.023),p=.75","+0.060(0.040),p=.13","+0.055(0.040),p=.17","+0.053(0.048),p=.27","+0.022(0.030),p=.47","+0.051(0.059),p=.39","+0.052(0.059),p=.38","+0.066(0.065),p=.31","-0.144(0.060),p=.02","-0.071(0.089),p=.42","-0.065(0.086),p=.45","-0.079(0.115),p=.49","-0.008(0.027),p=.78","-0.061(0.055),p=.27","-0.061(0.055),p=.26","-0.033(0.062),p=.59","-0.170(0.052),p=.00","-0.096(0.081),p=.23","-0.099(0.081),p=.22","-0.065(0.104),p=.53","-0.003(0.102),p=.97","-0.009(0.196),p=.96","-0.014(0.196),p=.94","-0.050(0.214),p=.82","+0.029(0.184),p=.88","+0.270(0.318),p=.40","+0.273(0.319),p=.39","+0.393(0.353),p=.27","-0.036(0.026),p=.16","+0.002(0.047),p=.96","+0.000(0.047),p=.99","-0.007(0.054),p=.90","+0.028(0.055),p=.61","+0.010(0.086),p=.91","+0.012(0.087),p=.89","+0.041(0.101),p=.69","-0.012(0.023),p=.61","+0.031(0.054),p=.56","+0.028(0.054),p=.60","+0.043(0.057),p=.45","-0.020(0.046),p=.65","+0.054(0.080),p=.50","+0.056(0.080),p=.48","+0.012(0.095),p=.90","+0.015(0.021),p=.49","+0.061(0.044),p=.17","+0.060(0.044),p=.17","+0.068(0.048),p=.16","-0.051(0.047),p=.28","-0.060(0.069),p=.39","-0.059(0.068),p=.39","-0.103(0.082),p=.21","+0.019(0.010),p=.05","+0.034(0.018),p=.06","+0.034(0.018),p=.06","+0.018(0.019),p=.33","-0.028(0.021),p=.18","-0.001(0.032),p=.99","-0.001(0.031),p=.98","-0.039(0.049),p=.42","+0.014(0.035),p=.70","+0.006(0.076),p=.94","+0.005(0.075),p=.94","-0.037(0.084),p=.66","+0.000(0.075),p=.99","-0.037(0.117),p=.75","-0.032(0.117),p=.79","-0.124(0.151),p=.41","+0.446(0.054),p=.00","+0.258(0.111),p=.02","+0.257(0.111),p=.02","+0.274(0.123),p=.03","+0.387(0.108),p=.00","+0.322(0.187),p=.09","+0.245(0.214),p=.25","+0.214(0.236),p=.36","+0.350(0.050),p=.00","+0.294(0.105),p=.01","+0.292(0.105),p=.01","+0.260(0.117),p=.03","+0.107(0.089),p=.23","+0.158(0.166),p=.34","+0.156(0.165),p=.34","+0.130(0.213),p=.54","+0.020(0.037),p=.59","+0.039(0.081),p=.63","+0.035(0.081),p=.67","+0.035(0.087),p=.68","+0.000(0.081),p=.99","+0.103(0.129),p=.42","+0.075(0.147),p=.61","+0.053(0.143),p=.71","-0.026(0.025),p=.30","+0.077(0.066),p=.24","+0.076(0.066),p=.25","+0.050(0.072),p=.49","-0.078(0.062),p=.21","+0.047(0.106),p=.66","+0.044(0.104),p=.67","+0.011(0.129),p=.93","+0.033(0.020),p=.10","+0.037(0.042),p=.37","+0.036(0.041),p=.38","+0.040(0.045),p=.37","+0.042(0.038),p=.27","+0.096(0.071),p=.18","+0.096(0.070),p=.17","+0.072(0.077),p=.35","+0.163(0.076),p=.03","+0.301(0.149),p=.04","+0.293(0.148),p=.05","+0.279(0.163),p=.09","-0.046(0.147),p=.75","+0.373(0.263),p=.15","+0.361(0.262),p=.17","+0.276(0.307),p=.37","+0.014(0.035),p=.70","+0.006(0.076),p=.94","+0.005(0.075),p=.94","+0.490(0.219),p=.03","+0.000(0.075),p=.99","-0.037(0.117),p=.75","-0.032(0.117),p=.79","-0.133(0.417),p=.75","+0.134(0.026),p=.00","+0.120(0.053),p=.02","+0.118(0.053),p=.03","+0.126(0.058),p=.03","+0.014(0.053),p=.80","+0.081(0.083),p=.33","+0.082(0.083),p=.32","+0.071(0.108),p=.51","+0.368(0.053),p=.00","+0.413(0.114),p=.00","+0.408(0.114),p=.00","+0.409(0.122),p=.00","+0.107(0.099),p=.28","+0.191(0.158),p=.23","+0.191(0.158),p=.23","+0.266(0.198),p=.18","+0.014(0.008),p=.10","+0.007(0.026),p=.78","+0.017(0.025),p=.50","+0.084(0.048),p=.08","+0.082(0.057),p=.15","-0.172(0.045),p=.00","-0.208(0.082),p=.03","-0.271(0.092),p=.01","-0.375(0.054),p=.00","-0.471(0.080),p=.00","-0.374(0.108),p=.00","-0.268(0.065),p=.00","-0.328(0.120),p=.01","-0.421(0.133),p=.00","-0.556(0.075),p=.00","-0.687(0.111),p=.00","-0.539(0.152),p=.00","-0.220(0.120),p=.07","-0.364(0.219),p=.10","-0.088(0.027),p=.00","-0.147(0.090),p=.10","-0.078(0.021),p=.00","-0.055(0.064),p=.39","-0.042(0.071),p=.55","-0.132(0.197),p=.50","-0.368(0.412),p=.37","-0.293(0.084),p=.00","-0.279(0.090),p=.00","-0.317(0.098),p=.00","-0.481(0.102),p=.00","-0.520(0.116),p=.00","-0.568(0.163),p=.00","-0.080(0.022),p=.00","-0.089(0.024),p=.00","-0.093(0.026),p=.00","-0.056(0.040),p=.15","-0.056(0.044),p=.20","-0.021(0.082),p=.80","-0.057(0.018),p=.00","-0.065(0.018),p=.00","-0.068(0.019),p=.00","-0.054(0.030),p=.07","-0.071(0.029),p=.01","-0.103(0.052),p=.05","-0.092(0.071),p=.20","-0.079(0.077),p=.30","-0.147(0.075),p=.05","-0.030(0.127),p=.81","-0.008(0.120),p=.95","+0.079(0.191),p=.68","-0.337(0.093),p=.00","-0.334(0.106),p=.00","-0.478(0.174),p=.01","-0.472(0.168),p=.01","-0.061(0.046),p=.18","-0.060(0.049),p=.23","-0.053(0.051),p=.30","-0.066(0.066),p=.31","-0.030(0.074),p=.68","+0.020(0.090),p=.83","-0.222(0.072),p=.00","-0.274(0.075),p=.00","-0.311(0.133),p=.02","-0.219(0.110),p=.05","-0.117(0.059),p=.05","-0.099(0.053),p=.06","-0.068(0.064),p=.33","-0.152(0.090),p=.09","-0.090(0.088),p=.30","+0.041(0.195),p=.84","-0.222(0.076),p=.00","-0.220(0.083),p=.01","-0.407(0.153),p=.01","-0.429(0.156),p=.01","-0.512(0.156),p=.00","-0.524(0.159),p=.00","-0.478(0.167),p=.00","-0.515(0.224),p=.02","-0.575(0.202),p=.00","-0.601(0.298),p=.04","-0.098(0.080),p=.22","-0.084(0.085),p=.32","-0.172(0.111),p=.12","-0.188(0.119),p=.11","-0.271(0.083),p=.00","-0.246(0.088),p=.01","-0.192(0.105),p=.07","-0.466(0.105),p=.00","-0.485(0.113),p=.00","-0.424(0.169),p=.01","-0.078(0.023),p=.00","-0.086(0.024),p=.00","-0.085(0.026),p=.00","-0.047(0.040),p=.24","-0.050(0.044),p=.25","-0.064(0.089),p=.47","-0.057(0.018),p=.00","-0.065(0.018),p=.00","-0.075(0.021),p=.00","-0.045(0.028),p=.11","-0.064(0.028),p=.02","-0.099(0.057),p=.08","-0.069(0.070),p=.33","-0.050(0.078),p=.52","-0.059(0.106),p=.58","-0.037(0.106),p=.72","-0.331(0.092),p=.00","-0.319(0.104),p=.00","-0.514(0.180),p=.00","-0.490(0.173),p=.01","-0.056(0.048),p=.24","-0.053(0.049),p=.28","-0.089(0.071),p=.21","-0.057(0.077),p=.45","-0.220(0.071),p=.00","-0.269(0.074),p=.00","-0.294(0.119),p=.01","-0.193(0.105),p=.07","-0.121(0.055),p=.03","-0.103(0.054),p=.06","-0.044(0.070),p=.53","-0.175(0.074),p=.02","-0.112(0.073),p=.12","+0.133(0.160),p=.41","-0.217(0.072),p=.00","-0.211(0.077),p=.01","-0.349(0.142),p=.01","-0.357(0.148),p=.02","-0.489(0.142),p=.00","-0.490(0.154),p=.00","-0.095(0.193),p=.62","-0.530(0.186),p=.00","-0.558(0.178),p=.00","-0.536(0.326),p=.10","-0.081(0.078),p=.30","-0.058(0.081),p=.47","-0.197(0.114),p=.09","-0.209(0.123),p=.09","NaN(NaN),p=NA","-0.096(0.020),p=.00","-0.100(0.021),p=.00","-0.098(0.021),p=.00","-0.118(0.026),p=.00","NaN(NaN),p=NA","-0.122(0.024),p=.00","-0.127(0.025),p=.00","-0.124(0.026),p=.00","-0.136(0.037),p=.00","NaN(NaN),p=NA","-0.366(0.026),p=.00","-0.372(0.029),p=.00","-0.373(0.029),p=.00","-0.363(0.035),p=.00","NaN(NaN),p=NA","-0.426(0.037),p=.00","-0.418(0.044),p=.00","-0.422(0.045),p=.00","-0.422(0.065),p=.00","NaN(NaN),p=NA","-0.040(0.007),p=.00","-0.038(0.007),p=.00","-0.038(0.008),p=.00","-0.043(0.010),p=.00","NaN(NaN),p=NA","-0.059(0.009),p=.00","-0.052(0.010),p=.00","-0.050(0.010),p=.00","-0.051(0.014),p=.00","NaN(NaN),p=NA","-0.023(0.005),p=.00","-0.025(0.006),p=.00","-0.024(0.006),p=.00","-0.028(0.007),p=.00","NaN(NaN),p=NA","-0.022(0.008),p=.01","-0.020(0.009),p=.03","-0.018(0.009),p=.04","-0.025(0.013),p=.06","-0.526(0.042),p=.00","-0.562(0.044),p=.00","-0.559(0.045),p=.00","-0.574(0.057),p=.00","-0.585(0.063),p=.00","-0.587(0.065),p=.00","NaN(NaN),p=NA","-0.200(0.019),p=.00","-0.193(0.021),p=.00","-0.185(0.022),p=.00","-0.178(0.028),p=.00","NaN(NaN),p=NA","-0.176(0.029),p=.00","-0.181(0.029),p=.00","-0.184(0.030),p=.00","-0.161(0.044),p=.00","NaN(NaN),p=NA","-0.309(0.030),p=.00","-0.298(0.035),p=.00","-0.293(0.035),p=.00","-0.282(0.046),p=.00","NaN(NaN),p=NA","-0.200(0.040),p=.00","-0.183(0.042),p=.00","-0.185(0.043),p=.00","-0.173(0.058),p=.00","NaN(NaN),p=NA","-0.269(0.022),p=.00","-0.269(0.023),p=.00","-0.269(0.024),p=.00","-0.289(0.026),p=.00","NaN(NaN),p=NA","-0.150(0.020),p=.00","-0.154(0.022),p=.00","-0.154(0.022),p=.00","-0.136(0.030),p=.00","NaN(NaN),p=NA","-0.997(0.103),p=.00","-1.066(0.107),p=.00","-1.045(0.109),p=.00","-0.965(0.113),p=.00","NaN(NaN),p=NA","-1.366(0.147),p=.00","-1.404(0.158),p=.00","-1.448(0.159),p=.00","-1.572(0.202),p=.00","NaN(NaN),p=NA","-0.850(0.042),p=.00","-0.859(0.045),p=.00","-0.858(0.045),p=.00","-0.827(0.063),p=.00","NaN(NaN),p=NA","-0.958(0.068),p=.00","-0.978(0.071),p=.00","-0.978(0.071),p=.00","-0.917(0.086),p=.00","NaN(NaN),p=NA","-0.108(0.016),p=.00","-0.106(0.017),p=.00","-0.109(0.017),p=.00","-0.124(0.020),p=.00","NaN(NaN),p=NA","-0.110(0.020),p=.00","-0.088(0.023),p=.00","-0.086(0.024),p=.00","-0.076(0.036),p=.04","-0.096(0.019),p=.00","-0.101(0.020),p=.00","-0.100(0.021),p=.00","-0.118(0.025),p=.00","-0.108(0.025),p=.00","-0.108(0.026),p=.00","-0.109(0.027),p=.00","-0.112(0.039),p=.00","-0.367(0.034),p=.00","-0.412(0.063),p=.00","-0.044(0.010),p=.00","-0.049(0.015),p=.00","-0.028(0.007),p=.00","-0.023(0.013),p=.08","-0.527(0.043),p=.00","-0.564(0.045),p=.00","-0.562(0.046),p=.00","-0.573(0.058),p=.00","-0.580(0.062),p=.00","-0.589(0.064),p=.00","-0.311(0.031),p=.00","-0.300(0.035),p=.00","-0.296(0.035),p=.00","-0.286(0.046),p=.00","-0.201(0.040),p=.00","-0.185(0.042),p=.00","-0.186(0.043),p=.00","-0.163(0.057),p=.01","-0.270(0.022),p=.00","-0.270(0.023),p=.00","-0.271(0.024),p=.00","-0.289(0.026),p=.00","-0.150(0.020),p=.00","-0.154(0.022),p=.00","-0.155(0.022),p=.00","-0.136(0.030),p=.00","-0.846(0.043),p=.00","-0.857(0.045),p=.00","-0.857(0.045),p=.00","-0.822(0.064),p=.00","-0.940(0.056),p=.00","-0.951(0.057),p=.00","-0.957(0.060),p=.00","-0.894(0.084),p=.00","-0.109(0.016),p=.00","-0.108(0.017),p=.00","-0.111(0.017),p=.00","-0.126(0.020),p=.00","-0.108(0.021),p=.00","-0.086(0.023),p=.00","-0.084(0.024),p=.00","-0.073(0.037),p=.05"]],"container":"<table class=\"cell-border stripe\">\n  <thead>\n    <tr>\n      <th> \u003c/th>\n      <th>study name\u003c/th>\n      <th>process a\u003c/th>\n      <th>process b\u003c/th>\n      <th>subgroup\u003c/th>\n      <th>model type\u003c/th>\n      <th>a gamma 00\u003c/th>\n      <th>a gamma 10\u003c/th>\n      <th>b gamma 00\u003c/th>\n      <th>b gamma 10\u003c/th>\n    \u003c/tr>\n  \u003c/thead>\n\u003c/table>","options":{"pageLength":6,"autoWidth":true,"order":[],"orderClasses":false,"columnDefs":[{"orderable":false,"targets":0}],"orderCellsTop":true,"lengthMenu":[6,10,25,50,100]},"callback":null,"caption":"<caption>Growth Curve Model Solution -by Study\u003c/caption>","filter":"top","filterHTML":"<tr>\n  <td>\u003c/td>\n  <td data-type=\"character\" style=\"vertical-align: top;\">\n    <div class=\"form-group has-feedback\" style=\"margin-bottom: auto;\">\n      <input type=\"search\" placeholder=\"All\" class=\"form-control\" style=\"width: 100%;\"/>\n      <span class=\"glyphicon glyphicon-remove-circle form-control-feedback\">\u003c/span>\n    \u003c/div>\n  \u003c/td>\n  <td data-type=\"character\" style=\"vertical-align: top;\">\n    <div class=\"form-group has-feedback\" style=\"margin-bottom: auto;\">\n      <input type=\"search\" placeholder=\"All\" class=\"form-control\" style=\"width: 100%;\"/>\n      <span class=\"glyphicon glyphicon-remove-circle form-control-feedback\">\u003c/span>\n    \u003c/div>\n  \u003c/td>\n  <td data-type=\"character\" style=\"vertical-align: top;\">\n    <div class=\"form-group has-feedback\" style=\"margin-bottom: auto;\">\n      <input type=\"search\" placeholder=\"All\" class=\"form-control\" style=\"width: 100%;\"/>\n      <span class=\"glyphicon glyphicon-remove-circle form-control-feedback\">\u003c/span>\n    \u003c/div>\n  \u003c/td>\n  <td data-type=\"character\" style=\"vertical-align: top;\">\n    <div class=\"form-group has-feedback\" style=\"margin-bottom: auto;\">\n      <input type=\"search\" placeholder=\"All\" class=\"form-control\" style=\"width: 100%;\"/>\n      <span class=\"glyphicon glyphicon-remove-circle form-control-feedback\">\u003c/span>\n    \u003c/div>\n  \u003c/td>\n  <td data-type=\"character\" style=\"vertical-align: top;\">\n    <div class=\"form-group has-feedback\" style=\"margin-bottom: auto;\">\n      <input type=\"search\" placeholder=\"All\" class=\"form-control\" style=\"width: 100%;\"/>\n      <span class=\"glyphicon glyphicon-remove-circle form-control-feedback\">\u003c/span>\n    \u003c/div>\n  \u003c/td>\n  <td data-type=\"character\" style=\"vertical-align: top;\">\n    <div class=\"form-group has-feedback\" style=\"margin-bottom: auto;\">\n      <input type=\"search\" placeholder=\"All\" class=\"form-control\" style=\"width: 100%;\"/>\n      <span class=\"glyphicon glyphicon-remove-circle form-control-feedback\">\u003c/span>\n    \u003c/div>\n  \u003c/td>\n  <td data-type=\"character\" style=\"vertical-align: top;\">\n    <div class=\"form-group has-feedback\" style=\"margin-bottom: auto;\">\n      <input type=\"search\" placeholder=\"All\" class=\"form-control\" style=\"width: 100%;\"/>\n      <span class=\"glyphicon glyphicon-remove-circle form-control-feedback\">\u003c/span>\n    \u003c/div>\n  \u003c/td>\n  <td data-type=\"character\" style=\"vertical-align: top;\">\n    <div class=\"form-group has-feedback\" style=\"margin-bottom: auto;\">\n      <input type=\"search\" placeholder=\"All\" class=\"form-control\" style=\"width: 100%;\"/>\n      <span class=\"glyphicon glyphicon-remove-circle form-control-feedback\">\u003c/span>\n    \u003c/div>\n  \u003c/td>\n  <td data-type=\"character\" style=\"vertical-align: top;\">\n    <div class=\"form-group has-feedback\" style=\"margin-bottom: auto;\">\n      <input type=\"search\" placeholder=\"All\" class=\"form-control\" style=\"width: 100%;\"/>\n      <span class=\"glyphicon glyphicon-remove-circle form-control-feedback\">\u003c/span>\n    \u003c/div>\n  \u003c/td>\n\u003c/tr>"},"evals":[],"jsHooks":[]}</script><!--/html_preserve-->

# Static Tables
The 'aehplus' model (with covariates *a*ge, *e*ducation, *h*ealth, and others) is shown for each combination of

* study,
* process, and
* gender.


##  eas 

<table>
 <thead>
  <tr>
   <th style="text-align:left;"> process </th>
   <th style="text-align:left;"> subgroup </th>
   <th style="text-align:left;"> a_gamma_00 </th>
   <th style="text-align:left;"> a_gamma_10 </th>
   <th style="text-align:left;"> b_gamma_00 </th>
   <th style="text-align:left;"> b_gamma_10 </th>
  </tr>
 </thead>
<tbody>
  <tr>
   <td style="text-align:left;"> gait--block </td>
   <td style="text-align:left;"> female </td>
   <td style="text-align:left;"> +110.351(7.894),$p$=.00 </td>
   <td style="text-align:left;"> -4.009(2.389),$p$=.09 </td>
   <td style="text-align:left;"> +18.930(2.296),$p$=.00 </td>
   <td style="text-align:left;"> +0.805(0.472),$p$=.09 </td>
  </tr>
  <tr>
   <td style="text-align:left;"> gait--block </td>
   <td style="text-align:left;"> male </td>
   <td style="text-align:left;"> +106.988(12.919),$p$=.00 </td>
   <td style="text-align:left;"> -2.183(4.469),$p$=.62 </td>
   <td style="text-align:left;"> +23.860(7.142),$p$=.00 </td>
   <td style="text-align:left;"> +1.745(1.404),$p$=.21 </td>
  </tr>
  <tr>
   <td style="text-align:left;"> gait--bnt </td>
   <td style="text-align:left;"> female </td>
   <td style="text-align:left;"> +111.421(8.179),$p$=.00 </td>
   <td style="text-align:left;"> -4.448(2.745),$p$=.10 </td>
   <td style="text-align:left;"> +10.773(0.622),$p$=.00 </td>
   <td style="text-align:left;"> -0.049(0.162),$p$=.76 </td>
  </tr>
  <tr>
   <td style="text-align:left;"> gait--bnt </td>
   <td style="text-align:left;"> male </td>
   <td style="text-align:left;"> +105.402(17.007),$p$=.00 </td>
   <td style="text-align:left;"> -1.280(6.412),$p$=.84 </td>
   <td style="text-align:left;"> +11.019(2.041),$p$=.00 </td>
   <td style="text-align:left;"> +0.179(0.517),$p$=.73 </td>
  </tr>
  <tr>
   <td style="text-align:left;"> gait--categories </td>
   <td style="text-align:left;"> female </td>
   <td style="text-align:left;"> +110.596(7.950),$p$=.00 </td>
   <td style="text-align:left;"> -3.985(2.605),$p$=.13 </td>
   <td style="text-align:left;"> +38.659(2.864),$p$=.00 </td>
   <td style="text-align:left;"> -0.835(0.776),$p$=.28 </td>
  </tr>
  <tr>
   <td style="text-align:left;"> gait--categories </td>
   <td style="text-align:left;"> male </td>
   <td style="text-align:left;"> +105.782(14.544),$p$=.00 </td>
   <td style="text-align:left;"> -1.754(4.935),$p$=.72 </td>
   <td style="text-align:left;"> +30.794(7.674),$p$=.00 </td>
   <td style="text-align:left;"> +1.126(1.732),$p$=.52 </td>
  </tr>
  <tr>
   <td style="text-align:left;"> gait--digit_tot </td>
   <td style="text-align:left;"> female </td>
   <td style="text-align:left;"> +109.876(7.853),$p$=.00 </td>
   <td style="text-align:left;"> -3.295(2.365),$p$=.16 </td>
   <td style="text-align:left;"> +13.539(0.901),$p$=.00 </td>
   <td style="text-align:left;"> +0.297(0.181),$p$=.10 </td>
  </tr>
  <tr>
   <td style="text-align:left;"> gait--digit_tot </td>
   <td style="text-align:left;"> male </td>
   <td style="text-align:left;"> +105.923(13.182),$p$=.00 </td>
   <td style="text-align:left;"> -1.815(6.008),$p$=.76 </td>
   <td style="text-align:left;"> +14.487(3.400),$p$=.00 </td>
   <td style="text-align:left;"> -0.183(0.593),$p$=.76 </td>
  </tr>
  <tr>
   <td style="text-align:left;"> gait--fas </td>
   <td style="text-align:left;"> female </td>
   <td style="text-align:left;"> +109.603(8.327),$p$=.00 </td>
   <td style="text-align:left;"> -3.103(2.435),$p$=.20 </td>
   <td style="text-align:left;"> +30.452(3.550),$p$=.00 </td>
   <td style="text-align:left;"> +0.417(0.709),$p$=.56 </td>
  </tr>
  <tr>
   <td style="text-align:left;"> gait--fas </td>
   <td style="text-align:left;"> male </td>
   <td style="text-align:left;"> +107.022(13.866),$p$=.00 </td>
   <td style="text-align:left;"> -2.315(4.482),$p$=.60 </td>
   <td style="text-align:left;"> +29.099(7.481),$p$=.00 </td>
   <td style="text-align:left;"> +1.336(1.256),$p$=.29 </td>
  </tr>
  <tr>
   <td style="text-align:left;"> gait--information </td>
   <td style="text-align:left;"> female </td>
   <td style="text-align:left;"> +109.787(8.610),$p$=.00 </td>
   <td style="text-align:left;"> -3.181(2.647),$p$=.23 </td>
   <td style="text-align:left;"> +13.230(2.106),$p$=.00 </td>
   <td style="text-align:left;"> +0.243(0.578),$p$=.67 </td>
  </tr>
  <tr>
   <td style="text-align:left;"> gait--information </td>
   <td style="text-align:left;"> male </td>
   <td style="text-align:left;"> +104.240(15.201),$p$=.00 </td>
   <td style="text-align:left;"> -0.877(5.470),$p$=.87 </td>
   <td style="text-align:left;"> +18.291(3.872),$p$=.00 </td>
   <td style="text-align:left;"> -0.688(1.124),$p$=.54 </td>
  </tr>
  <tr>
   <td style="text-align:left;"> gait--logic_tot </td>
   <td style="text-align:left;"> female </td>
   <td style="text-align:left;"> +110.347(8.684),$p$=.00 </td>
   <td style="text-align:left;"> -3.655(2.581),$p$=.16 </td>
   <td style="text-align:left;"> +18.275(2.088),$p$=.00 </td>
   <td style="text-align:left;"> -0.092(0.443),$p$=.83 </td>
  </tr>
  <tr>
   <td style="text-align:left;"> gait--logic_tot </td>
   <td style="text-align:left;"> male </td>
   <td style="text-align:left;"> +106.518(13.088),$p$=.00 </td>
   <td style="text-align:left;"> -1.982(4.907),$p$=.69 </td>
   <td style="text-align:left;"> +14.653(5.218),$p$=.01 </td>
   <td style="text-align:left;"> +1.786(1.071),$p$=.10 </td>
  </tr>
  <tr>
   <td style="text-align:left;"> gait--mmms </td>
   <td style="text-align:left;"> female </td>
   <td style="text-align:left;"> +105.724(12.963),$p$=.00 </td>
   <td style="text-align:left;"> -1.644(5.959),$p$=.78 </td>
   <td style="text-align:left;"> +26.678(0.878),$p$=.00 </td>
   <td style="text-align:left;"> -0.057(0.294),$p$=.84 </td>
  </tr>
  <tr>
   <td style="text-align:left;"> gait--mmms </td>
   <td style="text-align:left;"> male </td>
   <td style="text-align:left;"> +105.724(12.963),$p$=.00 </td>
   <td style="text-align:left;"> -1.644(5.959),$p$=.78 </td>
   <td style="text-align:left;"> +26.678(0.878),$p$=.00 </td>
   <td style="text-align:left;"> -0.057(0.294),$p$=.84 </td>
  </tr>
  <tr>
   <td style="text-align:left;"> gait--symbol </td>
   <td style="text-align:left;"> female </td>
   <td style="text-align:left;"> +109.427(8.403),$p$=.00 </td>
   <td style="text-align:left;"> -3.045(2.837),$p$=.28 </td>
   <td style="text-align:left;"> +41.226(3.255),$p$=.00 </td>
   <td style="text-align:left;"> +0.324(0.616),$p$=.60 </td>
  </tr>
  <tr>
   <td style="text-align:left;"> gait--symbol </td>
   <td style="text-align:left;"> male </td>
   <td style="text-align:left;"> +106.256(13.358),$p$=.00 </td>
   <td style="text-align:left;"> -1.808(4.793),$p$=.71 </td>
   <td style="text-align:left;"> +39.141(11.012),$p$=.00 </td>
   <td style="text-align:left;"> +0.658(2.428),$p$=.79 </td>
  </tr>
  <tr>
   <td style="text-align:left;"> gait--trailsb </td>
   <td style="text-align:left;"> female </td>
   <td style="text-align:left;"> +110.036(8.268),$p$=.00 </td>
   <td style="text-align:left;"> -3.507(2.526),$p$=.17 </td>
   <td style="text-align:left;"> +162.470(17.859),$p$=.00 </td>
   <td style="text-align:left;"> +3.437(5.007),$p$=.49 </td>
  </tr>
  <tr>
   <td style="text-align:left;"> gait--trailsb </td>
   <td style="text-align:left;"> male </td>
   <td style="text-align:left;"> +106.978(17.006),$p$=.00 </td>
   <td style="text-align:left;"> -2.183(5.619),$p$=.70 </td>
   <td style="text-align:left;"> +163.374(43.634),$p$=.00 </td>
   <td style="text-align:left;"> -2.907(10.201),$p$=.78 </td>
  </tr>
  <tr>
   <td style="text-align:left;"> gait--waisvocab </td>
   <td style="text-align:left;"> female </td>
   <td style="text-align:left;"> +109.774(8.365),$p$=.00 </td>
   <td style="text-align:left;"> -3.226(2.683),$p$=.23 </td>
   <td style="text-align:left;"> +34.767(3.201),$p$=.00 </td>
   <td style="text-align:left;"> +0.329(0.721),$p$=.65 </td>
  </tr>
  <tr>
   <td style="text-align:left;"> gait--waisvocab </td>
   <td style="text-align:left;"> male </td>
   <td style="text-align:left;"> +106.418(15.373),$p$=.00 </td>
   <td style="text-align:left;"> -1.971(5.796),$p$=.73 </td>
   <td style="text-align:left;"> +33.972(6.683),$p$=.00 </td>
   <td style="text-align:left;"> +1.612(2.173),$p$=.46 </td>
  </tr>
  <tr>
   <td style="text-align:left;"> grip--block </td>
   <td style="text-align:left;"> female </td>
   <td style="text-align:left;"> +18.536(1.690),$p$=.00 </td>
   <td style="text-align:left;"> -2.347(0.419),$p$=.00 </td>
   <td style="text-align:left;"> +18.919(2.410),$p$=.00 </td>
   <td style="text-align:left;"> +0.815(0.441),$p$=.07 </td>
  </tr>
  <tr>
   <td style="text-align:left;"> grip--block </td>
   <td style="text-align:left;"> male </td>
   <td style="text-align:left;"> +36.226(5.059),$p$=.00 </td>
   <td style="text-align:left;"> -2.333(1.362),$p$=.09 </td>
   <td style="text-align:left;"> +24.088(7.081),$p$=.00 </td>
   <td style="text-align:left;"> +1.464(1.585),$p$=.36 </td>
  </tr>
  <tr>
   <td style="text-align:left;"> grip--bnt </td>
   <td style="text-align:left;"> female </td>
   <td style="text-align:left;"> +18.557(1.828),$p$=.00 </td>
   <td style="text-align:left;"> -2.349(0.472),$p$=.00 </td>
   <td style="text-align:left;"> +10.821(0.699),$p$=.00 </td>
   <td style="text-align:left;"> -0.081(0.167),$p$=.63 </td>
  </tr>
  <tr>
   <td style="text-align:left;"> grip--bnt </td>
   <td style="text-align:left;"> male </td>
   <td style="text-align:left;"> +36.495(5.630),$p$=.00 </td>
   <td style="text-align:left;"> -2.455(1.466),$p$=.09 </td>
   <td style="text-align:left;"> +11.162(1.801),$p$=.00 </td>
   <td style="text-align:left;"> +0.205(0.348),$p$=.56 </td>
  </tr>
  <tr>
   <td style="text-align:left;"> grip--categories </td>
   <td style="text-align:left;"> female </td>
   <td style="text-align:left;"> +18.675(1.579),$p$=.00 </td>
   <td style="text-align:left;"> -2.414(0.475),$p$=.00 </td>
   <td style="text-align:left;"> +38.492(2.703),$p$=.00 </td>
   <td style="text-align:left;"> -0.729(0.667),$p$=.28 </td>
  </tr>
  <tr>
   <td style="text-align:left;"> grip--categories </td>
   <td style="text-align:left;"> male </td>
   <td style="text-align:left;"> +36.507(5.984),$p$=.00 </td>
   <td style="text-align:left;"> -2.524(1.518),$p$=.10 </td>
   <td style="text-align:left;"> +30.030(8.345),$p$=.00 </td>
   <td style="text-align:left;"> +0.658(1.781),$p$=.71 </td>
  </tr>
  <tr>
   <td style="text-align:left;"> grip--digit_tot </td>
   <td style="text-align:left;"> female </td>
   <td style="text-align:left;"> +18.605(1.629),$p$=.00 </td>
   <td style="text-align:left;"> -2.350(0.479),$p$=.00 </td>
   <td style="text-align:left;"> +13.686(0.932),$p$=.00 </td>
   <td style="text-align:left;"> +0.210(0.202),$p$=.30 </td>
  </tr>
  <tr>
   <td style="text-align:left;"> grip--digit_tot </td>
   <td style="text-align:left;"> male </td>
   <td style="text-align:left;"> +36.356(5.242),$p$=.00 </td>
   <td style="text-align:left;"> -2.376(1.387),$p$=.09 </td>
   <td style="text-align:left;"> +12.873(3.478),$p$=.00 </td>
   <td style="text-align:left;"> -0.079(0.560),$p$=.89 </td>
  </tr>
  <tr>
   <td style="text-align:left;"> grip--fas </td>
   <td style="text-align:left;"> female </td>
   <td style="text-align:left;"> +18.610(1.666),$p$=.00 </td>
   <td style="text-align:left;"> -2.388(0.419),$p$=.00 </td>
   <td style="text-align:left;"> +30.397(3.808),$p$=.00 </td>
   <td style="text-align:left;"> +0.464(0.690),$p$=.50 </td>
  </tr>
  <tr>
   <td style="text-align:left;"> grip--fas </td>
   <td style="text-align:left;"> male </td>
   <td style="text-align:left;"> +36.355(5.037),$p$=.00 </td>
   <td style="text-align:left;"> -2.394(1.467),$p$=.10 </td>
   <td style="text-align:left;"> +25.363(7.486),$p$=.00 </td>
   <td style="text-align:left;"> +1.246(1.265),$p$=.33 </td>
  </tr>
  <tr>
   <td style="text-align:left;"> grip--information </td>
   <td style="text-align:left;"> female </td>
   <td style="text-align:left;"> +18.482(1.647),$p$=.00 </td>
   <td style="text-align:left;"> -2.279(0.481),$p$=.00 </td>
   <td style="text-align:left;"> +13.095(2.004),$p$=.00 </td>
   <td style="text-align:left;"> +0.303(0.610),$p$=.62 </td>
  </tr>
  <tr>
   <td style="text-align:left;"> grip--information </td>
   <td style="text-align:left;"> male </td>
   <td style="text-align:left;"> +36.250(5.497),$p$=.00 </td>
   <td style="text-align:left;"> -2.345(1.778),$p$=.19 </td>
   <td style="text-align:left;"> +17.396(3.772),$p$=.00 </td>
   <td style="text-align:left;"> -0.621(1.158),$p$=.59 </td>
  </tr>
  <tr>
   <td style="text-align:left;"> grip--logic_tot </td>
   <td style="text-align:left;"> female </td>
   <td style="text-align:left;"> +18.599(1.573),$p$=.00 </td>
   <td style="text-align:left;"> -2.363(0.470),$p$=.00 </td>
   <td style="text-align:left;"> +18.170(2.053),$p$=.00 </td>
   <td style="text-align:left;"> -0.023(0.443),$p$=.96 </td>
  </tr>
  <tr>
   <td style="text-align:left;"> grip--logic_tot </td>
   <td style="text-align:left;"> male </td>
   <td style="text-align:left;"> +36.452(5.619),$p$=.00 </td>
   <td style="text-align:left;"> -2.463(1.449),$p$=.09 </td>
   <td style="text-align:left;"> +15.783(5.221),$p$=.00 </td>
   <td style="text-align:left;"> +1.546(0.994),$p$=.12 </td>
  </tr>
  <tr>
   <td style="text-align:left;"> grip--mmms </td>
   <td style="text-align:left;"> female </td>
   <td style="text-align:left;"> +18.548(1.589),$p$=.00 </td>
   <td style="text-align:left;"> -2.287(0.505),$p$=.00 </td>
   <td style="text-align:left;"> +25.989(0.388),$p$=.00 </td>
   <td style="text-align:left;"> +0.097(0.092),$p$=.29 </td>
  </tr>
  <tr>
   <td style="text-align:left;"> grip--mmms </td>
   <td style="text-align:left;"> male </td>
   <td style="text-align:left;"> +36.555(5.283),$p$=.00 </td>
   <td style="text-align:left;"> -2.544(1.748),$p$=.15 </td>
   <td style="text-align:left;"> +26.682(0.713),$p$=.00 </td>
   <td style="text-align:left;"> -0.063(0.287),$p$=.83 </td>
  </tr>
  <tr>
   <td style="text-align:left;"> grip--symbol </td>
   <td style="text-align:left;"> female </td>
   <td style="text-align:left;"> +18.766(1.714),$p$=.00 </td>
   <td style="text-align:left;"> -2.510(0.473),$p$=.00 </td>
   <td style="text-align:left;"> +41.394(3.138),$p$=.00 </td>
   <td style="text-align:left;"> +0.238(0.575),$p$=.68 </td>
  </tr>
  <tr>
   <td style="text-align:left;"> grip--symbol </td>
   <td style="text-align:left;"> male </td>
   <td style="text-align:left;"> +36.269(4.576),$p$=.00 </td>
   <td style="text-align:left;"> -2.342(1.546),$p$=.13 </td>
   <td style="text-align:left;"> +40.182(10.255),$p$=.00 </td>
   <td style="text-align:left;"> +0.856(1.806),$p$=.64 </td>
  </tr>
  <tr>
   <td style="text-align:left;"> grip--trailsb </td>
   <td style="text-align:left;"> female </td>
   <td style="text-align:left;"> +18.743(1.674),$p$=.00 </td>
   <td style="text-align:left;"> -2.514(0.445),$p$=.00 </td>
   <td style="text-align:left;"> +161.176(19.410),$p$=.00 </td>
   <td style="text-align:left;"> +4.405(5.709),$p$=.44 </td>
  </tr>
  <tr>
   <td style="text-align:left;"> grip--trailsb </td>
   <td style="text-align:left;"> male </td>
   <td style="text-align:left;"> +36.414(5.621),$p$=.00 </td>
   <td style="text-align:left;"> -2.425(1.240),$p$=.05 </td>
   <td style="text-align:left;"> +154.661(49.678),$p$=.00 </td>
   <td style="text-align:left;"> +2.761(11.683),$p$=.81 </td>
  </tr>
  <tr>
   <td style="text-align:left;"> grip--waisvocab </td>
   <td style="text-align:left;"> female </td>
   <td style="text-align:left;"> +18.432(1.822),$p$=.00 </td>
   <td style="text-align:left;"> -2.237(0.481),$p$=.00 </td>
   <td style="text-align:left;"> +34.945(3.254),$p$=.00 </td>
   <td style="text-align:left;"> +0.242(0.748),$p$=.75 </td>
  </tr>
  <tr>
   <td style="text-align:left;"> grip--waisvocab </td>
   <td style="text-align:left;"> male </td>
   <td style="text-align:left;"> +36.185(5.452),$p$=.00 </td>
   <td style="text-align:left;"> -2.294(1.836),$p$=.21 </td>
   <td style="text-align:left;"> +33.961(6.155),$p$=.00 </td>
   <td style="text-align:left;"> +1.453(2.121),$p$=.49 </td>
  </tr>
  <tr>
   <td style="text-align:left;"> pef--block </td>
   <td style="text-align:left;"> female </td>
   <td style="text-align:left;"> +345.283(25.903),$p$=.00 </td>
   <td style="text-align:left;"> -28.925(6.905),$p$=.00 </td>
   <td style="text-align:left;"> +18.992(2.490),$p$=.00 </td>
   <td style="text-align:left;"> +0.776(0.466),$p$=.10 </td>
  </tr>
  <tr>
   <td style="text-align:left;"> pef--block </td>
   <td style="text-align:left;"> male </td>
   <td style="text-align:left;"> +454.499(91.233),$p$=.00 </td>
   <td style="text-align:left;"> -34.233(25.425),$p$=.18 </td>
   <td style="text-align:left;"> +24.223(7.972),$p$=.00 </td>
   <td style="text-align:left;"> +1.403(1.750),$p$=.42 </td>
  </tr>
  <tr>
   <td style="text-align:left;"> pef--digit_tot </td>
   <td style="text-align:left;"> female </td>
   <td style="text-align:left;"> +347.878(25.147),$p$=.00 </td>
   <td style="text-align:left;"> -30.345(5.906),$p$=.00 </td>
   <td style="text-align:left;"> +13.643(0.965),$p$=.00 </td>
   <td style="text-align:left;"> +0.243(0.187),$p$=.19 </td>
  </tr>
  <tr>
   <td style="text-align:left;"> pef--digit_tot </td>
   <td style="text-align:left;"> male </td>
   <td style="text-align:left;"> +454.763(89.937),$p$=.00 </td>
   <td style="text-align:left;"> -37.404(32.258),$p$=.25 </td>
   <td style="text-align:left;"> +12.895(3.529),$p$=.00 </td>
   <td style="text-align:left;"> -0.098(0.674),$p$=.89 </td>
  </tr>
  <tr>
   <td style="text-align:left;"> pef--symbol </td>
   <td style="text-align:left;"> female </td>
   <td style="text-align:left;"> +338.879(25.751),$p$=.00 </td>
   <td style="text-align:left;"> -25.209(8.419),$p$=.00 </td>
   <td style="text-align:left;"> +40.609(3.396),$p$=.00 </td>
   <td style="text-align:left;"> +0.600(0.682),$p$=.38 </td>
  </tr>
  <tr>
   <td style="text-align:left;"> pef--symbol </td>
   <td style="text-align:left;"> male </td>
   <td style="text-align:left;"> +442.711(90.706),$p$=.00 </td>
   <td style="text-align:left;"> -27.752(39.846),$p$=.49 </td>
   <td style="text-align:left;"> +40.948(7.831),$p$=.00 </td>
   <td style="text-align:left;"> +0.479(2.238),$p$=.83 </td>
  </tr>
  <tr>
   <td style="text-align:left;"> pef--trailsb </td>
   <td style="text-align:left;"> female </td>
   <td style="text-align:left;"> +344.528(25.992),$p$=.00 </td>
   <td style="text-align:left;"> -28.330(7.033),$p$=.00 </td>
   <td style="text-align:left;"> +163.084(21.445),$p$=.00 </td>
   <td style="text-align:left;"> +2.913(6.203),$p$=.64 </td>
  </tr>
  <tr>
   <td style="text-align:left;"> pef--trailsb </td>
   <td style="text-align:left;"> male </td>
   <td style="text-align:left;"> +445.387(93.935),$p$=.00 </td>
   <td style="text-align:left;"> -29.806(37.753),$p$=.43 </td>
   <td style="text-align:left;"> +153.886(58.287),$p$=.01 </td>
   <td style="text-align:left;"> +3.487(13.747),$p$=.80 </td>
  </tr>
</tbody>
</table>


##  elsa 

<table>
 <thead>
  <tr>
   <th style="text-align:left;"> process </th>
   <th style="text-align:left;"> subgroup </th>
   <th style="text-align:left;"> a_gamma_00 </th>
   <th style="text-align:left;"> a_gamma_10 </th>
   <th style="text-align:left;"> b_gamma_00 </th>
   <th style="text-align:left;"> b_gamma_10 </th>
  </tr>
 </thead>
<tbody>
  <tr>
   <td style="text-align:left;"> fev--word_de </td>
   <td style="text-align:left;"> female </td>
   <td style="text-align:left;"> +1.885(0.017),$p$=.00 </td>
   <td style="text-align:left;"> -0.021(0.002),$p$=.00 </td>
   <td style="text-align:left;"> +3.887(0.060),$p$=.00 </td>
   <td style="text-align:left;"> -0.041(0.008),$p$=.00 </td>
  </tr>
  <tr>
   <td style="text-align:left;"> fev--word_de </td>
   <td style="text-align:left;"> male </td>
   <td style="text-align:left;"> +2.626(0.032),$p$=.00 </td>
   <td style="text-align:left;"> -0.022(0.004),$p$=.00 </td>
   <td style="text-align:left;"> +3.271(0.081),$p$=.00 </td>
   <td style="text-align:left;"> +0.005(0.011),$p$=.61 </td>
  </tr>
  <tr>
   <td style="text-align:left;"> fev--word_im </td>
   <td style="text-align:left;"> female </td>
   <td style="text-align:left;"> +1.885(0.017),$p$=.00 </td>
   <td style="text-align:left;"> -0.021(0.002),$p$=.00 </td>
   <td style="text-align:left;"> +5.291(0.053),$p$=.00 </td>
   <td style="text-align:left;"> -0.036(0.008),$p$=.00 </td>
  </tr>
  <tr>
   <td style="text-align:left;"> fev--word_im </td>
   <td style="text-align:left;"> male </td>
   <td style="text-align:left;"> +2.626(0.032),$p$=.00 </td>
   <td style="text-align:left;"> -0.022(0.004),$p$=.00 </td>
   <td style="text-align:left;"> +4.868(0.072),$p$=.00 </td>
   <td style="text-align:left;"> -0.029(0.010),$p$=.00 </td>
  </tr>
  <tr>
   <td style="text-align:left;"> fev100--word_de </td>
   <td style="text-align:left;"> female </td>
   <td style="text-align:left;"> +188.513(1.682),$p$=.00 </td>
   <td style="text-align:left;"> -2.125(0.194),$p$=.00 </td>
   <td style="text-align:left;"> +3.887(0.060),$p$=.00 </td>
   <td style="text-align:left;"> -0.041(0.008),$p$=.00 </td>
  </tr>
  <tr>
   <td style="text-align:left;"> fev100--word_de </td>
   <td style="text-align:left;"> male </td>
   <td style="text-align:left;"> +262.629(3.206),$p$=.00 </td>
   <td style="text-align:left;"> -2.217(0.442),$p$=.00 </td>
   <td style="text-align:left;"> +3.271(0.081),$p$=.00 </td>
   <td style="text-align:left;"> +0.005(0.011),$p$=.61 </td>
  </tr>
  <tr>
   <td style="text-align:left;"> fev100--word_im </td>
   <td style="text-align:left;"> female </td>
   <td style="text-align:left;"> +188.492(1.681),$p$=.00 </td>
   <td style="text-align:left;"> -2.132(0.193),$p$=.00 </td>
   <td style="text-align:left;"> +5.291(0.053),$p$=.00 </td>
   <td style="text-align:left;"> -0.036(0.008),$p$=.00 </td>
  </tr>
  <tr>
   <td style="text-align:left;"> fev100--word_im </td>
   <td style="text-align:left;"> male </td>
   <td style="text-align:left;"> +262.607(3.206),$p$=.00 </td>
   <td style="text-align:left;"> -2.202(0.441),$p$=.00 </td>
   <td style="text-align:left;"> +4.868(0.072),$p$=.00 </td>
   <td style="text-align:left;"> -0.029(0.010),$p$=.00 </td>
  </tr>
  <tr>
   <td style="text-align:left;"> gait--fluency </td>
   <td style="text-align:left;"> female </td>
   <td style="text-align:left;"> +0.826(0.009),$p$=.00 </td>
   <td style="text-align:left;"> -0.012(0.001),$p$=.00 </td>
   <td style="text-align:left;"> +17.645(0.180),$p$=.00 </td>
   <td style="text-align:left;"> -0.084(0.026),$p$=.00 </td>
  </tr>
  <tr>
   <td style="text-align:left;"> gait--fluency </td>
   <td style="text-align:left;"> male </td>
   <td style="text-align:left;"> +0.862(0.013),$p$=.00 </td>
   <td style="text-align:left;"> -0.011(0.002),$p$=.00 </td>
   <td style="text-align:left;"> +18.252(0.256),$p$=.00 </td>
   <td style="text-align:left;"> -0.071(0.038),$p$=.06 </td>
  </tr>
  <tr>
   <td style="text-align:left;"> gait--word_de </td>
   <td style="text-align:left;"> female </td>
   <td style="text-align:left;"> +0.826(0.009),$p$=.00 </td>
   <td style="text-align:left;"> -0.012(0.001),$p$=.00 </td>
   <td style="text-align:left;"> +3.924(0.060),$p$=.00 </td>
   <td style="text-align:left;"> -0.057(0.009),$p$=.00 </td>
  </tr>
  <tr>
   <td style="text-align:left;"> gait--word_de </td>
   <td style="text-align:left;"> male </td>
   <td style="text-align:left;"> +0.863(0.013),$p$=.00 </td>
   <td style="text-align:left;"> -0.011(0.002),$p$=.00 </td>
   <td style="text-align:left;"> +3.350(0.081),$p$=.00 </td>
   <td style="text-align:left;"> -0.020(0.012),$p$=.11 </td>
  </tr>
  <tr>
   <td style="text-align:left;"> gait--word_im </td>
   <td style="text-align:left;"> female </td>
   <td style="text-align:left;"> +0.826(0.009),$p$=.00 </td>
   <td style="text-align:left;"> -0.012(0.001),$p$=.00 </td>
   <td style="text-align:left;"> +5.305(0.053),$p$=.00 </td>
   <td style="text-align:left;"> -0.047(0.009),$p$=.00 </td>
  </tr>
  <tr>
   <td style="text-align:left;"> gait--word_im </td>
   <td style="text-align:left;"> male </td>
   <td style="text-align:left;"> +0.862(0.013),$p$=.00 </td>
   <td style="text-align:left;"> -0.011(0.002),$p$=.00 </td>
   <td style="text-align:left;"> +4.901(0.072),$p$=.00 </td>
   <td style="text-align:left;"> -0.031(0.012),$p$=.01 </td>
  </tr>
  <tr>
   <td style="text-align:left;"> grip--word_de </td>
   <td style="text-align:left;"> female </td>
   <td style="text-align:left;"> +20.255(0.176),$p$=.00 </td>
   <td style="text-align:left;"> -0.294(0.019),$p$=.00 </td>
   <td style="text-align:left;"> +3.887(0.060),$p$=.00 </td>
   <td style="text-align:left;"> -0.042(0.008),$p$=.00 </td>
  </tr>
  <tr>
   <td style="text-align:left;"> grip--word_de </td>
   <td style="text-align:left;"> male </td>
   <td style="text-align:left;"> +34.272(0.330),$p$=.00 </td>
   <td style="text-align:left;"> -0.451(0.039),$p$=.00 </td>
   <td style="text-align:left;"> +3.271(0.081),$p$=.00 </td>
   <td style="text-align:left;"> +0.005(0.011),$p$=.64 </td>
  </tr>
  <tr>
   <td style="text-align:left;"> grip--word_im </td>
   <td style="text-align:left;"> female </td>
   <td style="text-align:left;"> +20.254(0.176),$p$=.00 </td>
   <td style="text-align:left;"> -0.294(0.019),$p$=.00 </td>
   <td style="text-align:left;"> +5.291(0.053),$p$=.00 </td>
   <td style="text-align:left;"> -0.037(0.008),$p$=.00 </td>
  </tr>
  <tr>
   <td style="text-align:left;"> grip--word_im </td>
   <td style="text-align:left;"> male </td>
   <td style="text-align:left;"> +34.272(0.330),$p$=.00 </td>
   <td style="text-align:left;"> -0.452(0.039),$p$=.00 </td>
   <td style="text-align:left;"> +4.868(0.072),$p$=.00 </td>
   <td style="text-align:left;"> -0.029(0.010),$p$=.00 </td>
  </tr>
</tbody>
</table>


##  hrs 

<table>
 <thead>
  <tr>
   <th style="text-align:left;"> process </th>
   <th style="text-align:left;"> subgroup </th>
   <th style="text-align:left;"> a_gamma_00 </th>
   <th style="text-align:left;"> a_gamma_10 </th>
   <th style="text-align:left;"> b_gamma_00 </th>
   <th style="text-align:left;"> b_gamma_10 </th>
  </tr>
 </thead>
<tbody>
  <tr>
   <td style="text-align:left;"> gait--serial7 </td>
   <td style="text-align:left;"> female </td>
   <td style="text-align:left;"> +0.792(0.025),$p$=.00 </td>
   <td style="text-align:left;"> -0.029(0.005),$p$=.00 </td>
   <td style="text-align:left;"> +2.262(0.194),$p$=.00 </td>
   <td style="text-align:left;"> -0.035(0.029),$p$=.23 </td>
  </tr>
  <tr>
   <td style="text-align:left;"> gait--serial7 </td>
   <td style="text-align:left;"> male </td>
   <td style="text-align:left;"> +0.863(0.036),$p$=.00 </td>
   <td style="text-align:left;"> -0.027(0.011),$p$=.01 </td>
   <td style="text-align:left;"> +3.136(0.278),$p$=.00 </td>
   <td style="text-align:left;"> -0.112(0.050),$p$=.02 </td>
  </tr>
  <tr>
   <td style="text-align:left;"> gait--tics </td>
   <td style="text-align:left;"> female </td>
   <td style="text-align:left;"> +0.793(0.025),$p$=.00 </td>
   <td style="text-align:left;"> -0.030(0.005),$p$=.00 </td>
   <td style="text-align:left;"> +9.004(0.141),$p$=.00 </td>
   <td style="text-align:left;"> -0.069(0.025),$p$=.01 </td>
  </tr>
  <tr>
   <td style="text-align:left;"> gait--tics </td>
   <td style="text-align:left;"> male </td>
   <td style="text-align:left;"> +0.861(0.036),$p$=.00 </td>
   <td style="text-align:left;"> -0.024(0.010),$p$=.02 </td>
   <td style="text-align:left;"> +9.334(0.154),$p$=.00 </td>
   <td style="text-align:left;"> -0.117(0.034),$p$=.00 </td>
  </tr>
  <tr>
   <td style="text-align:left;"> gait--word_de </td>
   <td style="text-align:left;"> female </td>
   <td style="text-align:left;"> +0.791(0.025),$p$=.00 </td>
   <td style="text-align:left;"> -0.029(0.005),$p$=.00 </td>
   <td style="text-align:left;"> +3.944(0.190),$p$=.00 </td>
   <td style="text-align:left;"> -0.005(0.031),$p$=.87 </td>
  </tr>
  <tr>
   <td style="text-align:left;"> gait--word_de </td>
   <td style="text-align:left;"> male </td>
   <td style="text-align:left;"> +0.859(0.036),$p$=.00 </td>
   <td style="text-align:left;"> -0.022(0.010),$p$=.03 </td>
   <td style="text-align:left;"> +3.383(0.264),$p$=.00 </td>
   <td style="text-align:left;"> -0.105(0.042),$p$=.01 </td>
  </tr>
  <tr>
   <td style="text-align:left;"> gait--word_im </td>
   <td style="text-align:left;"> female </td>
   <td style="text-align:left;"> +0.791(0.025),$p$=.00 </td>
   <td style="text-align:left;"> -0.029(0.005),$p$=.00 </td>
   <td style="text-align:left;"> +5.116(0.157),$p$=.00 </td>
   <td style="text-align:left;"> -0.057(0.027),$p$=.03 </td>
  </tr>
  <tr>
   <td style="text-align:left;"> gait--word_im </td>
   <td style="text-align:left;"> male </td>
   <td style="text-align:left;"> +0.860(0.036),$p$=.00 </td>
   <td style="text-align:left;"> -0.023(0.010),$p$=.03 </td>
   <td style="text-align:left;"> +4.442(0.212),$p$=.00 </td>
   <td style="text-align:left;"> -0.070(0.041),$p$=.09 </td>
  </tr>
  <tr>
   <td style="text-align:left;"> grip--serial7 </td>
   <td style="text-align:left;"> female </td>
   <td style="text-align:left;"> +23.625(0.891),$p$=.00 </td>
   <td style="text-align:left;"> -0.248(0.190),$p$=.19 </td>
   <td style="text-align:left;"> +2.243(0.155),$p$=.00 </td>
   <td style="text-align:left;"> -0.075(0.022),$p$=.00 </td>
  </tr>
  <tr>
   <td style="text-align:left;"> grip--serial7 </td>
   <td style="text-align:left;"> male </td>
   <td style="text-align:left;"> +35.254(1.110),$p$=.00 </td>
   <td style="text-align:left;"> -0.569(0.237),$p$=.02 </td>
   <td style="text-align:left;"> +3.264(0.217),$p$=.00 </td>
   <td style="text-align:left;"> -0.195(0.036),$p$=.00 </td>
  </tr>
  <tr>
   <td style="text-align:left;"> grip--tics </td>
   <td style="text-align:left;"> female </td>
   <td style="text-align:left;"> +23.660(0.889),$p$=.00 </td>
   <td style="text-align:left;"> -0.274(0.184),$p$=.14 </td>
   <td style="text-align:left;"> +8.022(0.282),$p$=.00 </td>
   <td style="text-align:left;"> -0.078(0.049),$p$=.11 </td>
  </tr>
  <tr>
   <td style="text-align:left;"> grip--tics </td>
   <td style="text-align:left;"> male </td>
   <td style="text-align:left;"> +35.262(1.126),$p$=.00 </td>
   <td style="text-align:left;"> -0.595(0.235),$p$=.01 </td>
   <td style="text-align:left;"> +8.744(0.230),$p$=.00 </td>
   <td style="text-align:left;"> -0.189(0.052),$p$=.00 </td>
  </tr>
  <tr>
   <td style="text-align:left;"> grip--word_de </td>
   <td style="text-align:left;"> female </td>
   <td style="text-align:left;"> +23.626(0.895),$p$=.00 </td>
   <td style="text-align:left;"> -0.250(0.191),$p$=.19 </td>
   <td style="text-align:left;"> +3.693(0.144),$p$=.00 </td>
   <td style="text-align:left;"> -0.034(0.025),$p$=.17 </td>
  </tr>
  <tr>
   <td style="text-align:left;"> grip--word_de </td>
   <td style="text-align:left;"> male </td>
   <td style="text-align:left;"> +35.214(1.118),$p$=.00 </td>
   <td style="text-align:left;"> -0.508(0.226),$p$=.03 </td>
   <td style="text-align:left;"> +2.966(0.198),$p$=.00 </td>
   <td style="text-align:left;"> -0.067(0.031),$p$=.03 </td>
  </tr>
  <tr>
   <td style="text-align:left;"> grip--word_im </td>
   <td style="text-align:left;"> female </td>
   <td style="text-align:left;"> +23.623(0.894),$p$=.00 </td>
   <td style="text-align:left;"> -0.246(0.189),$p$=.19 </td>
   <td style="text-align:left;"> +4.835(0.118),$p$=.00 </td>
   <td style="text-align:left;"> -0.083(0.020),$p$=.00 </td>
  </tr>
  <tr>
   <td style="text-align:left;"> grip--word_im </td>
   <td style="text-align:left;"> male </td>
   <td style="text-align:left;"> +35.227(1.120),$p$=.00 </td>
   <td style="text-align:left;"> -0.549(0.226),$p$=.01 </td>
   <td style="text-align:left;"> +4.323(0.171),$p$=.00 </td>
   <td style="text-align:left;"> -0.117(0.030),$p$=.00 </td>
  </tr>
  <tr>
   <td style="text-align:left;"> pef--serial7 </td>
   <td style="text-align:left;"> female </td>
   <td style="text-align:left;"> +256.766(6.160),$p$=.00 </td>
   <td style="text-align:left;"> -2.157(1.288),$p$=.09 </td>
   <td style="text-align:left;"> +2.222(0.146),$p$=.00 </td>
   <td style="text-align:left;"> -0.080(0.020),$p$=.00 </td>
  </tr>
  <tr>
   <td style="text-align:left;"> pef--serial7 </td>
   <td style="text-align:left;"> male </td>
   <td style="text-align:left;"> +339.383(14.496),$p$=.00 </td>
   <td style="text-align:left;"> -6.000(2.749),$p$=.03 </td>
   <td style="text-align:left;"> +3.069(0.220),$p$=.00 </td>
   <td style="text-align:left;"> -0.181(0.036),$p$=.00 </td>
  </tr>
  <tr>
   <td style="text-align:left;"> pef--tics </td>
   <td style="text-align:left;"> female </td>
   <td style="text-align:left;"> +256.954(6.161),$p$=.00 </td>
   <td style="text-align:left;"> -2.339(1.285),$p$=.07 </td>
   <td style="text-align:left;"> +8.078(0.250),$p$=.00 </td>
   <td style="text-align:left;"> -0.124(0.045),$p$=.01 </td>
  </tr>
  <tr>
   <td style="text-align:left;"> pef--tics </td>
   <td style="text-align:left;"> male </td>
   <td style="text-align:left;"> +339.429(14.454),$p$=.00 </td>
   <td style="text-align:left;"> -5.940(2.660),$p$=.03 </td>
   <td style="text-align:left;"> +8.603(0.248),$p$=.00 </td>
   <td style="text-align:left;"> -0.181(0.053),$p$=.00 </td>
  </tr>
  <tr>
   <td style="text-align:left;"> pef--word_de </td>
   <td style="text-align:left;"> female </td>
   <td style="text-align:left;"> +256.731(6.155),$p$=.00 </td>
   <td style="text-align:left;"> -2.110(1.276),$p$=.10 </td>
   <td style="text-align:left;"> +3.583(0.138),$p$=.00 </td>
   <td style="text-align:left;"> -0.038(0.022),$p$=.09 </td>
  </tr>
  <tr>
   <td style="text-align:left;"> pef--word_de </td>
   <td style="text-align:left;"> male </td>
   <td style="text-align:left;"> +339.218(14.452),$p$=.00 </td>
   <td style="text-align:left;"> -5.641(2.640),$p$=.03 </td>
   <td style="text-align:left;"> +2.940(0.195),$p$=.00 </td>
   <td style="text-align:left;"> -0.060(0.031),$p$=.05 </td>
  </tr>
  <tr>
   <td style="text-align:left;"> pef--word_im </td>
   <td style="text-align:left;"> female </td>
   <td style="text-align:left;"> +256.721(6.157),$p$=.00 </td>
   <td style="text-align:left;"> -2.097(1.276),$p$=.10 </td>
   <td style="text-align:left;"> +4.750(0.114),$p$=.00 </td>
   <td style="text-align:left;"> -0.080(0.020),$p$=.00 </td>
  </tr>
  <tr>
   <td style="text-align:left;"> pef--word_im </td>
   <td style="text-align:left;"> male </td>
   <td style="text-align:left;"> +339.271(14.464),$p$=.00 </td>
   <td style="text-align:left;"> -5.609(2.653),$p$=.04 </td>
   <td style="text-align:left;"> +4.238(0.164),$p$=.00 </td>
   <td style="text-align:left;"> -0.102(0.030),$p$=.00 </td>
  </tr>
</tbody>
</table>


##  ilse 

<table>
 <thead>
  <tr>
   <th style="text-align:left;"> process </th>
   <th style="text-align:left;"> subgroup </th>
   <th style="text-align:left;"> a_gamma_00 </th>
   <th style="text-align:left;"> a_gamma_10 </th>
   <th style="text-align:left;"> b_gamma_00 </th>
   <th style="text-align:left;"> b_gamma_10 </th>
  </tr>
 </thead>
<tbody>
  <tr>
   <td style="text-align:left;"> grip--fluency </td>
   <td style="text-align:left;"> female </td>
   <td style="text-align:left;"> +88.572(13.392),$p$=.00 </td>
   <td style="text-align:left;"> -7.092(2.244),$p$=.00 </td>
   <td style="text-align:left;"> +24.107(5.142),$p$=.00 </td>
   <td style="text-align:left;"> -0.172(0.488),$p$=.72 </td>
  </tr>
  <tr>
   <td style="text-align:left;"> grip--fluency </td>
   <td style="text-align:left;"> male </td>
   <td style="text-align:left;"> +95.038(12.776),$p$=.00 </td>
   <td style="text-align:left;"> -2.831(1.541),$p$=.07 </td>
   <td style="text-align:left;"> +23.804(4.664),$p$=.00 </td>
   <td style="text-align:left;"> -0.077(0.459),$p$=.87 </td>
  </tr>
  <tr>
   <td style="text-align:left;"> grip--piccomp </td>
   <td style="text-align:left;"> female </td>
   <td style="text-align:left;"> +87.359(13.864),$p$=.00 </td>
   <td style="text-align:left;"> -6.393(2.311),$p$=.01 </td>
   <td style="text-align:left;"> +10.163(3.045),$p$=.00 </td>
   <td style="text-align:left;"> +0.199(0.286),$p$=.53 </td>
  </tr>
  <tr>
   <td style="text-align:left;"> grip--piccomp </td>
   <td style="text-align:left;"> male </td>
   <td style="text-align:left;"> +94.668(12.541),$p$=.00 </td>
   <td style="text-align:left;"> -2.761(1.573),$p$=.08 </td>
   <td style="text-align:left;"> +16.564(2.542),$p$=.00 </td>
   <td style="text-align:left;"> -0.364(0.274),$p$=.45 </td>
  </tr>
  <tr>
   <td style="text-align:left;"> grip--symbol </td>
   <td style="text-align:left;"> female </td>
   <td style="text-align:left;"> +87.545(13.547),$p$=.00 </td>
   <td style="text-align:left;"> -6.555(2.212),$p$=.00 </td>
   <td style="text-align:left;"> +38.183(6.489),$p$=.00 </td>
   <td style="text-align:left;"> +0.018(0.372),$p$=.96 </td>
  </tr>
  <tr>
   <td style="text-align:left;"> grip--symbol </td>
   <td style="text-align:left;"> male </td>
   <td style="text-align:left;"> +94.640(12.738),$p$=.00 </td>
   <td style="text-align:left;"> -2.819(1.590),$p$=.08 </td>
   <td style="text-align:left;"> +37.535(5.556),$p$=.00 </td>
   <td style="text-align:left;"> +0.016(0.524),$p$=.98 </td>
  </tr>
  <tr>
   <td style="text-align:left;"> grip--waisgeneral </td>
   <td style="text-align:left;"> female </td>
   <td style="text-align:left;"> +87.839(14.241),$p$=.00 </td>
   <td style="text-align:left;"> -6.771(2.326),$p$=.00 </td>
   <td style="text-align:left;"> +12.016(2.227),$p$=.00 </td>
   <td style="text-align:left;"> +0.340(0.171),$p$=.05 </td>
  </tr>
  <tr>
   <td style="text-align:left;"> grip--waisgeneral </td>
   <td style="text-align:left;"> male </td>
   <td style="text-align:left;"> +94.551(13.162),$p$=.00 </td>
   <td style="text-align:left;"> -2.639(1.614),$p$=.10 </td>
   <td style="text-align:left;"> +14.293(2.142),$p$=.00 </td>
   <td style="text-align:left;"> +0.035(0.180),$p$=.85 </td>
  </tr>
  <tr>
   <td style="text-align:left;"> nophys--block </td>
   <td style="text-align:left;"> female </td>
   <td style="text-align:left;"> +87.565(13.566),$p$=.00 </td>
   <td style="text-align:left;"> -6.422(2.352),$p$=.01 </td>
   <td style="text-align:left;"> +19.547(4.531),$p$=.00 </td>
   <td style="text-align:left;"> -0.165(0.407),$p$=.69 </td>
  </tr>
  <tr>
   <td style="text-align:left;"> nophys--block </td>
   <td style="text-align:left;"> male </td>
   <td style="text-align:left;"> +94.352(12.925),$p$=.00 </td>
   <td style="text-align:left;"> -2.699(1.558),$p$=.08 </td>
   <td style="text-align:left;"> +22.771(3.967),$p$=.00 </td>
   <td style="text-align:left;"> -0.750(0.429),$p$=.08 </td>
  </tr>
  <tr>
   <td style="text-align:left;"> tug--block </td>
   <td style="text-align:left;"> female </td>
   <td style="text-align:left;"> +4.778(1.647),$p$=.00 </td>
   <td style="text-align:left;"> +0.206(0.198),$p$=.30 </td>
   <td style="text-align:left;"> +19.531(4.805),$p$=.00 </td>
   <td style="text-align:left;"> -0.168(0.441),$p$=.70 </td>
  </tr>
  <tr>
   <td style="text-align:left;"> tug--block </td>
   <td style="text-align:left;"> male </td>
   <td style="text-align:left;"> +4.710(1.104),$p$=.00 </td>
   <td style="text-align:left;"> +0.284(0.179),$p$=.11 </td>
   <td style="text-align:left;"> +22.729(3.916),$p$=.00 </td>
   <td style="text-align:left;"> -0.749(0.453),$p$=.10 </td>
  </tr>
  <tr>
   <td style="text-align:left;"> tug--fluency </td>
   <td style="text-align:left;"> female </td>
   <td style="text-align:left;"> +4.787(1.647),$p$=.00 </td>
   <td style="text-align:left;"> +0.208(0.198),$p$=.29 </td>
   <td style="text-align:left;"> +24.117(5.391),$p$=.00 </td>
   <td style="text-align:left;"> -0.180(0.537),$p$=.74 </td>
  </tr>
  <tr>
   <td style="text-align:left;"> tug--piccomp </td>
   <td style="text-align:left;"> female </td>
   <td style="text-align:left;"> +4.795(1.620),$p$=.00 </td>
   <td style="text-align:left;"> +0.206(0.199),$p$=.30 </td>
   <td style="text-align:left;"> +10.163(3.010),$p$=.00 </td>
   <td style="text-align:left;"> +0.198(0.293),$p$=.55 </td>
  </tr>
  <tr>
   <td style="text-align:left;"> tug--piccomp </td>
   <td style="text-align:left;"> male </td>
   <td style="text-align:left;"> +4.767(1.140),$p$=.00 </td>
   <td style="text-align:left;"> +0.285(0.178),$p$=.11 </td>
   <td style="text-align:left;"> +16.521(2.526),$p$=.00 </td>
   <td style="text-align:left;"> -0.343(0.285),$p$=.43 </td>
  </tr>
  <tr>
   <td style="text-align:left;"> tug--symbol </td>
   <td style="text-align:left;"> female </td>
   <td style="text-align:left;"> +4.855(1.517),$p$=.00 </td>
   <td style="text-align:left;"> +0.186(0.192),$p$=.33 </td>
   <td style="text-align:left;"> +38.150(6.739),$p$=.00 </td>
   <td style="text-align:left;"> +0.033(0.385),$p$=.93 </td>
  </tr>
  <tr>
   <td style="text-align:left;"> tug--symbol </td>
   <td style="text-align:left;"> male </td>
   <td style="text-align:left;"> +4.920(1.096),$p$=.00 </td>
   <td style="text-align:left;"> +0.268(0.176),$p$=.13 </td>
   <td style="text-align:left;"> +37.485(5.522),$p$=.00 </td>
   <td style="text-align:left;"> +0.040(0.503),$p$=.94 </td>
  </tr>
  <tr>
   <td style="text-align:left;"> tug--waisgeneral </td>
   <td style="text-align:left;"> female </td>
   <td style="text-align:left;"> +4.787(1.545),$p$=.00 </td>
   <td style="text-align:left;"> +0.208(0.189),$p$=.27 </td>
   <td style="text-align:left;"> +11.999(2.199),$p$=.00 </td>
   <td style="text-align:left;"> +0.353(0.164),$p$=.03 </td>
  </tr>
  <tr>
   <td style="text-align:left;"> tug--waisgeneral </td>
   <td style="text-align:left;"> male </td>
   <td style="text-align:left;"> +4.877(1.130),$p$=.00 </td>
   <td style="text-align:left;"> +0.262(0.186),$p$=.16 </td>
   <td style="text-align:left;"> +14.285(2.074),$p$=.00 </td>
   <td style="text-align:left;"> +0.038(0.191),$p$=.84 </td>
  </tr>
</tbody>
</table>


##  lasa 

<table>
 <thead>
  <tr>
   <th style="text-align:left;"> process </th>
   <th style="text-align:left;"> subgroup </th>
   <th style="text-align:left;"> a_gamma_00 </th>
   <th style="text-align:left;"> a_gamma_10 </th>
   <th style="text-align:left;"> b_gamma_00 </th>
   <th style="text-align:left;"> b_gamma_10 </th>
  </tr>
 </thead>
<tbody>
  <tr>
   <td style="text-align:left;"> gait--letter </td>
   <td style="text-align:left;"> female </td>
   <td style="text-align:left;"> +7.756(0.173),$p$=.00 </td>
   <td style="text-align:left;"> +0.423(0.049),$p$=.00 </td>
   <td style="text-align:left;"> +24.298(0.353),$p$=.00 </td>
   <td style="text-align:left;"> -0.350(0.021),$p$=.00 </td>
  </tr>
  <tr>
   <td style="text-align:left;"> gait--letter </td>
   <td style="text-align:left;"> male </td>
   <td style="text-align:left;"> +7.198(0.142),$p$=.00 </td>
   <td style="text-align:left;"> +0.422(0.064),$p$=.00 </td>
   <td style="text-align:left;"> +22.830(0.355),$p$=.00 </td>
   <td style="text-align:left;"> -0.376(0.027),$p$=.00 </td>
  </tr>
  <tr>
   <td style="text-align:left;"> gait--raven </td>
   <td style="text-align:left;"> female </td>
   <td style="text-align:left;"> +7.775(0.175),$p$=.00 </td>
   <td style="text-align:left;"> +0.417(0.050),$p$=.00 </td>
   <td style="text-align:left;"> +17.798(0.175),$p$=.00 </td>
   <td style="text-align:left;"> -0.164(0.016),$p$=.00 </td>
  </tr>
  <tr>
   <td style="text-align:left;"> gait--raven </td>
   <td style="text-align:left;"> male </td>
   <td style="text-align:left;"> +7.199(0.142),$p$=.00 </td>
   <td style="text-align:left;"> +0.421(0.063),$p$=.00 </td>
   <td style="text-align:left;"> +17.641(0.191),$p$=.00 </td>
   <td style="text-align:left;"> -0.167(0.020),$p$=.00 </td>
  </tr>
  <tr>
   <td style="text-align:left;"> gait--word_im </td>
   <td style="text-align:left;"> female </td>
   <td style="text-align:left;"> +7.772(0.173),$p$=.00 </td>
   <td style="text-align:left;"> +0.419(0.050),$p$=.00 </td>
   <td style="text-align:left;"> +21.107(0.274),$p$=.00 </td>
   <td style="text-align:left;"> -0.309(0.027),$p$=.00 </td>
  </tr>
  <tr>
   <td style="text-align:left;"> gait--word_im </td>
   <td style="text-align:left;"> male </td>
   <td style="text-align:left;"> +7.198(0.142),$p$=.00 </td>
   <td style="text-align:left;"> +0.420(0.063),$p$=.00 </td>
   <td style="text-align:left;"> +17.652(0.274),$p$=.00 </td>
   <td style="text-align:left;"> -0.219(0.028),$p$=.00 </td>
  </tr>
  <tr>
   <td style="text-align:left;"> grip--letter </td>
   <td style="text-align:left;"> female </td>
   <td style="text-align:left;"> +19.445(0.285),$p$=.00 </td>
   <td style="text-align:left;"> -0.288(0.030),$p$=.00 </td>
   <td style="text-align:left;"> +23.532(0.380),$p$=.00 </td>
   <td style="text-align:left;"> -0.378(0.029),$p$=.00 </td>
  </tr>
  <tr>
   <td style="text-align:left;"> grip--letter </td>
   <td style="text-align:left;"> male </td>
   <td style="text-align:left;"> +34.019(0.493),$p$=.00 </td>
   <td style="text-align:left;"> -0.606(0.059),$p$=.00 </td>
   <td style="text-align:left;"> +21.912(0.373),$p$=.00 </td>
   <td style="text-align:left;"> -0.391(0.038),$p$=.00 </td>
  </tr>
  <tr>
   <td style="text-align:left;"> grip--raven </td>
   <td style="text-align:left;"> female </td>
   <td style="text-align:left;"> +19.430(0.285),$p$=.00 </td>
   <td style="text-align:left;"> -0.282(0.030),$p$=.00 </td>
   <td style="text-align:left;"> +17.291(0.187),$p$=.00 </td>
   <td style="text-align:left;"> -0.157(0.022),$p$=.00 </td>
  </tr>
  <tr>
   <td style="text-align:left;"> grip--raven </td>
   <td style="text-align:left;"> male </td>
   <td style="text-align:left;"> +33.983(0.491),$p$=.00 </td>
   <td style="text-align:left;"> -0.594(0.059),$p$=.00 </td>
   <td style="text-align:left;"> +17.232(0.195),$p$=.00 </td>
   <td style="text-align:left;"> -0.160(0.025),$p$=.00 </td>
  </tr>
  <tr>
   <td style="text-align:left;"> grip--word_im </td>
   <td style="text-align:left;"> female </td>
   <td style="text-align:left;"> +19.422(0.286),$p$=.00 </td>
   <td style="text-align:left;"> -0.278(0.030),$p$=.00 </td>
   <td style="text-align:left;"> +21.442(0.314),$p$=.00 </td>
   <td style="text-align:left;"> -0.478(0.035),$p$=.00 </td>
  </tr>
  <tr>
   <td style="text-align:left;"> grip--word_im </td>
   <td style="text-align:left;"> male </td>
   <td style="text-align:left;"> +34.050(0.492),$p$=.00 </td>
   <td style="text-align:left;"> -0.615(0.060),$p$=.00 </td>
   <td style="text-align:left;"> +17.889(0.304),$p$=.00 </td>
   <td style="text-align:left;"> -0.324(0.035),$p$=.00 </td>
  </tr>
  <tr>
   <td style="text-align:left;"> pef--letter </td>
   <td style="text-align:left;"> female </td>
   <td style="text-align:left;"> +352.088(4.518),$p$=.00 </td>
   <td style="text-align:left;"> -3.804(0.362),$p$=.00 </td>
   <td style="text-align:left;"> +24.256(0.353),$p$=.00 </td>
   <td style="text-align:left;"> -0.335(0.023),$p$=.00 </td>
  </tr>
  <tr>
   <td style="text-align:left;"> pef--letter </td>
   <td style="text-align:left;"> male </td>
   <td style="text-align:left;"> +468.551(6.541),$p$=.00 </td>
   <td style="text-align:left;"> -5.403(0.548),$p$=.00 </td>
   <td style="text-align:left;"> +22.821(0.354),$p$=.00 </td>
   <td style="text-align:left;"> -0.374(0.028),$p$=.00 </td>
  </tr>
  <tr>
   <td style="text-align:left;"> pef--raven </td>
   <td style="text-align:left;"> female </td>
   <td style="text-align:left;"> +352.054(4.511),$p$=.00 </td>
   <td style="text-align:left;"> -3.795(0.363),$p$=.00 </td>
   <td style="text-align:left;"> +17.815(0.176),$p$=.00 </td>
   <td style="text-align:left;"> -0.173(0.018),$p$=.00 </td>
  </tr>
  <tr>
   <td style="text-align:left;"> pef--raven </td>
   <td style="text-align:left;"> male </td>
   <td style="text-align:left;"> +468.327(6.538),$p$=.00 </td>
   <td style="text-align:left;"> -5.303(0.559),$p$=.00 </td>
   <td style="text-align:left;"> +17.648(0.191),$p$=.00 </td>
   <td style="text-align:left;"> -0.169(0.020),$p$=.00 </td>
  </tr>
  <tr>
   <td style="text-align:left;"> pef--word_im </td>
   <td style="text-align:left;"> female </td>
   <td style="text-align:left;"> +351.995(4.518),$p$=.00 </td>
   <td style="text-align:left;"> -3.766(0.359),$p$=.00 </td>
   <td style="text-align:left;"> +21.041(0.277),$p$=.00 </td>
   <td style="text-align:left;"> -0.290(0.030),$p$=.00 </td>
  </tr>
  <tr>
   <td style="text-align:left;"> pef--word_im </td>
   <td style="text-align:left;"> male </td>
   <td style="text-align:left;"> +468.422(6.534),$p$=.00 </td>
   <td style="text-align:left;"> -5.307(0.545),$p$=.00 </td>
   <td style="text-align:left;"> +17.604(0.275),$p$=.00 </td>
   <td style="text-align:left;"> -0.198(0.029),$p$=.00 </td>
  </tr>
</tbody>
</table>


##  map 

<table>
 <thead>
  <tr>
   <th style="text-align:left;"> process </th>
   <th style="text-align:left;"> subgroup </th>
   <th style="text-align:left;"> a_gamma_00 </th>
   <th style="text-align:left;"> a_gamma_10 </th>
   <th style="text-align:left;"> b_gamma_00 </th>
   <th style="text-align:left;"> b_gamma_10 </th>
  </tr>
 </thead>
<tbody>
  <tr>
   <td style="text-align:left;"> fev--bnt </td>
   <td style="text-align:left;"> female </td>
   <td style="text-align:left;"> +1.677(0.035),$p$=.00 </td>
   <td style="text-align:left;"> -0.038(0.009),$p$=.00 </td>
   <td style="text-align:left;"> +13.472(0.165),$p$=.00 </td>
   <td style="text-align:left;"> +0.094(0.039),$p$=.02 </td>
  </tr>
  <tr>
   <td style="text-align:left;"> fev--bnt </td>
   <td style="text-align:left;"> male </td>
   <td style="text-align:left;"> +2.409(0.108),$p$=.00 </td>
   <td style="text-align:left;"> -0.081(0.023),$p$=.00 </td>
   <td style="text-align:left;"> +13.754(0.293),$p$=.00 </td>
   <td style="text-align:left;"> +0.056(0.048),$p$=.24 </td>
  </tr>
  <tr>
   <td style="text-align:left;"> fev--bstory_de </td>
   <td style="text-align:left;"> female </td>
   <td style="text-align:left;"> +1.676(0.035),$p$=.00 </td>
   <td style="text-align:left;"> -0.037(0.009),$p$=.00 </td>
   <td style="text-align:left;"> +8.977(0.158),$p$=.00 </td>
   <td style="text-align:left;"> +0.065(0.064),$p$=.31 </td>
  </tr>
  <tr>
   <td style="text-align:left;"> fev--bstory_de </td>
   <td style="text-align:left;"> male </td>
   <td style="text-align:left;"> +2.405(0.108),$p$=.00 </td>
   <td style="text-align:left;"> -0.079(0.024),$p$=.00 </td>
   <td style="text-align:left;"> +8.942(0.336),$p$=.00 </td>
   <td style="text-align:left;"> -0.079(0.115),$p$=.49 </td>
  </tr>
  <tr>
   <td style="text-align:left;"> fev--bstory_im </td>
   <td style="text-align:left;"> female </td>
   <td style="text-align:left;"> +1.677(0.035),$p$=.00 </td>
   <td style="text-align:left;"> -0.037(0.009),$p$=.00 </td>
   <td style="text-align:left;"> +9.373(0.156),$p$=.00 </td>
   <td style="text-align:left;"> -0.033(0.062),$p$=.59 </td>
  </tr>
  <tr>
   <td style="text-align:left;"> fev--bstory_im </td>
   <td style="text-align:left;"> male </td>
   <td style="text-align:left;"> +2.406(0.108),$p$=.00 </td>
   <td style="text-align:left;"> -0.080(0.023),$p$=.00 </td>
   <td style="text-align:left;"> +9.444(0.285),$p$=.00 </td>
   <td style="text-align:left;"> -0.069(0.104),$p$=.51 </td>
  </tr>
  <tr>
   <td style="text-align:left;"> fev--categories </td>
   <td style="text-align:left;"> female </td>
   <td style="text-align:left;"> +1.675(0.035),$p$=.00 </td>
   <td style="text-align:left;"> -0.037(0.009),$p$=.00 </td>
   <td style="text-align:left;"> +32.915(0.764),$p$=.00 </td>
   <td style="text-align:left;"> -0.054(0.213),$p$=.80 </td>
  </tr>
  <tr>
   <td style="text-align:left;"> fev--categories </td>
   <td style="text-align:left;"> male </td>
   <td style="text-align:left;"> +2.410(0.108),$p$=.00 </td>
   <td style="text-align:left;"> -0.081(0.024),$p$=.00 </td>
   <td style="text-align:left;"> +31.344(1.334),$p$=.00 </td>
   <td style="text-align:left;"> +0.375(0.352),$p$=.29 </td>
  </tr>
  <tr>
   <td style="text-align:left;"> fev--digit_b </td>
   <td style="text-align:left;"> female </td>
   <td style="text-align:left;"> +1.675(0.035),$p$=.00 </td>
   <td style="text-align:left;"> -0.037(0.009),$p$=.00 </td>
   <td style="text-align:left;"> +5.187(0.182),$p$=.00 </td>
   <td style="text-align:left;"> -0.007(0.054),$p$=.90 </td>
  </tr>
  <tr>
   <td style="text-align:left;"> fev--digit_b </td>
   <td style="text-align:left;"> male </td>
   <td style="text-align:left;"> +2.408(0.108),$p$=.00 </td>
   <td style="text-align:left;"> -0.079(0.023),$p$=.00 </td>
   <td style="text-align:left;"> +5.040(0.308),$p$=.00 </td>
   <td style="text-align:left;"> +0.041(0.101),$p$=.68 </td>
  </tr>
  <tr>
   <td style="text-align:left;"> fev--digit_f </td>
   <td style="text-align:left;"> female </td>
   <td style="text-align:left;"> +1.677(0.035),$p$=.00 </td>
   <td style="text-align:left;"> -0.037(0.009),$p$=.00 </td>
   <td style="text-align:left;"> +7.278(0.199),$p$=.00 </td>
   <td style="text-align:left;"> +0.043(0.057),$p$=.46 </td>
  </tr>
  <tr>
   <td style="text-align:left;"> fev--digit_f </td>
   <td style="text-align:left;"> male </td>
   <td style="text-align:left;"> +2.404(0.109),$p$=.00 </td>
   <td style="text-align:left;"> -0.077(0.023),$p$=.00 </td>
   <td style="text-align:left;"> +7.238(0.292),$p$=.00 </td>
   <td style="text-align:left;"> +0.005(0.094),$p$=.95 </td>
  </tr>
  <tr>
   <td style="text-align:left;"> fev--digit_o </td>
   <td style="text-align:left;"> female </td>
   <td style="text-align:left;"> +1.676(0.035),$p$=.00 </td>
   <td style="text-align:left;"> -0.037(0.009),$p$=.00 </td>
   <td style="text-align:left;"> +6.501(0.160),$p$=.00 </td>
   <td style="text-align:left;"> +0.068(0.048),$p$=.16 </td>
  </tr>
  <tr>
   <td style="text-align:left;"> fev--digit_o </td>
   <td style="text-align:left;"> male </td>
   <td style="text-align:left;"> +2.403(0.108),$p$=.00 </td>
   <td style="text-align:left;"> -0.079(0.023),$p$=.00 </td>
   <td style="text-align:left;"> +6.852(0.246),$p$=.00 </td>
   <td style="text-align:left;"> -0.104(0.083),$p$=.21 </td>
  </tr>
  <tr>
   <td style="text-align:left;"> fev--ideas </td>
   <td style="text-align:left;"> female </td>
   <td style="text-align:left;"> +1.677(0.035),$p$=.00 </td>
   <td style="text-align:left;"> -0.037(0.009),$p$=.00 </td>
   <td style="text-align:left;"> +7.562(0.056),$p$=.00 </td>
   <td style="text-align:left;"> +0.018(0.019),$p$=.34 </td>
  </tr>
  <tr>
   <td style="text-align:left;"> fev--ideas </td>
   <td style="text-align:left;"> male </td>
   <td style="text-align:left;"> +2.407(0.108),$p$=.00 </td>
   <td style="text-align:left;"> -0.082(0.024),$p$=.00 </td>
   <td style="text-align:left;"> +7.776(0.089),$p$=.00 </td>
   <td style="text-align:left;"> -0.038(0.048),$p$=.43 </td>
  </tr>
  <tr>
   <td style="text-align:left;"> fev--line </td>
   <td style="text-align:left;"> female </td>
   <td style="text-align:left;"> +1.675(0.035),$p$=.00 </td>
   <td style="text-align:left;"> -0.038(0.009),$p$=.00 </td>
   <td style="text-align:left;"> +8.157(0.297),$p$=.00 </td>
   <td style="text-align:left;"> -0.039(0.084),$p$=.64 </td>
  </tr>
  <tr>
   <td style="text-align:left;"> fev--line </td>
   <td style="text-align:left;"> male </td>
   <td style="text-align:left;"> +2.408(0.108),$p$=.00 </td>
   <td style="text-align:left;"> -0.081(0.023),$p$=.00 </td>
   <td style="text-align:left;"> +10.347(0.513),$p$=.00 </td>
   <td style="text-align:left;"> -0.132(0.151),$p$=.38 </td>
  </tr>
  <tr>
   <td style="text-align:left;"> fev--logic_de </td>
   <td style="text-align:left;"> female </td>
   <td style="text-align:left;"> +1.678(0.035),$p$=.00 </td>
   <td style="text-align:left;"> -0.038(0.009),$p$=.00 </td>
   <td style="text-align:left;"> +8.493(0.372),$p$=.00 </td>
   <td style="text-align:left;"> +0.272(0.123),$p$=.03 </td>
  </tr>
  <tr>
   <td style="text-align:left;"> fev--logic_de </td>
   <td style="text-align:left;"> male </td>
   <td style="text-align:left;"> +2.405(0.108),$p$=.00 </td>
   <td style="text-align:left;"> -0.082(0.024),$p$=.00 </td>
   <td style="text-align:left;"> +7.948(0.739),$p$=.00 </td>
   <td style="text-align:left;"> +0.220(0.236),$p$=.35 </td>
  </tr>
  <tr>
   <td style="text-align:left;"> fev--logic_im </td>
   <td style="text-align:left;"> female </td>
   <td style="text-align:left;"> +1.678(0.035),$p$=.00 </td>
   <td style="text-align:left;"> -0.037(0.009),$p$=.00 </td>
   <td style="text-align:left;"> +10.196(0.372),$p$=.00 </td>
   <td style="text-align:left;"> +0.259(0.117),$p$=.03 </td>
  </tr>
  <tr>
   <td style="text-align:left;"> fev--logic_im </td>
   <td style="text-align:left;"> male </td>
   <td style="text-align:left;"> +2.404(0.108),$p$=.00 </td>
   <td style="text-align:left;"> -0.080(0.023),$p$=.00 </td>
   <td style="text-align:left;"> +9.529(0.718),$p$=.00 </td>
   <td style="text-align:left;"> +0.139(0.214),$p$=.52 </td>
  </tr>
  <tr>
   <td style="text-align:left;"> fev--matrices </td>
   <td style="text-align:left;"> female </td>
   <td style="text-align:left;"> +1.676(0.035),$p$=.00 </td>
   <td style="text-align:left;"> -0.037(0.009),$p$=.00 </td>
   <td style="text-align:left;"> +9.752(0.261),$p$=.00 </td>
   <td style="text-align:left;"> +0.032(0.087),$p$=.71 </td>
  </tr>
  <tr>
   <td style="text-align:left;"> fev--matrices </td>
   <td style="text-align:left;"> male </td>
   <td style="text-align:left;"> +2.405(0.108),$p$=.00 </td>
   <td style="text-align:left;"> -0.079(0.023),$p$=.00 </td>
   <td style="text-align:left;"> +10.940(0.455),$p$=.00 </td>
   <td style="text-align:left;"> +0.048(0.144),$p$=.74 </td>
  </tr>
  <tr>
   <td style="text-align:left;"> fev--mmms </td>
   <td style="text-align:left;"> female </td>
   <td style="text-align:left;"> +1.677(0.035),$p$=.00 </td>
   <td style="text-align:left;"> -0.037(0.010),$p$=.00 </td>
   <td style="text-align:left;"> +27.661(0.159),$p$=.00 </td>
   <td style="text-align:left;"> +0.050(0.071),$p$=.49 </td>
  </tr>
  <tr>
   <td style="text-align:left;"> fev--mmms </td>
   <td style="text-align:left;"> male </td>
   <td style="text-align:left;"> +2.405(0.108),$p$=.00 </td>
   <td style="text-align:left;"> -0.082(0.023),$p$=.00 </td>
   <td style="text-align:left;"> +27.302(0.299),$p$=.00 </td>
   <td style="text-align:left;"> +0.013(0.129),$p$=.92 </td>
  </tr>
  <tr>
   <td style="text-align:left;"> fev--nart </td>
   <td style="text-align:left;"> female </td>
   <td style="text-align:left;"> +1.679(0.035),$p$=.00 </td>
   <td style="text-align:left;"> -0.038(0.009),$p$=.00 </td>
   <td style="text-align:left;"> +5.044(0.222),$p$=.00 </td>
   <td style="text-align:left;"> +0.040(0.045),$p$=.38 </td>
  </tr>
  <tr>
   <td style="text-align:left;"> fev--nart </td>
   <td style="text-align:left;"> male </td>
   <td style="text-align:left;"> +2.403(0.108),$p$=.00 </td>
   <td style="text-align:left;"> -0.080(0.023),$p$=.00 </td>
   <td style="text-align:left;"> +4.883(0.396),$p$=.00 </td>
   <td style="text-align:left;"> +0.072(0.076),$p$=.35 </td>
  </tr>
  <tr>
   <td style="text-align:left;"> fev--num_comp </td>
   <td style="text-align:left;"> female </td>
   <td style="text-align:left;"> +1.677(0.035),$p$=.00 </td>
   <td style="text-align:left;"> -0.038(0.009),$p$=.00 </td>
   <td style="text-align:left;"> +23.145(0.766),$p$=.00 </td>
   <td style="text-align:left;"> +0.276(0.163),$p$=.09 </td>
  </tr>
  <tr>
   <td style="text-align:left;"> fev--num_comp </td>
   <td style="text-align:left;"> male </td>
   <td style="text-align:left;"> +2.406(0.108),$p$=.00 </td>
   <td style="text-align:left;"> -0.081(0.023),$p$=.00 </td>
   <td style="text-align:left;"> +20.312(1.173),$p$=.00 </td>
   <td style="text-align:left;"> +0.287(0.309),$p$=.35 </td>
  </tr>
  <tr>
   <td style="text-align:left;"> fev--symbol </td>
   <td style="text-align:left;"> female </td>
   <td style="text-align:left;"> +1.675(0.035),$p$=.00 </td>
   <td style="text-align:left;"> -0.038(0.009),$p$=.00 </td>
   <td style="text-align:left;"> +35.457(1.049),$p$=.00 </td>
   <td style="text-align:left;"> +0.499(0.217),$p$=.02 </td>
  </tr>
  <tr>
   <td style="text-align:left;"> fev--symbol </td>
   <td style="text-align:left;"> male </td>
   <td style="text-align:left;"> +2.406(0.108),$p$=.00 </td>
   <td style="text-align:left;"> -0.081(0.023),$p$=.00 </td>
   <td style="text-align:left;"> +35.950(1.707),$p$=.00 </td>
   <td style="text-align:left;"> -0.075(0.420),$p$=.86 </td>
  </tr>
  <tr>
   <td style="text-align:left;"> fev--word_de </td>
   <td style="text-align:left;"> female </td>
   <td style="text-align:left;"> +1.677(0.035),$p$=.00 </td>
   <td style="text-align:left;"> -0.038(0.009),$p$=.00 </td>
   <td style="text-align:left;"> +5.567(0.202),$p$=.00 </td>
   <td style="text-align:left;"> +0.124(0.058),$p$=.03 </td>
  </tr>
  <tr>
   <td style="text-align:left;"> fev--word_de </td>
   <td style="text-align:left;"> male </td>
   <td style="text-align:left;"> +2.406(0.108),$p$=.00 </td>
   <td style="text-align:left;"> -0.080(0.024),$p$=.00 </td>
   <td style="text-align:left;"> +4.987(0.331),$p$=.00 </td>
   <td style="text-align:left;"> +0.069(0.108),$p$=.52 </td>
  </tr>
  <tr>
   <td style="text-align:left;"> fev--word_im </td>
   <td style="text-align:left;"> female </td>
   <td style="text-align:left;"> +1.677(0.035),$p$=.00 </td>
   <td style="text-align:left;"> -0.038(0.009),$p$=.00 </td>
   <td style="text-align:left;"> +16.826(0.387),$p$=.00 </td>
   <td style="text-align:left;"> +0.404(0.122),$p$=.00 </td>
  </tr>
  <tr>
   <td style="text-align:left;"> fev--word_im </td>
   <td style="text-align:left;"> male </td>
   <td style="text-align:left;"> +2.401(0.109),$p$=.00 </td>
   <td style="text-align:left;"> -0.078(0.024),$p$=.00 </td>
   <td style="text-align:left;"> +15.361(0.624),$p$=.00 </td>
   <td style="text-align:left;"> +0.266(0.198),$p$=.18 </td>
  </tr>
  <tr>
   <td style="text-align:left;"> fev--word_rec </td>
   <td style="text-align:left;"> female </td>
   <td style="text-align:left;"> +1.675(0.035),$p$=.00 </td>
   <td style="text-align:left;"> -0.036(0.010),$p$=.00 </td>
   <td style="text-align:left;"> +9.753(0.089),$p$=.00 </td>
   <td style="text-align:left;"> +0.007(0.026),$p$=.81 </td>
  </tr>
  <tr>
   <td style="text-align:left;"> fev--word_rec </td>
   <td style="text-align:left;"> male </td>
   <td style="text-align:left;"> +2.404(0.108),$p$=.00 </td>
   <td style="text-align:left;"> -0.080(0.023),$p$=.00 </td>
   <td style="text-align:left;"> +9.609(0.182),$p$=.00 </td>
   <td style="text-align:left;"> +0.086(0.058),$p$=.14 </td>
  </tr>
  <tr>
   <td style="text-align:left;"> grip--bnt </td>
   <td style="text-align:left;"> female </td>
   <td style="text-align:left;"> +43.717(1.257),$p$=.00 </td>
   <td style="text-align:left;"> -0.416(0.317),$p$=.19 </td>
   <td style="text-align:left;"> +13.471(0.165),$p$=.00 </td>
   <td style="text-align:left;"> +0.094(0.039),$p$=.01 </td>
  </tr>
  <tr>
   <td style="text-align:left;"> grip--bnt </td>
   <td style="text-align:left;"> male </td>
   <td style="text-align:left;"> +79.683(3.032),$p$=.00 </td>
   <td style="text-align:left;"> -2.484(0.897),$p$=.01 </td>
   <td style="text-align:left;"> +13.765(0.290),$p$=.00 </td>
   <td style="text-align:left;"> +0.053(0.048),$p$=.27 </td>
  </tr>
  <tr>
   <td style="text-align:left;"> grip--bstory_de </td>
   <td style="text-align:left;"> female </td>
   <td style="text-align:left;"> +43.699(1.257),$p$=.00 </td>
   <td style="text-align:left;"> -0.412(0.316),$p$=.19 </td>
   <td style="text-align:left;"> +8.976(0.158),$p$=.00 </td>
   <td style="text-align:left;"> +0.069(0.065),$p$=.29 </td>
  </tr>
  <tr>
   <td style="text-align:left;"> grip--bstory_de </td>
   <td style="text-align:left;"> male </td>
   <td style="text-align:left;"> +79.539(3.054),$p$=.00 </td>
   <td style="text-align:left;"> -2.471(0.897),$p$=.01 </td>
   <td style="text-align:left;"> +8.946(0.337),$p$=.00 </td>
   <td style="text-align:left;"> -0.079(0.114),$p$=.49 </td>
  </tr>
  <tr>
   <td style="text-align:left;"> grip--bstory_im </td>
   <td style="text-align:left;"> female </td>
   <td style="text-align:left;"> +1.677(0.035),$p$=.00 </td>
   <td style="text-align:left;"> -0.037(0.009),$p$=.00 </td>
   <td style="text-align:left;"> +9.373(0.156),$p$=.00 </td>
   <td style="text-align:left;"> -0.033(0.062),$p$=.59 </td>
  </tr>
  <tr>
   <td style="text-align:left;"> grip--bstory_im </td>
   <td style="text-align:left;"> male </td>
   <td style="text-align:left;"> +79.494(3.055),$p$=.00 </td>
   <td style="text-align:left;"> -2.474(0.898),$p$=.01 </td>
   <td style="text-align:left;"> +9.445(0.286),$p$=.00 </td>
   <td style="text-align:left;"> -0.065(0.105),$p$=.54 </td>
  </tr>
  <tr>
   <td style="text-align:left;"> grip--categories </td>
   <td style="text-align:left;"> female </td>
   <td style="text-align:left;"> +43.697(1.260),$p$=.00 </td>
   <td style="text-align:left;"> -0.404(0.318),$p$=.20 </td>
   <td style="text-align:left;"> +32.919(0.765),$p$=.00 </td>
   <td style="text-align:left;"> -0.038(0.215),$p$=.86 </td>
  </tr>
  <tr>
   <td style="text-align:left;"> grip--categories </td>
   <td style="text-align:left;"> male </td>
   <td style="text-align:left;"> +79.537(3.043),$p$=.00 </td>
   <td style="text-align:left;"> -2.445(0.878),$p$=.01 </td>
   <td style="text-align:left;"> +31.352(1.339),$p$=.00 </td>
   <td style="text-align:left;"> +0.374(0.355),$p$=.29 </td>
  </tr>
  <tr>
   <td style="text-align:left;"> grip--digit_b </td>
   <td style="text-align:left;"> female </td>
   <td style="text-align:left;"> +1.675(0.035),$p$=.00 </td>
   <td style="text-align:left;"> -0.037(0.009),$p$=.00 </td>
   <td style="text-align:left;"> +5.187(0.182),$p$=.00 </td>
   <td style="text-align:left;"> -0.007(0.054),$p$=.90 </td>
  </tr>
  <tr>
   <td style="text-align:left;"> grip--digit_b </td>
   <td style="text-align:left;"> male </td>
   <td style="text-align:left;"> +79.595(3.032),$p$=.00 </td>
   <td style="text-align:left;"> -2.406(0.873),$p$=.01 </td>
   <td style="text-align:left;"> +5.034(0.308),$p$=.00 </td>
   <td style="text-align:left;"> +0.041(0.101),$p$=.69 </td>
  </tr>
  <tr>
   <td style="text-align:left;"> grip--digit_f </td>
   <td style="text-align:left;"> female </td>
   <td style="text-align:left;"> +43.729(1.257),$p$=.00 </td>
   <td style="text-align:left;"> -0.410(0.314),$p$=.19 </td>
   <td style="text-align:left;"> +7.278(0.199),$p$=.00 </td>
   <td style="text-align:left;"> +0.043(0.057),$p$=.45 </td>
  </tr>
  <tr>
   <td style="text-align:left;"> grip--digit_f </td>
   <td style="text-align:left;"> male </td>
   <td style="text-align:left;"> +79.600(3.038),$p$=.00 </td>
   <td style="text-align:left;"> -2.450(0.888),$p$=.01 </td>
   <td style="text-align:left;"> +7.229(0.292),$p$=.00 </td>
   <td style="text-align:left;"> +0.010(0.095),$p$=.91 </td>
  </tr>
  <tr>
   <td style="text-align:left;"> grip--digit_o </td>
   <td style="text-align:left;"> female </td>
   <td style="text-align:left;"> +43.714(1.260),$p$=.00 </td>
   <td style="text-align:left;"> -0.412(0.321),$p$=.20 </td>
   <td style="text-align:left;"> +6.501(0.159),$p$=.00 </td>
   <td style="text-align:left;"> +0.070(0.048),$p$=.15 </td>
  </tr>
  <tr>
   <td style="text-align:left;"> grip--digit_o </td>
   <td style="text-align:left;"> male </td>
   <td style="text-align:left;"> +79.564(3.048),$p$=.00 </td>
   <td style="text-align:left;"> -2.472(0.886),$p$=.01 </td>
   <td style="text-align:left;"> +6.857(0.246),$p$=.00 </td>
   <td style="text-align:left;"> -0.103(0.082),$p$=.21 </td>
  </tr>
  <tr>
   <td style="text-align:left;"> grip--ideas </td>
   <td style="text-align:left;"> female </td>
   <td style="text-align:left;"> +43.687(1.258),$p$=.00 </td>
   <td style="text-align:left;"> -0.392(0.315),$p$=.21 </td>
   <td style="text-align:left;"> +7.563(0.056),$p$=.00 </td>
   <td style="text-align:left;"> +0.018(0.019),$p$=.33 </td>
  </tr>
  <tr>
   <td style="text-align:left;"> grip--ideas </td>
   <td style="text-align:left;"> male </td>
   <td style="text-align:left;"> +79.387(3.043),$p$=.00 </td>
   <td style="text-align:left;"> -2.386(0.887),$p$=.01 </td>
   <td style="text-align:left;"> +7.776(0.089),$p$=.00 </td>
   <td style="text-align:left;"> -0.040(0.048),$p$=.41 </td>
  </tr>
  <tr>
   <td style="text-align:left;"> grip--line </td>
   <td style="text-align:left;"> female </td>
   <td style="text-align:left;"> +43.677(1.258),$p$=.00 </td>
   <td style="text-align:left;"> -0.395(0.315),$p$=.21 </td>
   <td style="text-align:left;"> +8.156(0.297),$p$=.00 </td>
   <td style="text-align:left;"> -0.038(0.084),$p$=.65 </td>
  </tr>
  <tr>
   <td style="text-align:left;"> grip--line </td>
   <td style="text-align:left;"> male </td>
   <td style="text-align:left;"> +79.672(3.040),$p$=.00 </td>
   <td style="text-align:left;"> -2.464(0.901),$p$=.01 </td>
   <td style="text-align:left;"> +10.348(0.511),$p$=.00 </td>
   <td style="text-align:left;"> -0.123(0.151),$p$=.42 </td>
  </tr>
  <tr>
   <td style="text-align:left;"> grip--logic_de </td>
   <td style="text-align:left;"> female </td>
   <td style="text-align:left;"> +43.674(1.259),$p$=.00 </td>
   <td style="text-align:left;"> -0.406(0.319),$p$=.20 </td>
   <td style="text-align:left;"> +8.492(0.372),$p$=.00 </td>
   <td style="text-align:left;"> +0.281(0.123),$p$=.02 </td>
  </tr>
  <tr>
   <td style="text-align:left;"> grip--logic_de </td>
   <td style="text-align:left;"> male </td>
   <td style="text-align:left;"> +79.502(3.047),$p$=.00 </td>
   <td style="text-align:left;"> -2.476(0.893),$p$=.01 </td>
   <td style="text-align:left;"> +7.957(0.743),$p$=.00 </td>
   <td style="text-align:left;"> +0.201(0.235),$p$=.39 </td>
  </tr>
  <tr>
   <td style="text-align:left;"> grip--logic_im </td>
   <td style="text-align:left;"> female </td>
   <td style="text-align:left;"> +43.695(1.260),$p$=.00 </td>
   <td style="text-align:left;"> -0.404(0.318),$p$=.20 </td>
   <td style="text-align:left;"> +10.194(0.372),$p$=.00 </td>
   <td style="text-align:left;"> +0.267(0.116),$p$=.02 </td>
  </tr>
  <tr>
   <td style="text-align:left;"> grip--logic_im </td>
   <td style="text-align:left;"> male </td>
   <td style="text-align:left;"> +79.495(3.046),$p$=.00 </td>
   <td style="text-align:left;"> -2.455(0.890),$p$=.01 </td>
   <td style="text-align:left;"> +9.533(0.722),$p$=.00 </td>
   <td style="text-align:left;"> +0.125(0.211),$p$=.55 </td>
  </tr>
  <tr>
   <td style="text-align:left;"> grip--matrices </td>
   <td style="text-align:left;"> female </td>
   <td style="text-align:left;"> +43.693(1.258),$p$=.00 </td>
   <td style="text-align:left;"> -0.392(0.319),$p$=.22 </td>
   <td style="text-align:left;"> +9.751(0.261),$p$=.00 </td>
   <td style="text-align:left;"> +0.035(0.087),$p$=.69 </td>
  </tr>
  <tr>
   <td style="text-align:left;"> grip--matrices </td>
   <td style="text-align:left;"> male </td>
   <td style="text-align:left;"> +79.565(3.038),$p$=.00 </td>
   <td style="text-align:left;"> -2.471(0.907),$p$=.01 </td>
   <td style="text-align:left;"> +10.966(0.450),$p$=.00 </td>
   <td style="text-align:left;"> +0.045(0.144),$p$=.76 </td>
  </tr>
  <tr>
   <td style="text-align:left;"> grip--mmms </td>
   <td style="text-align:left;"> female </td>
   <td style="text-align:left;"> +43.697(1.256),$p$=.00 </td>
   <td style="text-align:left;"> -0.511(0.321),$p$=.11 </td>
   <td style="text-align:left;"> +27.659(0.158),$p$=.00 </td>
   <td style="text-align:left;"> +0.057(0.071),$p$=.42 </td>
  </tr>
  <tr>
   <td style="text-align:left;"> grip--mmms </td>
   <td style="text-align:left;"> male </td>
   <td style="text-align:left;"> +79.335(3.042),$p$=.00 </td>
   <td style="text-align:left;"> -2.449(0.909),$p$=.01 </td>
   <td style="text-align:left;"> +27.306(0.300),$p$=.00 </td>
   <td style="text-align:left;"> +0.009(0.128),$p$=.94 </td>
  </tr>
  <tr>
   <td style="text-align:left;"> grip--nart </td>
   <td style="text-align:left;"> female </td>
   <td style="text-align:left;"> +43.726(1.257),$p$=.00 </td>
   <td style="text-align:left;"> -0.372(0.316),$p$=.24 </td>
   <td style="text-align:left;"> +5.043(0.222),$p$=.00 </td>
   <td style="text-align:left;"> +0.041(0.045),$p$=.36 </td>
  </tr>
  <tr>
   <td style="text-align:left;"> grip--nart </td>
   <td style="text-align:left;"> male </td>
   <td style="text-align:left;"> +79.521(3.053),$p$=.00 </td>
   <td style="text-align:left;"> -2.475(0.901),$p$=.01 </td>
   <td style="text-align:left;"> +4.891(0.396),$p$=.00 </td>
   <td style="text-align:left;"> +0.070(0.076),$p$=.36 </td>
  </tr>
  <tr>
   <td style="text-align:left;"> grip--num_comp </td>
   <td style="text-align:left;"> female </td>
   <td style="text-align:left;"> +43.722(1.257),$p$=.00 </td>
   <td style="text-align:left;"> -0.405(0.317),$p$=.20 </td>
   <td style="text-align:left;"> +23.141(0.766),$p$=.00 </td>
   <td style="text-align:left;"> +0.278(0.164),$p$=.09 </td>
  </tr>
  <tr>
   <td style="text-align:left;"> grip--num_comp </td>
   <td style="text-align:left;"> male </td>
   <td style="text-align:left;"> +79.488(3.060),$p$=.00 </td>
   <td style="text-align:left;"> -2.519(0.899),$p$=.01 </td>
   <td style="text-align:left;"> +20.352(1.177),$p$=.00 </td>
   <td style="text-align:left;"> +0.262(0.306),$p$=.39 </td>
  </tr>
  <tr>
   <td style="text-align:left;"> grip--symbol </td>
   <td style="text-align:left;"> female </td>
   <td style="text-align:left;"> +43.680(1.259),$p$=.00 </td>
   <td style="text-align:left;"> -0.413(0.324),$p$=.20 </td>
   <td style="text-align:left;"> +35.432(1.050),$p$=.00 </td>
   <td style="text-align:left;"> +0.520(0.218),$p$=.02 </td>
  </tr>
  <tr>
   <td style="text-align:left;"> grip--symbol </td>
   <td style="text-align:left;"> male </td>
   <td style="text-align:left;"> +79.531(3.056),$p$=.00 </td>
   <td style="text-align:left;"> -2.577(0.894),$p$=.00 </td>
   <td style="text-align:left;"> +36.038(1.705),$p$=.00 </td>
   <td style="text-align:left;"> -0.105(0.413),$p$=.80 </td>
  </tr>
  <tr>
   <td style="text-align:left;"> grip--word_de </td>
   <td style="text-align:left;"> female </td>
   <td style="text-align:left;"> +43.686(1.259),$p$=.00 </td>
   <td style="text-align:left;"> -0.411(0.322),$p$=.20 </td>
   <td style="text-align:left;"> +5.567(0.203),$p$=.00 </td>
   <td style="text-align:left;"> +0.128(0.058),$p$=.03 </td>
  </tr>
  <tr>
   <td style="text-align:left;"> grip--word_de </td>
   <td style="text-align:left;"> male </td>
   <td style="text-align:left;"> +79.553(3.056),$p$=.00 </td>
   <td style="text-align:left;"> -2.501(0.895),$p$=.01 </td>
   <td style="text-align:left;"> +4.989(0.332),$p$=.00 </td>
   <td style="text-align:left;"> +0.066(0.108),$p$=.54 </td>
  </tr>
  <tr>
   <td style="text-align:left;"> grip--word_im </td>
   <td style="text-align:left;"> female </td>
   <td style="text-align:left;"> +43.699(1.258),$p$=.00 </td>
   <td style="text-align:left;"> -0.394(0.317),$p$=.21 </td>
   <td style="text-align:left;"> +16.828(0.387),$p$=.00 </td>
   <td style="text-align:left;"> +0.413(0.122),$p$=.00 </td>
  </tr>
  <tr>
   <td style="text-align:left;"> grip--word_im </td>
   <td style="text-align:left;"> male </td>
   <td style="text-align:left;"> +79.459(3.050),$p$=.00 </td>
   <td style="text-align:left;"> -2.430(0.895),$p$=.01 </td>
   <td style="text-align:left;"> +15.357(0.627),$p$=.00 </td>
   <td style="text-align:left;"> +0.257(0.200),$p$=.20 </td>
  </tr>
  <tr>
   <td style="text-align:left;"> grip--word_rec </td>
   <td style="text-align:left;"> male </td>
   <td style="text-align:left;"> +79.660(3.070),$p$=.00 </td>
   <td style="text-align:left;"> -2.564(0.899),$p$=.00 </td>
   <td style="text-align:left;"> +9.616(0.183),$p$=.00 </td>
   <td style="text-align:left;"> +0.081(0.058),$p$=.16 </td>
  </tr>
  <tr>
   <td style="text-align:left;"> nophys--bnt </td>
   <td style="text-align:left;"> female </td>
   <td style="text-align:left;"> NaN(NaN),$p$=NA </td>
   <td style="text-align:left;"> NaN(NaN),$p$=NA </td>
   <td style="text-align:left;"> +13.470(0.165),$p$=.00 </td>
   <td style="text-align:left;"> +0.094(0.039),$p$=.02 </td>
  </tr>
  <tr>
   <td style="text-align:left;"> nophys--bnt </td>
   <td style="text-align:left;"> male </td>
   <td style="text-align:left;"> NaN(NaN),$p$=NA </td>
   <td style="text-align:left;"> NaN(NaN),$p$=NA </td>
   <td style="text-align:left;"> +13.759(0.293),$p$=.00 </td>
   <td style="text-align:left;"> +0.053(0.048),$p$=.27 </td>
  </tr>
  <tr>
   <td style="text-align:left;"> nophys--bstory_de </td>
   <td style="text-align:left;"> female </td>
   <td style="text-align:left;"> NaN(NaN),$p$=NA </td>
   <td style="text-align:left;"> NaN(NaN),$p$=NA </td>
   <td style="text-align:left;"> +8.976(0.158),$p$=.00 </td>
   <td style="text-align:left;"> +0.066(0.065),$p$=.31 </td>
  </tr>
  <tr>
   <td style="text-align:left;"> nophys--bstory_de </td>
   <td style="text-align:left;"> male </td>
   <td style="text-align:left;"> NaN(NaN),$p$=NA </td>
   <td style="text-align:left;"> NaN(NaN),$p$=NA </td>
   <td style="text-align:left;"> +8.942(0.336),$p$=.00 </td>
   <td style="text-align:left;"> -0.079(0.115),$p$=.49 </td>
  </tr>
  <tr>
   <td style="text-align:left;"> nophys--bstory_im </td>
   <td style="text-align:left;"> female </td>
   <td style="text-align:left;"> NaN(NaN),$p$=NA </td>
   <td style="text-align:left;"> NaN(NaN),$p$=NA </td>
   <td style="text-align:left;"> +9.373(0.156),$p$=.00 </td>
   <td style="text-align:left;"> -0.033(0.062),$p$=.59 </td>
  </tr>
  <tr>
   <td style="text-align:left;"> nophys--bstory_im </td>
   <td style="text-align:left;"> male </td>
   <td style="text-align:left;"> NaN(NaN),$p$=NA </td>
   <td style="text-align:left;"> NaN(NaN),$p$=NA </td>
   <td style="text-align:left;"> +9.441(0.285),$p$=.00 </td>
   <td style="text-align:left;"> -0.065(0.104),$p$=.53 </td>
  </tr>
  <tr>
   <td style="text-align:left;"> nophys--categories </td>
   <td style="text-align:left;"> female </td>
   <td style="text-align:left;"> NaN(NaN),$p$=NA </td>
   <td style="text-align:left;"> NaN(NaN),$p$=NA </td>
   <td style="text-align:left;"> +32.915(0.765),$p$=.00 </td>
   <td style="text-align:left;"> -0.050(0.214),$p$=.82 </td>
  </tr>
  <tr>
   <td style="text-align:left;"> nophys--categories </td>
   <td style="text-align:left;"> male </td>
   <td style="text-align:left;"> NaN(NaN),$p$=NA </td>
   <td style="text-align:left;"> NaN(NaN),$p$=NA </td>
   <td style="text-align:left;"> +31.309(1.338),$p$=.00 </td>
   <td style="text-align:left;"> +0.393(0.353),$p$=.27 </td>
  </tr>
  <tr>
   <td style="text-align:left;"> nophys--digit_b </td>
   <td style="text-align:left;"> female </td>
   <td style="text-align:left;"> NaN(NaN),$p$=NA </td>
   <td style="text-align:left;"> NaN(NaN),$p$=NA </td>
   <td style="text-align:left;"> +5.186(0.183),$p$=.00 </td>
   <td style="text-align:left;"> -0.007(0.054),$p$=.90 </td>
  </tr>
  <tr>
   <td style="text-align:left;"> nophys--digit_b </td>
   <td style="text-align:left;"> male </td>
   <td style="text-align:left;"> NaN(NaN),$p$=NA </td>
   <td style="text-align:left;"> NaN(NaN),$p$=NA </td>
   <td style="text-align:left;"> +5.035(0.308),$p$=.00 </td>
   <td style="text-align:left;"> +0.041(0.101),$p$=.69 </td>
  </tr>
  <tr>
   <td style="text-align:left;"> nophys--digit_f </td>
   <td style="text-align:left;"> female </td>
   <td style="text-align:left;"> NaN(NaN),$p$=NA </td>
   <td style="text-align:left;"> NaN(NaN),$p$=NA </td>
   <td style="text-align:left;"> +7.277(0.199),$p$=.00 </td>
   <td style="text-align:left;"> +0.043(0.057),$p$=.45 </td>
  </tr>
  <tr>
   <td style="text-align:left;"> nophys--digit_f </td>
   <td style="text-align:left;"> male </td>
   <td style="text-align:left;"> NaN(NaN),$p$=NA </td>
   <td style="text-align:left;"> NaN(NaN),$p$=NA </td>
   <td style="text-align:left;"> +7.230(0.292),$p$=.00 </td>
   <td style="text-align:left;"> +0.012(0.095),$p$=.90 </td>
  </tr>
  <tr>
   <td style="text-align:left;"> nophys--digit_o </td>
   <td style="text-align:left;"> female </td>
   <td style="text-align:left;"> NaN(NaN),$p$=NA </td>
   <td style="text-align:left;"> NaN(NaN),$p$=NA </td>
   <td style="text-align:left;"> +6.501(0.160),$p$=.00 </td>
   <td style="text-align:left;"> +0.068(0.048),$p$=.16 </td>
  </tr>
  <tr>
   <td style="text-align:left;"> nophys--digit_o </td>
   <td style="text-align:left;"> male </td>
   <td style="text-align:left;"> NaN(NaN),$p$=NA </td>
   <td style="text-align:left;"> NaN(NaN),$p$=NA </td>
   <td style="text-align:left;"> +6.853(0.246),$p$=.00 </td>
   <td style="text-align:left;"> -0.103(0.082),$p$=.21 </td>
  </tr>
  <tr>
   <td style="text-align:left;"> nophys--ideas </td>
   <td style="text-align:left;"> female </td>
   <td style="text-align:left;"> NaN(NaN),$p$=NA </td>
   <td style="text-align:left;"> NaN(NaN),$p$=NA </td>
   <td style="text-align:left;"> +7.562(0.056),$p$=.00 </td>
   <td style="text-align:left;"> +0.018(0.019),$p$=.33 </td>
  </tr>
  <tr>
   <td style="text-align:left;"> nophys--ideas </td>
   <td style="text-align:left;"> male </td>
   <td style="text-align:left;"> NaN(NaN),$p$=NA </td>
   <td style="text-align:left;"> NaN(NaN),$p$=NA </td>
   <td style="text-align:left;"> +7.774(0.089),$p$=.00 </td>
   <td style="text-align:left;"> -0.039(0.049),$p$=.42 </td>
  </tr>
  <tr>
   <td style="text-align:left;"> nophys--line </td>
   <td style="text-align:left;"> female </td>
   <td style="text-align:left;"> NaN(NaN),$p$=NA </td>
   <td style="text-align:left;"> NaN(NaN),$p$=NA </td>
   <td style="text-align:left;"> +8.156(0.298),$p$=.00 </td>
   <td style="text-align:left;"> -0.037(0.084),$p$=.66 </td>
  </tr>
  <tr>
   <td style="text-align:left;"> nophys--line </td>
   <td style="text-align:left;"> male </td>
   <td style="text-align:left;"> NaN(NaN),$p$=NA </td>
   <td style="text-align:left;"> NaN(NaN),$p$=NA </td>
   <td style="text-align:left;"> +10.339(0.512),$p$=.00 </td>
   <td style="text-align:left;"> -0.124(0.151),$p$=.41 </td>
  </tr>
  <tr>
   <td style="text-align:left;"> nophys--logic_de </td>
   <td style="text-align:left;"> female </td>
   <td style="text-align:left;"> NaN(NaN),$p$=NA </td>
   <td style="text-align:left;"> NaN(NaN),$p$=NA </td>
   <td style="text-align:left;"> +8.491(0.372),$p$=.00 </td>
   <td style="text-align:left;"> +0.274(0.123),$p$=.03 </td>
  </tr>
  <tr>
   <td style="text-align:left;"> nophys--logic_de </td>
   <td style="text-align:left;"> male </td>
   <td style="text-align:left;"> NaN(NaN),$p$=NA </td>
   <td style="text-align:left;"> NaN(NaN),$p$=NA </td>
   <td style="text-align:left;"> +7.941(0.739),$p$=.00 </td>
   <td style="text-align:left;"> +0.214(0.236),$p$=.36 </td>
  </tr>
  <tr>
   <td style="text-align:left;"> nophys--logic_im </td>
   <td style="text-align:left;"> female </td>
   <td style="text-align:left;"> NaN(NaN),$p$=NA </td>
   <td style="text-align:left;"> NaN(NaN),$p$=NA </td>
   <td style="text-align:left;"> +10.194(0.372),$p$=.00 </td>
   <td style="text-align:left;"> +0.260(0.117),$p$=.03 </td>
  </tr>
  <tr>
   <td style="text-align:left;"> nophys--logic_im </td>
   <td style="text-align:left;"> male </td>
   <td style="text-align:left;"> NaN(NaN),$p$=NA </td>
   <td style="text-align:left;"> NaN(NaN),$p$=NA </td>
   <td style="text-align:left;"> +9.521(0.718),$p$=.00 </td>
   <td style="text-align:left;"> +0.130(0.213),$p$=.54 </td>
  </tr>
  <tr>
   <td style="text-align:left;"> nophys--matrices </td>
   <td style="text-align:left;"> female </td>
   <td style="text-align:left;"> NaN(NaN),$p$=NA </td>
   <td style="text-align:left;"> NaN(NaN),$p$=NA </td>
   <td style="text-align:left;"> +9.750(0.261),$p$=.00 </td>
   <td style="text-align:left;"> +0.035(0.087),$p$=.68 </td>
  </tr>
  <tr>
   <td style="text-align:left;"> nophys--matrices </td>
   <td style="text-align:left;"> male </td>
   <td style="text-align:left;"> NaN(NaN),$p$=NA </td>
   <td style="text-align:left;"> NaN(NaN),$p$=NA </td>
   <td style="text-align:left;"> +10.933(0.454),$p$=.00 </td>
   <td style="text-align:left;"> +0.053(0.143),$p$=.71 </td>
  </tr>
  <tr>
   <td style="text-align:left;"> nophys--mmms </td>
   <td style="text-align:left;"> female </td>
   <td style="text-align:left;"> NaN(NaN),$p$=NA </td>
   <td style="text-align:left;"> NaN(NaN),$p$=NA </td>
   <td style="text-align:left;"> +27.660(0.159),$p$=.00 </td>
   <td style="text-align:left;"> +0.050(0.072),$p$=.49 </td>
  </tr>
  <tr>
   <td style="text-align:left;"> nophys--mmms </td>
   <td style="text-align:left;"> male </td>
   <td style="text-align:left;"> NaN(NaN),$p$=NA </td>
   <td style="text-align:left;"> NaN(NaN),$p$=NA </td>
   <td style="text-align:left;"> +27.299(0.299),$p$=.00 </td>
   <td style="text-align:left;"> +0.011(0.129),$p$=.93 </td>
  </tr>
  <tr>
   <td style="text-align:left;"> nophys--nart </td>
   <td style="text-align:left;"> female </td>
   <td style="text-align:left;"> NaN(NaN),$p$=NA </td>
   <td style="text-align:left;"> NaN(NaN),$p$=NA </td>
   <td style="text-align:left;"> +5.042(0.222),$p$=.00 </td>
   <td style="text-align:left;"> +0.040(0.045),$p$=.37 </td>
  </tr>
  <tr>
   <td style="text-align:left;"> nophys--nart </td>
   <td style="text-align:left;"> male </td>
   <td style="text-align:left;"> NaN(NaN),$p$=NA </td>
   <td style="text-align:left;"> NaN(NaN),$p$=NA </td>
   <td style="text-align:left;"> +4.885(0.396),$p$=.00 </td>
   <td style="text-align:left;"> +0.072(0.077),$p$=.35 </td>
  </tr>
  <tr>
   <td style="text-align:left;"> nophys--num_comp </td>
   <td style="text-align:left;"> female </td>
   <td style="text-align:left;"> NaN(NaN),$p$=NA </td>
   <td style="text-align:left;"> NaN(NaN),$p$=NA </td>
   <td style="text-align:left;"> +23.136(0.766),$p$=.00 </td>
   <td style="text-align:left;"> +0.279(0.163),$p$=.09 </td>
  </tr>
  <tr>
   <td style="text-align:left;"> nophys--num_comp </td>
   <td style="text-align:left;"> male </td>
   <td style="text-align:left;"> NaN(NaN),$p$=NA </td>
   <td style="text-align:left;"> NaN(NaN),$p$=NA </td>
   <td style="text-align:left;"> +20.309(1.174),$p$=.00 </td>
   <td style="text-align:left;"> +0.276(0.307),$p$=.37 </td>
  </tr>
  <tr>
   <td style="text-align:left;"> nophys--symbol </td>
   <td style="text-align:left;"> female </td>
   <td style="text-align:left;"> NaN(NaN),$p$=NA </td>
   <td style="text-align:left;"> NaN(NaN),$p$=NA </td>
   <td style="text-align:left;"> +35.462(1.051),$p$=.00 </td>
   <td style="text-align:left;"> +0.490(0.219),$p$=.03 </td>
  </tr>
  <tr>
   <td style="text-align:left;"> nophys--symbol </td>
   <td style="text-align:left;"> male </td>
   <td style="text-align:left;"> NaN(NaN),$p$=NA </td>
   <td style="text-align:left;"> NaN(NaN),$p$=NA </td>
   <td style="text-align:left;"> +35.972(1.694),$p$=.00 </td>
   <td style="text-align:left;"> -0.133(0.417),$p$=.75 </td>
  </tr>
  <tr>
   <td style="text-align:left;"> nophys--word_de </td>
   <td style="text-align:left;"> female </td>
   <td style="text-align:left;"> NaN(NaN),$p$=NA </td>
   <td style="text-align:left;"> NaN(NaN),$p$=NA </td>
   <td style="text-align:left;"> +5.565(0.203),$p$=.00 </td>
   <td style="text-align:left;"> +0.126(0.058),$p$=.03 </td>
  </tr>
  <tr>
   <td style="text-align:left;"> nophys--word_de </td>
   <td style="text-align:left;"> male </td>
   <td style="text-align:left;"> NaN(NaN),$p$=NA </td>
   <td style="text-align:left;"> NaN(NaN),$p$=NA </td>
   <td style="text-align:left;"> +4.982(0.331),$p$=.00 </td>
   <td style="text-align:left;"> +0.071(0.108),$p$=.51 </td>
  </tr>
  <tr>
   <td style="text-align:left;"> nophys--word_im </td>
   <td style="text-align:left;"> female </td>
   <td style="text-align:left;"> NaN(NaN),$p$=NA </td>
   <td style="text-align:left;"> NaN(NaN),$p$=NA </td>
   <td style="text-align:left;"> +16.826(0.387),$p$=.00 </td>
   <td style="text-align:left;"> +0.409(0.122),$p$=.00 </td>
  </tr>
  <tr>
   <td style="text-align:left;"> nophys--word_im </td>
   <td style="text-align:left;"> male </td>
   <td style="text-align:left;"> NaN(NaN),$p$=NA </td>
   <td style="text-align:left;"> NaN(NaN),$p$=NA </td>
   <td style="text-align:left;"> +15.346(0.624),$p$=.00 </td>
   <td style="text-align:left;"> +0.266(0.198),$p$=.18 </td>
  </tr>
  <tr>
   <td style="text-align:left;"> nophys--word_rec </td>
   <td style="text-align:left;"> female </td>
   <td style="text-align:left;"> NaN(NaN),$p$=NA </td>
   <td style="text-align:left;"> NaN(NaN),$p$=NA </td>
   <td style="text-align:left;"> +9.751(0.089),$p$=.00 </td>
   <td style="text-align:left;"> +0.007(0.026),$p$=.78 </td>
  </tr>
  <tr>
   <td style="text-align:left;"> nophys--word_rec </td>
   <td style="text-align:left;"> male </td>
   <td style="text-align:left;"> NaN(NaN),$p$=NA </td>
   <td style="text-align:left;"> NaN(NaN),$p$=NA </td>
   <td style="text-align:left;"> +9.612(0.181),$p$=.00 </td>
   <td style="text-align:left;"> +0.082(0.057),$p$=.15 </td>
  </tr>
</tbody>
</table>


##  nuage 

<table>
 <thead>
  <tr>
   <th style="text-align:left;"> process </th>
   <th style="text-align:left;"> subgroup </th>
   <th style="text-align:left;"> a_gamma_00 </th>
   <th style="text-align:left;"> a_gamma_10 </th>
   <th style="text-align:left;"> b_gamma_00 </th>
   <th style="text-align:left;"> b_gamma_10 </th>
  </tr>
 </thead>
<tbody>
  <tr>
   <td style="text-align:left;"> grip--mmms </td>
   <td style="text-align:left;"> female </td>
   <td style="text-align:left;"> +60.566(1.122),$p$=.00 </td>
   <td style="text-align:left;"> -2.183(0.285),$p$=.00 </td>
   <td style="text-align:left;"> +61.150(0.197),$p$=.00 </td>
   <td style="text-align:left;"> -0.271(0.092),$p$=.01 </td>
  </tr>
  <tr>
   <td style="text-align:left;"> grip--mmms </td>
   <td style="text-align:left;"> male </td>
   <td style="text-align:left;"> +80.725(1.370),$p$=.00 </td>
   <td style="text-align:left;"> -2.359(0.291),$p$=.00 </td>
   <td style="text-align:left;"> +59.459(0.236),$p$=.00 </td>
   <td style="text-align:left;"> -0.374(0.108),$p$=.00 </td>
  </tr>
  <tr>
   <td style="text-align:left;"> nophys--mmms </td>
   <td style="text-align:left;"> female </td>
   <td style="text-align:left;"> NaN(NaN),$p$=NA </td>
   <td style="text-align:left;"> NaN(NaN),$p$=NA </td>
   <td style="text-align:left;"> +93.786(0.297),$p$=.00 </td>
   <td style="text-align:left;"> -0.421(0.133),$p$=.00 </td>
  </tr>
  <tr>
   <td style="text-align:left;"> nophys--mmms </td>
   <td style="text-align:left;"> male </td>
   <td style="text-align:left;"> NaN(NaN),$p$=NA </td>
   <td style="text-align:left;"> NaN(NaN),$p$=NA </td>
   <td style="text-align:left;"> +91.207(0.337),$p$=.00 </td>
   <td style="text-align:left;"> -0.539(0.152),$p$=.00 </td>
  </tr>
</tbody>
</table>


##  octo 

<table>
 <thead>
  <tr>
   <th style="text-align:left;"> process </th>
   <th style="text-align:left;"> subgroup </th>
   <th style="text-align:left;"> a_gamma_00 </th>
   <th style="text-align:left;"> a_gamma_10 </th>
   <th style="text-align:left;"> b_gamma_00 </th>
   <th style="text-align:left;"> b_gamma_10 </th>
  </tr>
 </thead>
<tbody>
  <tr>
   <td style="text-align:left;"> gait--block </td>
   <td style="text-align:left;"> female </td>
   <td style="text-align:left;"> +10.261(0.449),$p$=.00 </td>
   <td style="text-align:left;"> +0.525(0.365),$p$=.15 </td>
   <td style="text-align:left;"> +14.652(0.775),$p$=.00 </td>
   <td style="text-align:left;"> -0.220(0.120),$p$=.07 </td>
  </tr>
  <tr>
   <td style="text-align:left;"> gait--block </td>
   <td style="text-align:left;"> male </td>
   <td style="text-align:left;"> +9.229(0.649),$p$=.00 </td>
   <td style="text-align:left;"> +0.184(0.182),$p$=.31 </td>
   <td style="text-align:left;"> +14.903(1.812),$p$=.00 </td>
   <td style="text-align:left;"> -0.364(0.219),$p$=.10 </td>
  </tr>
  <tr>
   <td style="text-align:left;"> gait--digit_b </td>
   <td style="text-align:left;"> female </td>
   <td style="text-align:left;"> +10.274(0.446),$p$=.00 </td>
   <td style="text-align:left;"> +0.552(0.428),$p$=.20 </td>
   <td style="text-align:left;"> +3.858(0.132),$p$=.00 </td>
   <td style="text-align:left;"> -0.088(0.027),$p$=.00 </td>
  </tr>
  <tr>
   <td style="text-align:left;"> gait--digit_b </td>
   <td style="text-align:left;"> male </td>
   <td style="text-align:left;"> +9.093(0.647),$p$=.00 </td>
   <td style="text-align:left;"> +0.199(0.187),$p$=.29 </td>
   <td style="text-align:left;"> +3.946(0.311),$p$=.00 </td>
   <td style="text-align:left;"> -0.147(0.090),$p$=.10 </td>
  </tr>
  <tr>
   <td style="text-align:left;"> gait--digit_f </td>
   <td style="text-align:left;"> female </td>
   <td style="text-align:left;"> +10.294(0.455),$p$=.00 </td>
   <td style="text-align:left;"> +0.530(0.403),$p$=.19 </td>
   <td style="text-align:left;"> +5.677(0.124),$p$=.00 </td>
   <td style="text-align:left;"> -0.078(0.021),$p$=.00 </td>
  </tr>
  <tr>
   <td style="text-align:left;"> gait--digit_f </td>
   <td style="text-align:left;"> male </td>
   <td style="text-align:left;"> +9.009(0.628),$p$=.00 </td>
   <td style="text-align:left;"> +0.224(0.179),$p$=.21 </td>
   <td style="text-align:left;"> +5.883(0.319),$p$=.00 </td>
   <td style="text-align:left;"> -0.055(0.064),$p$=.39 </td>
  </tr>
  <tr>
   <td style="text-align:left;"> gait--prose_im </td>
   <td style="text-align:left;"> female </td>
   <td style="text-align:left;"> +10.306(0.461),$p$=.00 </td>
   <td style="text-align:left;"> +0.560(0.357),$p$=.12 </td>
   <td style="text-align:left;"> +11.147(0.398),$p$=.00 </td>
   <td style="text-align:left;"> -0.042(0.071),$p$=.55 </td>
  </tr>
  <tr>
   <td style="text-align:left;"> gait--symbol </td>
   <td style="text-align:left;"> female </td>
   <td style="text-align:left;"> +10.258(0.481),$p$=.00 </td>
   <td style="text-align:left;"> +0.513(0.280),$p$=.07 </td>
   <td style="text-align:left;"> +28.227(1.194),$p$=.00 </td>
   <td style="text-align:left;"> -0.132(0.197),$p$=.50 </td>
  </tr>
  <tr>
   <td style="text-align:left;"> gait--symbol </td>
   <td style="text-align:left;"> male </td>
   <td style="text-align:left;"> +9.216(0.647),$p$=.00 </td>
   <td style="text-align:left;"> +0.210(0.180),$p$=.24 </td>
   <td style="text-align:left;"> +28.757(2.730),$p$=.00 </td>
   <td style="text-align:left;"> -0.368(0.412),$p$=.37 </td>
  </tr>
  <tr>
   <td style="text-align:left;"> grip--block </td>
   <td style="text-align:left;"> female </td>
   <td style="text-align:left;"> +9.154(0.225),$p$=.00 </td>
   <td style="text-align:left;"> -0.339(0.034),$p$=.00 </td>
   <td style="text-align:left;"> +14.955(0.713),$p$=.00 </td>
   <td style="text-align:left;"> -0.317(0.098),$p$=.00 </td>
  </tr>
  <tr>
   <td style="text-align:left;"> grip--block </td>
   <td style="text-align:left;"> male </td>
   <td style="text-align:left;"> +12.095(0.418),$p$=.00 </td>
   <td style="text-align:left;"> -0.368(0.079),$p$=.00 </td>
   <td style="text-align:left;"> +16.617(1.454),$p$=.00 </td>
   <td style="text-align:left;"> -0.568(0.163),$p$=.00 </td>
  </tr>
  <tr>
   <td style="text-align:left;"> grip--digit_b </td>
   <td style="text-align:left;"> female </td>
   <td style="text-align:left;"> +9.161(0.225),$p$=.00 </td>
   <td style="text-align:left;"> -0.338(0.035),$p$=.00 </td>
   <td style="text-align:left;"> +3.858(0.131),$p$=.00 </td>
   <td style="text-align:left;"> -0.093(0.026),$p$=.00 </td>
  </tr>
  <tr>
   <td style="text-align:left;"> grip--digit_b </td>
   <td style="text-align:left;"> male </td>
   <td style="text-align:left;"> +12.101(0.417),$p$=.00 </td>
   <td style="text-align:left;"> -0.351(0.074),$p$=.00 </td>
   <td style="text-align:left;"> +3.719(0.281),$p$=.00 </td>
   <td style="text-align:left;"> -0.021(0.082),$p$=.80 </td>
  </tr>
  <tr>
   <td style="text-align:left;"> grip--digit_f </td>
   <td style="text-align:left;"> female </td>
   <td style="text-align:left;"> +9.159(0.226),$p$=.00 </td>
   <td style="text-align:left;"> -0.335(0.034),$p$=.00 </td>
   <td style="text-align:left;"> +5.678(0.112),$p$=.00 </td>
   <td style="text-align:left;"> -0.068(0.019),$p$=.00 </td>
  </tr>
  <tr>
   <td style="text-align:left;"> grip--digit_f </td>
   <td style="text-align:left;"> male </td>
   <td style="text-align:left;"> +12.096(0.416),$p$=.00 </td>
   <td style="text-align:left;"> -0.343(0.070),$p$=.00 </td>
   <td style="text-align:left;"> +5.909(0.244),$p$=.00 </td>
   <td style="text-align:left;"> -0.103(0.052),$p$=.05 </td>
  </tr>
  <tr>
   <td style="text-align:left;"> grip--fig_logic </td>
   <td style="text-align:left;"> female </td>
   <td style="text-align:left;"> +9.165(0.225),$p$=.00 </td>
   <td style="text-align:left;"> -0.338(0.035),$p$=.00 </td>
   <td style="text-align:left;"> +17.148(0.402),$p$=.00 </td>
   <td style="text-align:left;"> -0.147(0.075),$p$=.05 </td>
  </tr>
  <tr>
   <td style="text-align:left;"> grip--fig_logic </td>
   <td style="text-align:left;"> male </td>
   <td style="text-align:left;"> +12.057(0.419),$p$=.00 </td>
   <td style="text-align:left;"> -0.325(0.072),$p$=.00 </td>
   <td style="text-align:left;"> +17.612(0.730),$p$=.00 </td>
   <td style="text-align:left;"> +0.079(0.191),$p$=.68 </td>
  </tr>
  <tr>
   <td style="text-align:left;"> grip--mir </td>
   <td style="text-align:left;"> female </td>
   <td style="text-align:left;"> +9.155(0.225),$p$=.00 </td>
   <td style="text-align:left;"> -0.335(0.034),$p$=.00 </td>
   <td style="text-align:left;"> +7.812(0.205),$p$=.00 </td>
   <td style="text-align:left;"> -0.053(0.051),$p$=.30 </td>
  </tr>
  <tr>
   <td style="text-align:left;"> grip--mir </td>
   <td style="text-align:left;"> male </td>
   <td style="text-align:left;"> +12.073(0.416),$p$=.00 </td>
   <td style="text-align:left;"> -0.350(0.077),$p$=.00 </td>
   <td style="text-align:left;"> +7.211(0.395),$p$=.00 </td>
   <td style="text-align:left;"> +0.020(0.090),$p$=.83 </td>
  </tr>
  <tr>
   <td style="text-align:left;"> grip--prose_im </td>
   <td style="text-align:left;"> female </td>
   <td style="text-align:left;"> +9.178(0.235),$p$=.00 </td>
   <td style="text-align:left;"> -0.338(0.037),$p$=.00 </td>
   <td style="text-align:left;"> +11.239(0.382),$p$=.00 </td>
   <td style="text-align:left;"> -0.068(0.064),$p$=.33 </td>
  </tr>
  <tr>
   <td style="text-align:left;"> grip--prose_im </td>
   <td style="text-align:left;"> male </td>
   <td style="text-align:left;"> +11.435(0.508),$p$=.00 </td>
   <td style="text-align:left;"> -0.233(0.088),$p$=.11 </td>
   <td style="text-align:left;"> +10.646(0.887),$p$=.00 </td>
   <td style="text-align:left;"> +0.041(0.195),$p$=.84 </td>
  </tr>
  <tr>
   <td style="text-align:left;"> grip--symbol </td>
   <td style="text-align:left;"> female </td>
   <td style="text-align:left;"> +9.167(0.225),$p$=.00 </td>
   <td style="text-align:left;"> -0.339(0.034),$p$=.00 </td>
   <td style="text-align:left;"> +29.087(1.188),$p$=.00 </td>
   <td style="text-align:left;"> -0.478(0.167),$p$=.00 </td>
  </tr>
  <tr>
   <td style="text-align:left;"> grip--symbol </td>
   <td style="text-align:left;"> male </td>
   <td style="text-align:left;"> +12.105(0.418),$p$=.00 </td>
   <td style="text-align:left;"> -0.363(0.078),$p$=.00 </td>
   <td style="text-align:left;"> +30.524(2.326),$p$=.00 </td>
   <td style="text-align:left;"> -0.601(0.298),$p$=.04 </td>
  </tr>
  <tr>
   <td style="text-align:left;"> pef--block </td>
   <td style="text-align:left;"> female </td>
   <td style="text-align:left;"> +328.186(8.749),$p$=.00 </td>
   <td style="text-align:left;"> -7.214(1.405),$p$=.00 </td>
   <td style="text-align:left;"> +14.808(0.752),$p$=.00 </td>
   <td style="text-align:left;"> -0.192(0.105),$p$=.07 </td>
  </tr>
  <tr>
   <td style="text-align:left;"> pef--block </td>
   <td style="text-align:left;"> male </td>
   <td style="text-align:left;"> +464.578(23.315),$p$=.00 </td>
   <td style="text-align:left;"> -3.651(3.421),$p$=.29 </td>
   <td style="text-align:left;"> +16.779(1.484),$p$=.00 </td>
   <td style="text-align:left;"> -0.424(0.169),$p$=.01 </td>
  </tr>
  <tr>
   <td style="text-align:left;"> pef--digit_b </td>
   <td style="text-align:left;"> female </td>
   <td style="text-align:left;"> +327.585(8.824),$p$=.00 </td>
   <td style="text-align:left;"> -7.039(1.417),$p$=.00 </td>
   <td style="text-align:left;"> +3.859(0.131),$p$=.00 </td>
   <td style="text-align:left;"> -0.085(0.026),$p$=.00 </td>
  </tr>
  <tr>
   <td style="text-align:left;"> pef--digit_b </td>
   <td style="text-align:left;"> male </td>
   <td style="text-align:left;"> +466.550(23.552),$p$=.00 </td>
   <td style="text-align:left;"> -3.182(3.635),$p$=.38 </td>
   <td style="text-align:left;"> +3.973(0.260),$p$=.00 </td>
   <td style="text-align:left;"> -0.064(0.089),$p$=.47 </td>
  </tr>
  <tr>
   <td style="text-align:left;"> pef--digit_f </td>
   <td style="text-align:left;"> female </td>
   <td style="text-align:left;"> +327.370(8.778),$p$=.00 </td>
   <td style="text-align:left;"> -7.006(1.424),$p$=.00 </td>
   <td style="text-align:left;"> +5.675(0.124),$p$=.00 </td>
   <td style="text-align:left;"> -0.075(0.021),$p$=.00 </td>
  </tr>
  <tr>
   <td style="text-align:left;"> pef--digit_f </td>
   <td style="text-align:left;"> male </td>
   <td style="text-align:left;"> +469.379(23.602),$p$=.00 </td>
   <td style="text-align:left;"> -4.528(3.478),$p$=.19 </td>
   <td style="text-align:left;"> +6.023(0.254),$p$=.00 </td>
   <td style="text-align:left;"> -0.099(0.057),$p$=.08 </td>
  </tr>
  <tr>
   <td style="text-align:left;"> pef--prose_im </td>
   <td style="text-align:left;"> female </td>
   <td style="text-align:left;"> +327.356(8.750),$p$=.00 </td>
   <td style="text-align:left;"> -7.034(1.407),$p$=.00 </td>
   <td style="text-align:left;"> +11.153(0.397),$p$=.00 </td>
   <td style="text-align:left;"> -0.044(0.070),$p$=.53 </td>
  </tr>
  <tr>
   <td style="text-align:left;"> pef--prose_im </td>
   <td style="text-align:left;"> male </td>
   <td style="text-align:left;"> +465.567(23.567),$p$=.00 </td>
   <td style="text-align:left;"> -3.285(3.708),$p$=.38 </td>
   <td style="text-align:left;"> +11.027(0.759),$p$=.00 </td>
   <td style="text-align:left;"> +0.133(0.160),$p$=.41 </td>
  </tr>
  <tr>
   <td style="text-align:left;"> pef--symbol </td>
   <td style="text-align:left;"> female </td>
   <td style="text-align:left;"> +327.749(8.805),$p$=.00 </td>
   <td style="text-align:left;"> -7.128(1.399),$p$=.00 </td>
   <td style="text-align:left;"> +28.462(1.187),$p$=.00 </td>
   <td style="text-align:left;"> -0.095(0.193),$p$=.62 </td>
  </tr>
  <tr>
   <td style="text-align:left;"> pef--symbol </td>
   <td style="text-align:left;"> male </td>
   <td style="text-align:left;"> +463.728(23.407),$p$=.00 </td>
   <td style="text-align:left;"> -3.268(3.622),$p$=.37 </td>
   <td style="text-align:left;"> +31.499(2.407),$p$=.00 </td>
   <td style="text-align:left;"> -0.536(0.326),$p$=.10 </td>
  </tr>
</tbody>
</table>


##  satsa 

<table>
 <thead>
  <tr>
   <th style="text-align:left;"> process </th>
   <th style="text-align:left;"> subgroup </th>
   <th style="text-align:left;"> a_gamma_00 </th>
   <th style="text-align:left;"> a_gamma_10 </th>
   <th style="text-align:left;"> b_gamma_00 </th>
   <th style="text-align:left;"> b_gamma_10 </th>
  </tr>
 </thead>
<tbody>
  <tr>
   <td style="text-align:left;"> fev--analogies </td>
   <td style="text-align:left;"> female </td>
   <td style="text-align:left;"> +1.798(0.034),$p$=.00 </td>
   <td style="text-align:left;"> -0.025(0.003),$p$=.00 </td>
   <td style="text-align:left;"> +13.141(0.300),$p$=.00 </td>
   <td style="text-align:left;"> -0.118(0.026),$p$=.00 </td>
  </tr>
  <tr>
   <td style="text-align:left;"> fev--analogies </td>
   <td style="text-align:left;"> male </td>
   <td style="text-align:left;"> +2.554(0.074),$p$=.00 </td>
   <td style="text-align:left;"> -0.046(0.007),$p$=.00 </td>
   <td style="text-align:left;"> +13.195(0.479),$p$=.00 </td>
   <td style="text-align:left;"> -0.136(0.037),$p$=.00 </td>
  </tr>
  <tr>
   <td style="text-align:left;"> fev--block </td>
   <td style="text-align:left;"> female </td>
   <td style="text-align:left;"> +1.798(0.034),$p$=.00 </td>
   <td style="text-align:left;"> -0.026(0.003),$p$=.00 </td>
   <td style="text-align:left;"> +16.499(0.520),$p$=.00 </td>
   <td style="text-align:left;"> -0.363(0.035),$p$=.00 </td>
  </tr>
  <tr>
   <td style="text-align:left;"> fev--block </td>
   <td style="text-align:left;"> male </td>
   <td style="text-align:left;"> +2.545(0.074),$p$=.00 </td>
   <td style="text-align:left;"> -0.045(0.007),$p$=.00 </td>
   <td style="text-align:left;"> +16.038(0.754),$p$=.00 </td>
   <td style="text-align:left;"> -0.422(0.065),$p$=.00 </td>
  </tr>
  <tr>
   <td style="text-align:left;"> fev--digit_b </td>
   <td style="text-align:left;"> female </td>
   <td style="text-align:left;"> +1.800(0.035),$p$=.00 </td>
   <td style="text-align:left;"> -0.025(0.003),$p$=.00 </td>
   <td style="text-align:left;"> +3.670(0.096),$p$=.00 </td>
   <td style="text-align:left;"> -0.043(0.010),$p$=.00 </td>
  </tr>
  <tr>
   <td style="text-align:left;"> fev--digit_b </td>
   <td style="text-align:left;"> male </td>
   <td style="text-align:left;"> +2.553(0.074),$p$=.00 </td>
   <td style="text-align:left;"> -0.046(0.007),$p$=.00 </td>
   <td style="text-align:left;"> +3.851(0.166),$p$=.00 </td>
   <td style="text-align:left;"> -0.051(0.014),$p$=.00 </td>
  </tr>
  <tr>
   <td style="text-align:left;"> fev--digit_f </td>
   <td style="text-align:left;"> female </td>
   <td style="text-align:left;"> +1.800(0.034),$p$=.00 </td>
   <td style="text-align:left;"> -0.025(0.003),$p$=.00 </td>
   <td style="text-align:left;"> +5.551(0.096),$p$=.00 </td>
   <td style="text-align:left;"> -0.028(0.007),$p$=.00 </td>
  </tr>
  <tr>
   <td style="text-align:left;"> fev--digit_f </td>
   <td style="text-align:left;"> male </td>
   <td style="text-align:left;"> +2.552(0.075),$p$=.00 </td>
   <td style="text-align:left;"> -0.046(0.007),$p$=.00 </td>
   <td style="text-align:left;"> +5.353(0.134),$p$=.00 </td>
   <td style="text-align:left;"> -0.025(0.013),$p$=.06 </td>
  </tr>
  <tr>
   <td style="text-align:left;"> fev--fig_mem </td>
   <td style="text-align:left;"> female </td>
   <td style="text-align:left;"> +1.798(0.034),$p$=.00 </td>
   <td style="text-align:left;"> -0.025(0.003),$p$=.00 </td>
   <td style="text-align:left;"> +20.455(0.338),$p$=.00 </td>
   <td style="text-align:left;"> -0.178(0.028),$p$=.00 </td>
  </tr>
  <tr>
   <td style="text-align:left;"> fev--fig_mem </td>
   <td style="text-align:left;"> male </td>
   <td style="text-align:left;"> +2.558(0.075),$p$=.00 </td>
   <td style="text-align:left;"> -0.046(0.007),$p$=.00 </td>
   <td style="text-align:left;"> +18.490(0.517),$p$=.00 </td>
   <td style="text-align:left;"> -0.161(0.044),$p$=.00 </td>
  </tr>
  <tr>
   <td style="text-align:left;"> fev--information </td>
   <td style="text-align:left;"> female </td>
   <td style="text-align:left;"> +1.800(0.035),$p$=.00 </td>
   <td style="text-align:left;"> -0.026(0.003),$p$=.00 </td>
   <td style="text-align:left;"> +27.862(0.569),$p$=.00 </td>
   <td style="text-align:left;"> -0.282(0.046),$p$=.00 </td>
  </tr>
  <tr>
   <td style="text-align:left;"> fev--information </td>
   <td style="text-align:left;"> male </td>
   <td style="text-align:left;"> +2.550(0.074),$p$=.00 </td>
   <td style="text-align:left;"> -0.045(0.007),$p$=.00 </td>
   <td style="text-align:left;"> +30.664(0.811),$p$=.00 </td>
   <td style="text-align:left;"> -0.173(0.058),$p$=.00 </td>
  </tr>
  <tr>
   <td style="text-align:left;"> fev--mmms </td>
   <td style="text-align:left;"> female </td>
   <td style="text-align:left;"> +1.801(0.035),$p$=.00 </td>
   <td style="text-align:left;"> -0.028(0.003),$p$=.00 </td>
   <td style="text-align:left;"> +28.058(0.137),$p$=.00 </td>
   <td style="text-align:left;"> -0.289(0.026),$p$=.00 </td>
  </tr>
  <tr>
   <td style="text-align:left;"> fev--mmms </td>
   <td style="text-align:left;"> male </td>
   <td style="text-align:left;"> +2.550(0.079),$p$=.00 </td>
   <td style="text-align:left;"> -0.044(0.007),$p$=.00 </td>
   <td style="text-align:left;"> +27.129(0.240),$p$=.00 </td>
   <td style="text-align:left;"> -0.136(0.030),$p$=.00 </td>
  </tr>
  <tr>
   <td style="text-align:left;"> fev--rotate </td>
   <td style="text-align:left;"> female </td>
   <td style="text-align:left;"> +1.798(0.035),$p$=.00 </td>
   <td style="text-align:left;"> -0.025(0.003),$p$=.00 </td>
   <td style="text-align:left;"> +41.527(1.570),$p$=.00 </td>
   <td style="text-align:left;"> -0.965(0.113),$p$=.00 </td>
  </tr>
  <tr>
   <td style="text-align:left;"> fev--rotate </td>
   <td style="text-align:left;"> male </td>
   <td style="text-align:left;"> +2.556(0.073),$p$=.00 </td>
   <td style="text-align:left;"> -0.046(0.007),$p$=.00 </td>
   <td style="text-align:left;"> +49.544(2.652),$p$=.00 </td>
   <td style="text-align:left;"> -1.572(0.202),$p$=.00 </td>
  </tr>
  <tr>
   <td style="text-align:left;"> fev--symbol </td>
   <td style="text-align:left;"> female </td>
   <td style="text-align:left;"> +1.802(0.035),$p$=.00 </td>
   <td style="text-align:left;"> -0.026(0.003),$p$=.00 </td>
   <td style="text-align:left;"> +34.502(0.737),$p$=.00 </td>
   <td style="text-align:left;"> -0.827(0.063),$p$=.00 </td>
  </tr>
  <tr>
   <td style="text-align:left;"> fev--symbol </td>
   <td style="text-align:left;"> male </td>
   <td style="text-align:left;"> +2.548(0.074),$p$=.00 </td>
   <td style="text-align:left;"> -0.046(0.007),$p$=.00 </td>
   <td style="text-align:left;"> +32.736(1.129),$p$=.00 </td>
   <td style="text-align:left;"> -0.917(0.086),$p$=.00 </td>
  </tr>
  <tr>
   <td style="text-align:left;"> fev--synonyms </td>
   <td style="text-align:left;"> female </td>
   <td style="text-align:left;"> +1.797(0.035),$p$=.00 </td>
   <td style="text-align:left;"> -0.025(0.003),$p$=.00 </td>
   <td style="text-align:left;"> +17.713(0.340),$p$=.00 </td>
   <td style="text-align:left;"> -0.124(0.020),$p$=.00 </td>
  </tr>
  <tr>
   <td style="text-align:left;"> fev--synonyms </td>
   <td style="text-align:left;"> male </td>
   <td style="text-align:left;"> +2.552(0.073),$p$=.00 </td>
   <td style="text-align:left;"> -0.046(0.007),$p$=.00 </td>
   <td style="text-align:left;"> +15.904(0.559),$p$=.00 </td>
   <td style="text-align:left;"> -0.076(0.036),$p$=.04 </td>
  </tr>
  <tr>
   <td style="text-align:left;"> grip--analogies </td>
   <td style="text-align:left;"> female </td>
   <td style="text-align:left;"> +21.477(0.446),$p$=.00 </td>
   <td style="text-align:left;"> -0.567(0.042),$p$=.00 </td>
   <td style="text-align:left;"> +13.137(0.300),$p$=.00 </td>
   <td style="text-align:left;"> -0.118(0.025),$p$=.00 </td>
  </tr>
  <tr>
   <td style="text-align:left;"> grip--analogies </td>
   <td style="text-align:left;"> male </td>
   <td style="text-align:left;"> +37.728(1.495),$p$=.00 </td>
   <td style="text-align:left;"> -0.870(0.199),$p$=.00 </td>
   <td style="text-align:left;"> +13.127(0.472),$p$=.00 </td>
   <td style="text-align:left;"> -0.112(0.039),$p$=.00 </td>
  </tr>
  <tr>
   <td style="text-align:left;"> grip--block </td>
   <td style="text-align:left;"> female </td>
   <td style="text-align:left;"> +21.501(0.451),$p$=.00 </td>
   <td style="text-align:left;"> -0.574(0.043),$p$=.00 </td>
   <td style="text-align:left;"> +16.488(0.521),$p$=.00 </td>
   <td style="text-align:left;"> -0.367(0.034),$p$=.00 </td>
  </tr>
  <tr>
   <td style="text-align:left;"> grip--block </td>
   <td style="text-align:left;"> male </td>
   <td style="text-align:left;"> +36.863(0.852),$p$=.00 </td>
   <td style="text-align:left;"> -0.962(0.084),$p$=.00 </td>
   <td style="text-align:left;"> +15.975(0.768),$p$=.00 </td>
   <td style="text-align:left;"> -0.412(0.063),$p$=.00 </td>
  </tr>
  <tr>
   <td style="text-align:left;"> grip--digit_b </td>
   <td style="text-align:left;"> female </td>
   <td style="text-align:left;"> +21.506(0.459),$p$=.00 </td>
   <td style="text-align:left;"> -0.569(0.042),$p$=.00 </td>
   <td style="text-align:left;"> +3.668(0.097),$p$=.00 </td>
   <td style="text-align:left;"> -0.044(0.010),$p$=.00 </td>
  </tr>
  <tr>
   <td style="text-align:left;"> grip--digit_b </td>
   <td style="text-align:left;"> male </td>
   <td style="text-align:left;"> +36.857(0.829),$p$=.00 </td>
   <td style="text-align:left;"> -0.947(0.081),$p$=.00 </td>
   <td style="text-align:left;"> +3.832(0.176),$p$=.00 </td>
   <td style="text-align:left;"> -0.049(0.015),$p$=.00 </td>
  </tr>
  <tr>
   <td style="text-align:left;"> grip--digit_f </td>
   <td style="text-align:left;"> female </td>
   <td style="text-align:left;"> +21.502(0.447),$p$=.00 </td>
   <td style="text-align:left;"> -0.570(0.041),$p$=.00 </td>
   <td style="text-align:left;"> +5.549(0.096),$p$=.00 </td>
   <td style="text-align:left;"> -0.028(0.007),$p$=.00 </td>
  </tr>
  <tr>
   <td style="text-align:left;"> grip--digit_f </td>
   <td style="text-align:left;"> male </td>
   <td style="text-align:left;"> +36.827(0.823),$p$=.00 </td>
   <td style="text-align:left;"> -0.948(0.083),$p$=.00 </td>
   <td style="text-align:left;"> +5.341(0.139),$p$=.00 </td>
   <td style="text-align:left;"> -0.023(0.013),$p$=.08 </td>
  </tr>
  <tr>
   <td style="text-align:left;"> grip--information </td>
   <td style="text-align:left;"> female </td>
   <td style="text-align:left;"> +21.473(0.447),$p$=.00 </td>
   <td style="text-align:left;"> -0.570(0.043),$p$=.00 </td>
   <td style="text-align:left;"> +27.865(0.566),$p$=.00 </td>
   <td style="text-align:left;"> -0.286(0.046),$p$=.00 </td>
  </tr>
  <tr>
   <td style="text-align:left;"> grip--information </td>
   <td style="text-align:left;"> male </td>
   <td style="text-align:left;"> +37.690(1.540),$p$=.00 </td>
   <td style="text-align:left;"> -0.869(0.205),$p$=.00 </td>
   <td style="text-align:left;"> +30.598(0.849),$p$=.00 </td>
   <td style="text-align:left;"> -0.163(0.057),$p$=.01 </td>
  </tr>
  <tr>
   <td style="text-align:left;"> grip--mmms </td>
   <td style="text-align:left;"> female </td>
   <td style="text-align:left;"> +21.455(0.450),$p$=.00 </td>
   <td style="text-align:left;"> -0.568(0.047),$p$=.00 </td>
   <td style="text-align:left;"> +28.055(0.138),$p$=.00 </td>
   <td style="text-align:left;"> -0.289(0.026),$p$=.00 </td>
  </tr>
  <tr>
   <td style="text-align:left;"> grip--mmms </td>
   <td style="text-align:left;"> male </td>
   <td style="text-align:left;"> +37.574(1.578),$p$=.00 </td>
   <td style="text-align:left;"> -0.867(0.220),$p$=.00 </td>
   <td style="text-align:left;"> +27.130(0.238),$p$=.00 </td>
   <td style="text-align:left;"> -0.136(0.030),$p$=.00 </td>
  </tr>
  <tr>
   <td style="text-align:left;"> grip--symbol </td>
   <td style="text-align:left;"> female </td>
   <td style="text-align:left;"> +21.505(0.455),$p$=.00 </td>
   <td style="text-align:left;"> -0.568(0.043),$p$=.00 </td>
   <td style="text-align:left;"> +34.494(0.744),$p$=.00 </td>
   <td style="text-align:left;"> -0.822(0.064),$p$=.00 </td>
  </tr>
  <tr>
   <td style="text-align:left;"> grip--symbol </td>
   <td style="text-align:left;"> male </td>
   <td style="text-align:left;"> +36.835(0.831),$p$=.00 </td>
   <td style="text-align:left;"> -0.952(0.081),$p$=.00 </td>
   <td style="text-align:left;"> +32.616(1.147),$p$=.00 </td>
   <td style="text-align:left;"> -0.894(0.084),$p$=.00 </td>
  </tr>
  <tr>
   <td style="text-align:left;"> grip--synonyms </td>
   <td style="text-align:left;"> female </td>
   <td style="text-align:left;"> +21.476(0.455),$p$=.00 </td>
   <td style="text-align:left;"> -0.567(0.043),$p$=.00 </td>
   <td style="text-align:left;"> +17.721(0.340),$p$=.00 </td>
   <td style="text-align:left;"> -0.126(0.020),$p$=.00 </td>
  </tr>
  <tr>
   <td style="text-align:left;"> grip--synonyms </td>
   <td style="text-align:left;"> male </td>
   <td style="text-align:left;"> +37.672(1.605),$p$=.00 </td>
   <td style="text-align:left;"> -0.864(0.205),$p$=.00 </td>
   <td style="text-align:left;"> +15.910(0.588),$p$=.00 </td>
   <td style="text-align:left;"> -0.073(0.037),$p$=.05 </td>
  </tr>
</tbody>
</table>

# Session Information
For the sake of documentation and reproducibility, the current report was rendered on a system using the following software.


```
Report rendered by wibeasley at 2016-05-22, 09:15 -0700
```

```
R version 3.3.0 (2016-05-03)
Platform: x86_64-pc-linux-gnu (64-bit)
Running under: Ubuntu 14.04.4 LTS

locale:
 [1] LC_CTYPE=en_US.UTF-8       LC_NUMERIC=C               LC_TIME=en_US.UTF-8        LC_COLLATE=en_US.UTF-8    
 [5] LC_MONETARY=en_US.UTF-8    LC_MESSAGES=en_US.UTF-8    LC_PAPER=en_US.UTF-8       LC_NAME=C                 
 [9] LC_ADDRESS=C               LC_TELEPHONE=C             LC_MEASUREMENT=en_US.UTF-8 LC_IDENTIFICATION=C       

attached base packages:
[1] stats     graphics  grDevices utils     datasets  methods   base     

other attached packages:
[1] magrittr_1.5 knitr_1.13  

loaded via a namespace (and not attached):
 [1] Rcpp_0.12.5     tidyr_0.4.1     digest_0.6.9    dplyr_0.4.3     assertthat_0.1  R6_2.1.2        jsonlite_0.9.20
 [8] DBI_0.4-1       formatR_1.4     evaluate_0.9    highr_0.6       stringi_1.0-1   lazyeval_0.1.10 DT_0.1         
[15] rmarkdown_0.9.6 tools_3.3.0     stringr_1.0.0   htmlwidgets_0.6 yaml_2.1.13     parallel_3.3.0  htmltools_0.3.5
```
