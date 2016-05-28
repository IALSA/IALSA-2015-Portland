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

<!--html_preserve--><div id="htmlwidget-690" style="width:100%;height:auto;" class="datatables html-widget"></div>
<script type="application/json" data-for="htmlwidget-690">{"x":{"data":[["1","2","3","4","5","6","7","8","9","10","11","12","13","14","15","16","17","18","19","20","21","22","23","24","25","26","27","28","29","30","31","32","33","34","35","36","37","38","39","40","41","42","43","44","45","46","47","48","49","50","51","52","53","54","55","56","57","58","59","60","61","62","63","64","65","66","67","68","69","70","71","72","73","74","75","76","77","78","79","80","81","82","83","84","85","86","87","88","89","90","91","92","93","94","95","96","97","98","99","100","101","102","103","104","105","106","107","108","109","110","111","112","113","114","115","116","117","118","119","120","121","122","123","124","125","126","127","128","129","130","131","132","133","134","135","136","137","138","139","140","141","142","143","144","145","146","147","148","149","150","151","152","153","154","155","156","157","158","159","160","161","162","163","164","165","166","167","168","169","170","171","172","173","174","175","176","177","178","179","180","181","182","183","184","185","186","187","188","189","190","191","192","193","194","195","196","197","198","199","200","201","202","203","204","205","206","207","208","209","210","211","212","213","214","215","216","217","218","219","220","221","222","223","224","225","226","227","228","229","230","231","232","233","234","235","236","237","238","239","240","241","242","243","244","245","246","247","248","249","250","251","252","253","254","255","256","257","258","259","260","261","262","263","264","265","266","267","268","269","270","271","272","273","274","275","276","277","278","279","280","281","282","283","284","285","286","287","288","289","290","291","292","293","294","295","296","297","298","299","300","301","302","303","304","305","306","307","308","309","310","311","312","313","314","315","316","317","318","319","320","321","322","323","324","325","326","327","328","329","330","331","332","333","334","335","336","337","338","339","340","341","342","343","344","345","346","347","348","349","350","351","352","353","354","355","356","357","358","359","360","361","362","363","364","365","366","367","368","369","370","371","372","373","374","375","376","377","378","379","380","381","382","383","384","385","386","387","388","389","390","391","392","393","394","395","396","397","398","399","400","401","402","403","404","405","406","407","408","409","410","411","412","413","414","415","416","417","418","419","420","421","422","423","424","425","426","427","428","429","430","431","432","433","434","435","436","437","438","439","440","441","442","443","444","445","446","447","448","449","450","451","452","453","454","455","456","457","458","459","460","461","462","463","464","465","466","467","468","469","470","471","472","473","474","475","476","477","478","479","480","481","482","483","484","485","486","487","488","489","490","491","492","493","494","495","496","497","498","499","500","501","502","503","504","505","506","507","508","509","510","511","512","513","514","515","516","517","518","519","520","521","522","523","524","525","526","527","528","529","530","531","532","533","534","535","536","537","538","539","540","541","542","543","544","545","546","547","548","549","550","551","552","553","554","555","556","557","558","559","560","561","562","563","564","565","566","567","568","569","570","571","572","573","574","575","576","577","578","579","580","581","582","583","584","585","586","587","588","589","590","591","592","593","594","595","596","597","598","599","600","601","602","603","604","605","606","607","608","609","610","611","612","613","614","615","616","617","618","619","620","621","622","623","624","625","626","627","628","629","630","631","632","633","634","635","636","637","638","639","640","641","642","643","644","645","646","647","648","649","650","651","652","653","654","655","656","657","658","659","660","661","662","663","664","665","666","667","668","669","670","671","672","673","674","675","676","677","678","679","680","681","682","683","684","685","686","687","688","689","690","691","692","693","694","695","696","697","698","699","700","701","702","703","704","705","706","707","708","709","710","711","712","713","714","715","716","717","718","719","720","721","722","723","724","725","726","727","728","729","730","731","732","733","734","735","736","737","738","739","740","741","742","743","744","745","746","747","748","749","750","751","752","753","754","755","756","757","758","759","760","761","762","763","764","765","766","767","768","769","770","771","772","773","774","775","776","777","778","779","780","781","782","783","784","785","786","787","788","789","790","791","792","793","794","795","796","797","798","799","800","801","802","803","804","805","806","807","808","809","810","811","812","813","814","815","816","817","818","819","820","821","822","823","824","825","826","827","828","829","830","831","832","833","834","835","836","837","838","839","840","841","842","843","844","845","846","847","848","849","850","851","852","853","854","855","856","857","858","859","860","861","862","863","864","865","866","867","868","869","870","871","872","873","874","875","876","877","878","879","880","881","882","883","884","885","886","887","888","889","890","891","892","893","894","895","896","897","898","899","900","901","902","903","904","905","906","907","908","909","910","911","912","913","914","915","916","917","918","919","920","921","922","923","924","925","926","927","928","929","930","931","932","933","934","935","936","937","938","939","940","941","942","943","944","945","946","947","948","949","950","951","952","953","954","955","956","957","958","959","960","961","962","963","964","965","966","967","968","969","970","971","972","973","974","975","976","977","978","979","980","981","982","983","984","985","986","987"],["eas","eas","eas","eas","eas","eas","eas","eas","eas","eas","eas","eas","eas","eas","eas","eas","eas","eas","eas","eas","eas","eas","eas","eas","eas","eas","eas","eas","eas","eas","eas","eas","eas","eas","eas","eas","eas","eas","eas","eas","eas","eas","eas","eas","eas","eas","eas","eas","eas","eas","eas","eas","eas","eas","eas","eas","eas","eas","eas","eas","eas","eas","eas","eas","eas","eas","eas","eas","eas","eas","eas","eas","eas","eas","eas","eas","eas","eas","eas","eas","eas","eas","eas","eas","eas","eas","eas","eas","eas","eas","eas","eas","eas","eas","eas","eas","eas","eas","eas","eas","eas","eas","eas","eas","eas","eas","eas","eas","eas","eas","eas","eas","eas","eas","eas","eas","eas","eas","eas","eas","eas","eas","eas","eas","eas","eas","eas","eas","eas","eas","eas","eas","eas","eas","eas","eas","eas","eas","eas","eas","eas","eas","eas","eas","eas","eas","eas","eas","eas","eas","eas","eas","eas","eas","eas","eas","eas","eas","eas","eas","eas","eas","eas","eas","eas","eas","eas","eas","eas","eas","eas","eas","eas","eas","eas","eas","eas","eas","eas","eas","eas","eas","eas","eas","eas","eas","eas","eas","eas","eas","eas","eas","eas","eas","eas","eas","eas","eas","eas","eas","eas","eas","eas","eas","eas","eas","eas","eas","eas","eas","eas","eas","eas","eas","eas","eas","eas","eas","eas","eas","eas","eas","eas","eas","eas","eas","eas","eas","eas","eas","eas","eas","eas","eas","eas","eas","eas","eas","eas","eas","eas","eas","eas","eas","eas","eas","eas","eas","eas","eas","eas","eas","eas","eas","eas","elsa","elsa","elsa","elsa","elsa","elsa","elsa","elsa","elsa","elsa","elsa","elsa","elsa","elsa","elsa","elsa","elsa","elsa","hrs","hrs","hrs","hrs","hrs","hrs","hrs","hrs","hrs","hrs","hrs","hrs","hrs","hrs","hrs","hrs","hrs","hrs","hrs","hrs","hrs","hrs","hrs","hrs","hrs","hrs","hrs","hrs","hrs","hrs","hrs","hrs","hrs","hrs","hrs","hrs","hrs","hrs","hrs","hrs","hrs","hrs","hrs","hrs","hrs","hrs","hrs","hrs","hrs","hrs","hrs","hrs","hrs","hrs","hrs","hrs","hrs","hrs","hrs","hrs","hrs","hrs","hrs","hrs","hrs","hrs","hrs","hrs","hrs","hrs","hrs","hrs","ilse","ilse","ilse","ilse","ilse","ilse","ilse","ilse","ilse","ilse","ilse","ilse","ilse","ilse","ilse","ilse","ilse","ilse","ilse","ilse","ilse","ilse","ilse","ilse","ilse","ilse","ilse","ilse","ilse","ilse","ilse","ilse","ilse","ilse","ilse","ilse","ilse","lasa","lasa","lasa","lasa","lasa","lasa","lasa","lasa","lasa","lasa","lasa","lasa","lasa","lasa","lasa","lasa","lasa","lasa","map","map","map","map","map","map","map","map","map","map","map","map","map","map","map","map","map","map","map","map","map","map","map","map","map","map","map","map","map","map","map","map","map","map","map","map","map","map","map","map","map","map","map","map","map","map","map","map","map","map","map","map","map","map","map","map","map","map","map","map","map","map","map","map","map","map","map","map","map","map","map","map","map","map","map","map","map","map","map","map","map","map","map","map","map","map","map","map","map","map","map","map","map","map","map","map","map","map","map","map","map","map","map","map","map","map","map","map","map","map","map","map","map","map","map","map","map","map","map","map","map","map","map","map","map","map","map","map","map","map","map","map","map","map","map","map","map","map","map","map","map","map","map","map","map","map","map","map","map","map","map","map","map","map","map","map","map","map","map","map","map","map","map","map","map","map","map","map","map","map","map","map","map","map","map","map","map","map","map","map","map","map","map","map","map","map","map","map","map","map","map","map","map","map","map","map","map","map","map","map","map","map","map","map","map","map","map","map","map","map","map","map","map","map","map","map","map","map","map","map","map","map","map","map","map","map","map","map","map","map","map","map","map","map","map","map","map","map","map","map","map","map","map","map","map","map","map","map","map","map","map","map","map","map","map","map","map","map","map","map","map","map","map","map","map","map","map","map","map","map","map","map","map","map","map","map","map","map","map","map","map","map","map","map","map","map","map","map","map","map","map","map","map","map","map","map","map","map","nuage","nuage","nuage","nuage","nuage","nuage","octo","octo","octo","octo","octo","octo","octo","octo","octo","octo","octo","octo","octo","octo","octo","octo","octo","octo","octo","octo","octo","octo","octo","octo","octo","octo","octo","octo","octo","octo","octo","octo","octo","octo","octo","octo","octo","octo","octo","octo","octo","octo","octo","octo","octo","octo","octo","octo","octo","octo","octo","octo","octo","octo","octo","octo","octo","octo","octo","octo","octo","octo","octo","octo","octo","octo","octo","octo","octo","octo","octo","octo","octo","octo","octo","octo","octo","octo","octo","octo","octo","octo","octo","octo","octo","octo","octo","octo","octo","octo","octo","octo","octo","octo","octo","octo","octo","octo","octo","octo","octo","octo","octo","octo","octo","octo","octo","octo","octo","octo","octo","octo","octo","octo","octo","octo","octo","octo","octo","octo","octo","satsa","satsa","satsa","satsa","satsa","satsa","satsa","satsa","satsa","satsa","satsa","satsa","satsa","satsa","satsa","satsa","satsa","satsa","satsa","satsa","satsa","satsa","satsa","satsa","satsa","satsa","satsa","satsa","satsa","satsa","satsa","satsa","satsa","satsa","satsa","satsa","satsa","satsa","satsa","satsa","satsa","satsa","satsa","satsa","satsa","satsa","satsa","satsa","satsa","satsa","satsa","satsa","satsa","satsa","satsa","satsa","satsa","satsa","satsa","satsa","satsa","satsa","satsa","satsa","satsa","satsa","satsa","satsa","satsa","satsa","satsa","satsa","satsa","satsa","satsa","satsa","satsa","satsa","satsa","satsa","satsa","satsa","satsa","satsa","satsa","satsa","satsa","satsa","satsa","satsa","satsa","satsa","satsa","satsa","satsa","satsa","satsa","satsa","satsa","satsa","satsa","satsa","satsa","satsa","satsa","satsa","satsa","satsa","satsa","satsa","satsa","satsa","satsa","satsa","satsa","satsa","satsa","satsa","satsa","satsa","satsa","satsa","satsa","satsa","satsa","satsa","satsa","satsa","satsa","satsa","satsa","satsa","satsa","satsa","satsa","satsa","satsa","satsa","satsa","satsa","satsa","satsa","satsa","satsa","satsa","satsa","satsa","satsa","satsa","satsa","satsa","satsa","satsa","satsa","satsa","satsa","satsa","satsa","satsa","satsa","satsa","satsa"],["gait","gait","gait","gait","gait","gait","gait","gait","gait","gait","gait","gait","gait","gait","gait","gait","gait","gait","gait","gait","gait","gait","gait","gait","gait","gait","gait","gait","gait","gait","gait","gait","gait","gait","gait","gait","gait","gait","gait","gait","gait","gait","gait","gait","gait","gait","gait","gait","gait","gait","gait","gait","gait","gait","gait","gait","gait","gait","gait","gait","gait","gait","gait","gait","gait","gait","gait","gait","gait","gait","gait","gait","gait","gait","gait","gait","gait","gait","gait","gait","gait","gait","gait","gait","gait","gait","gait","gait","gait","gait","gait","gait","gait","gait","gait","gait","gait","gait","gait","gait","gait","gait","gait","gait","gait","gait","gait","gait","gait","gait","grip","grip","grip","grip","grip","grip","grip","grip","grip","grip","grip","grip","grip","grip","grip","grip","grip","grip","grip","grip","grip","grip","grip","grip","grip","grip","grip","grip","grip","grip","grip","grip","grip","grip","grip","grip","grip","grip","grip","grip","grip","grip","grip","grip","grip","grip","grip","grip","grip","grip","grip","grip","grip","grip","grip","grip","grip","grip","grip","grip","grip","grip","grip","grip","grip","grip","grip","grip","grip","grip","grip","grip","grip","grip","grip","grip","grip","grip","grip","grip","grip","grip","grip","grip","grip","grip","grip","grip","grip","grip","grip","grip","grip","grip","grip","grip","grip","grip","grip","grip","grip","grip","grip","grip","grip","grip","grip","grip","grip","pef","pef","pef","pef","pef","pef","pef","pef","pef","pef","pef","pef","pef","pef","pef","pef","pef","pef","pef","pef","pef","pef","pef","pef","pef","pef","pef","pef","pef","pef","pef","pef","pef","pef","pef","pef","fev","fev","fev","fev","fev100","fev100","fev100","fev100","gait","gait","gait","gait","gait","gait","grip","grip","grip","grip","gait","gait","gait","gait","gait","gait","gait","gait","gait","gait","gait","gait","gait","gait","gait","gait","gait","gait","gait","gait","gait","gait","gait","gait","grip","grip","grip","grip","grip","grip","grip","grip","grip","grip","grip","grip","grip","grip","grip","grip","grip","grip","grip","grip","grip","grip","grip","grip","pef","pef","pef","pef","pef","pef","pef","pef","pef","pef","pef","pef","pef","pef","pef","pef","pef","pef","pef","pef","pef","pef","pef","pef","grip","grip","grip","grip","grip","grip","grip","grip","tug","tug","tug","tug","tug","tug","tug","tug","tug","tug","tug","tug","tug","tug","tug","tug","tug","tug","tug","tug","tug","tug","tug","tug","tug","tug","tug","tug","tug","gait","gait","gait","gait","gait","gait","grip","grip","grip","grip","grip","grip","pef","pef","pef","pef","pef","pef","fev","fev","fev","fev","fev","fev","fev","fev","fev","fev","fev","fev","fev","fev","fev","fev","fev","fev","fev","fev","fev","fev","fev","fev","fev","fev","fev","fev","fev","fev","fev","fev","fev","fev","fev","fev","fev","fev","fev","fev","fev","fev","fev","fev","fev","fev","fev","fev","fev","fev","fev","fev","fev","fev","fev","fev","fev","fev","fev","fev","fev","fev","fev","fev","fev","fev","fev","fev","fev","fev","fev","fev","fev","fev","fev","fev","fev","fev","fev","fev","fev","fev","fev","fev","fev","fev","fev","fev","fev","fev","fev","fev","fev","fev","fev","fev","fev","fev","fev","fev","fev","fev","fev","fev","fev","fev","fev","fev","fev","fev","fev","fev","fev","fev","fev","fev","fev","fev","fev","fev","fev","fev","fev","fev","fev","fev","fev","fev","fev","fev","fev","fev","fev","fev","fev","fev","fev","fev","fev","fev","fev","fev","fev","fev","fev","fev","fev","fev","fev","fev","grip","grip","grip","grip","grip","grip","grip","grip","grip","grip","grip","grip","grip","grip","grip","grip","grip","grip","grip","grip","grip","grip","grip","grip","grip","grip","grip","grip","grip","grip","grip","grip","grip","grip","grip","grip","grip","grip","grip","grip","grip","grip","grip","grip","grip","grip","grip","grip","grip","grip","grip","grip","grip","grip","grip","grip","grip","grip","grip","grip","grip","grip","grip","grip","grip","grip","grip","grip","grip","grip","grip","grip","grip","grip","grip","grip","grip","grip","grip","grip","grip","grip","grip","grip","grip","grip","grip","grip","grip","grip","grip","grip","grip","grip","grip","grip","grip","grip","grip","grip","grip","grip","grip","grip","grip","grip","grip","grip","grip","grip","grip","grip","grip","grip","grip","grip","grip","grip","grip","grip","grip","grip","grip","grip","grip","grip","grip","grip","grip","grip","grip","grip","grip","grip","grip","grip","grip","grip","grip","grip","grip","grip","grip","grip","grip","grip","grip","grip","grip","grip","grip","grip","grip","grip","gait","gait","gait","gait","gait","gait","gait","gait","gait","grip","grip","grip","grip","grip","grip","grip","grip","grip","grip","grip","grip","grip","grip","grip","grip","grip","grip","grip","grip","grip","grip","grip","grip","grip","grip","grip","grip","grip","grip","grip","grip","grip","grip","grip","grip","grip","grip","grip","grip","grip","grip","grip","grip","grip","grip","grip","grip","grip","grip","grip","grip","grip","grip","grip","grip","grip","grip","pef","pef","pef","pef","pef","pef","pef","pef","pef","pef","pef","pef","pef","pef","pef","pef","pef","pef","pef","pef","pef","pef","pef","pef","pef","pef","pef","pef","pef","pef","pef","pef","pef","pef","pef","pef","pef","pef","pef","pef","pef","pef","pef","pef","pef","pef","pef","pef","pef","pef","pef","pef","pef","pef","fev","fev","fev","fev","fev","fev","fev","fev","fev","fev","fev","fev","fev","fev","fev","fev","fev","fev","fev","fev","fev","fev","fev","fev","fev","fev","fev","fev","fev","fev","fev","fev","fev","fev","fev","fev","fev","fev","fev","fev","fev","fev","fev","fev","fev","fev","fev","fev","fev","fev","fev","fev","fev","fev","fev","fev","fev","fev","fev","fev","fev","fev","fev","fev","fev","fev","fev","fev","fev","fev","fev","fev","fev","fev","fev","fev","fev","fev","fev","fev","fev","fev","fev","fev","fev","fev","fev","fev","fev","fev","fev","fev","fev","fev","fev","fev","fev","fev","fev","fev","fev","fev","fev","fev","fev","fev","fev","fev","fev","fev","grip","grip","grip","grip","grip","grip","grip","grip","grip","grip","grip","grip","grip","grip","grip","grip","grip","grip","grip","grip","grip","grip","grip","grip","grip","grip","grip","grip","grip","grip","grip","grip","grip","grip","grip","grip","grip","grip","grip","grip","grip","grip","grip","grip","grip","grip","grip","grip","grip","grip","grip","grip"],["block","block","block","block","block","block","block","block","block","block","bnt","bnt","bnt","bnt","bnt","bnt","bnt","bnt","bnt","bnt","categories","categories","categories","categories","categories","categories","categories","categories","categories","categories","digit_tot","digit_tot","digit_tot","digit_tot","digit_tot","digit_tot","digit_tot","digit_tot","digit_tot","digit_tot","fas","fas","fas","fas","fas","fas","fas","fas","fas","fas","information","information","information","information","information","information","information","information","information","information","logic_tot","logic_tot","logic_tot","logic_tot","logic_tot","logic_tot","logic_tot","logic_tot","logic_tot","logic_tot","mmms","mmms","mmms","mmms","mmms","mmms","mmms","mmms","mmms","mmms","symbol","symbol","symbol","symbol","symbol","symbol","symbol","symbol","symbol","symbol","trailsb","trailsb","trailsb","trailsb","trailsb","trailsb","trailsb","trailsb","trailsb","trailsb","waisvocab","waisvocab","waisvocab","waisvocab","waisvocab","waisvocab","waisvocab","waisvocab","waisvocab","waisvocab","block","block","block","block","block","block","block","block","block","block","bnt","bnt","bnt","bnt","bnt","bnt","bnt","bnt","bnt","bnt","categories","categories","categories","categories","categories","categories","categories","categories","categories","categories","digit_tot","digit_tot","digit_tot","digit_tot","digit_tot","digit_tot","digit_tot","digit_tot","digit_tot","digit_tot","fas","fas","fas","fas","fas","fas","fas","fas","fas","fas","information","information","information","information","information","information","information","information","information","information","logic_tot","logic_tot","logic_tot","logic_tot","logic_tot","logic_tot","logic_tot","logic_tot","logic_tot","mmms","mmms","mmms","mmms","mmms","mmms","mmms","mmms","mmms","mmms","symbol","symbol","symbol","symbol","symbol","symbol","symbol","symbol","symbol","symbol","trailsb","trailsb","trailsb","trailsb","trailsb","trailsb","trailsb","trailsb","trailsb","trailsb","waisvocab","waisvocab","waisvocab","waisvocab","waisvocab","waisvocab","waisvocab","waisvocab","waisvocab","waisvocab","block","block","block","block","block","block","block","digit_tot","digit_tot","digit_tot","digit_tot","digit_tot","digit_tot","digit_tot","digit_tot","digit_tot","fas","symbol","symbol","symbol","symbol","symbol","symbol","symbol","symbol","symbol","symbol","trailsb","trailsb","trailsb","trailsb","trailsb","trailsb","trailsb","trailsb","trailsb","word_de","word_de","word_im","word_im","word_de","word_de","word_im","word_im","fluency","fluency","word_de","word_de","word_im","word_im","word_de","word_de","word_im","word_im","serial7","serial7","serial7","serial7","serial7","serial7","tics","tics","tics","tics","tics","tics","word_de","word_de","word_de","word_de","word_de","word_de","word_im","word_im","word_im","word_im","word_im","word_im","serial7","serial7","serial7","serial7","serial7","serial7","tics","tics","tics","tics","tics","tics","word_de","word_de","word_de","word_de","word_de","word_de","word_im","word_im","word_im","word_im","word_im","word_im","serial7","serial7","serial7","serial7","serial7","serial7","tics","tics","tics","tics","tics","tics","word_de","word_de","word_de","word_de","word_de","word_de","word_im","word_im","word_im","word_im","word_im","word_im","fluency","fluency","piccomp","piccomp","symbol","symbol","waisgeneral","waisgeneral","block","block","block","block","block","block","fluency","fluency","fluency","fluency","fluency","piccomp","piccomp","piccomp","piccomp","piccomp","piccomp","symbol","symbol","symbol","symbol","symbol","symbol","waisgeneral","waisgeneral","waisgeneral","waisgeneral","waisgeneral","waisgeneral","letter","letter","raven","raven","word_im","word_im","letter","letter","raven","raven","word_im","word_im","letter","letter","raven","raven","word_im","word_im","bnt","bnt","bnt","bnt","bnt","bnt","bnt","bnt","bstory_de","bstory_de","bstory_de","bstory_de","bstory_de","bstory_de","bstory_de","bstory_de","bstory_im","bstory_im","bstory_im","bstory_im","bstory_im","bstory_im","bstory_im","bstory_im","categories","categories","categories","categories","categories","categories","categories","categories","digit_b","digit_b","digit_b","digit_b","digit_b","digit_b","digit_b","digit_b","digit_f","digit_f","digit_f","digit_f","digit_f","digit_f","digit_f","digit_f","digit_o","digit_o","digit_o","digit_o","digit_o","digit_o","digit_o","digit_o","ideas","ideas","ideas","ideas","ideas","ideas","ideas","ideas","line","line","line","line","line","line","line","line","logic_de","logic_de","logic_de","logic_de","logic_de","logic_de","logic_de","logic_de","logic_im","logic_im","logic_im","logic_im","logic_im","logic_im","logic_im","matrices","matrices","matrices","matrices","matrices","matrices","matrices","matrices","mmms","mmms","mmms","mmms","mmms","mmms","mmms","nart","nart","nart","nart","nart","nart","nart","nart","num_comp","num_comp","num_comp","num_comp","num_comp","num_comp","num_comp","num_comp","symbol","symbol","symbol","symbol","symbol","symbol","symbol","symbol","word_de","word_de","word_de","word_de","word_de","word_de","word_de","word_de","word_im","word_im","word_im","word_im","word_im","word_im","word_im","word_im","word_rec","word_rec","word_rec","word_rec","word_rec","word_rec","word_rec","word_rec","bnt","bnt","bnt","bnt","bnt","bnt","bnt","bstory_de","bstory_de","bstory_de","bstory_de","bstory_de","bstory_de","bstory_de","bstory_de","bstory_im","bstory_im","bstory_im","bstory_im","bstory_im","bstory_im","bstory_im","bstory_im","categories","categories","categories","categories","categories","categories","categories","categories","digit_b","digit_b","digit_b","digit_b","digit_b","digit_b","digit_b","digit_b","digit_f","digit_f","digit_f","digit_f","digit_f","digit_f","digit_f","digit_f","digit_o","digit_o","digit_o","digit_o","digit_o","digit_o","digit_o","digit_o","ideas","ideas","ideas","ideas","ideas","ideas","ideas","ideas","line","line","line","line","line","line","line","line","logic_de","logic_de","logic_de","logic_de","logic_de","logic_de","logic_de","logic_de","logic_im","logic_im","logic_im","logic_im","logic_im","logic_im","logic_im","logic_im","matrices","matrices","matrices","matrices","matrices","matrices","matrices","matrices","mmms","mmms","mmms","mmms","mmms","mmms","mmms","mmms","nart","nart","nart","nart","nart","nart","nart","num_comp","num_comp","num_comp","num_comp","num_comp","num_comp","num_comp","symbol","symbol","symbol","symbol","symbol","symbol","symbol","symbol","word_de","word_de","word_de","word_de","word_de","word_de","word_de","word_de","word_im","word_im","word_im","word_im","word_im","word_im","word_im","word_im","word_rec","word_rec","word_rec","word_rec","word_rec","word_rec","word_rec","mmms","mmms","mmms","mmms","mmms","mmms","block","block","digit_b","digit_b","digit_f","digit_f","prose_im","symbol","symbol","block","block","block","block","block","block","digit_b","digit_b","digit_b","digit_b","digit_b","digit_b","digit_f","digit_f","digit_f","digit_f","digit_f","digit_f","fig_logic","fig_logic","fig_logic","fig_logic","fig_logic","fig_logic","information","information","information","information","mir","mir","mir","mir","mir","mir","mmms","mmms","mmms","mmms","prose_im","prose_im","prose_im","prose_im","prose_im","prose_im","psif","psif","psif","psif","symbol","symbol","symbol","symbol","symbol","symbol","synonyms","synonyms","synonyms","synonyms","block","block","block","block","block","block","digit_b","digit_b","digit_b","digit_b","digit_b","digit_b","digit_f","digit_f","digit_f","digit_f","digit_f","digit_f","fig_logic","fig_logic","fig_logic","fig_logic","information","information","information","information","mir","mir","mir","mir","mmms","mmms","mmms","mmms","prose_im","prose_im","prose_im","prose_im","prose_im","prose_im","psif","psif","psif","psif","symbol","symbol","symbol","symbol","symbol","symbol","synonyms","synonyms","synonyms","synonyms","analogies","analogies","analogies","analogies","analogies","analogies","analogies","analogies","analogies","analogies","block","block","block","block","block","block","block","block","block","block","digit_b","digit_b","digit_b","digit_b","digit_b","digit_b","digit_b","digit_b","digit_b","digit_b","digit_b","digit_b","digit_f","digit_f","digit_f","digit_f","digit_f","digit_f","digit_f","digit_f","digit_f","digit_f","digit_f","digit_f","fig_id","fig_id","fig_id","fig_id","fig_id","fig_id","fig_mem","fig_mem","fig_mem","fig_mem","fig_mem","fig_mem","fig_mem","fig_mem","fig_mem","fig_mem","information","information","information","information","information","information","information","information","information","information","mmms","mmms","mmms","mmms","mmms","mmms","mmms","mmms","mmms","mmms","rotate","rotate","rotate","rotate","rotate","rotate","rotate","rotate","rotate","rotate","symbol","symbol","symbol","symbol","symbol","symbol","symbol","symbol","symbol","symbol","synonyms","synonyms","synonyms","synonyms","synonyms","synonyms","synonyms","synonyms","synonyms","synonyms","analogies","analogies","analogies","analogies","analogies","analogies","analogies","analogies","block","block","digit_b","digit_b","digit_f","digit_f","fig_id","fig_id","fig_id","fig_id","fig_id","fig_id","information","information","information","information","information","information","information","information","mmms","mmms","mmms","mmms","mmms","mmms","mmms","mmms","symbol","symbol","symbol","symbol","symbol","symbol","symbol","symbol","synonyms","synonyms","synonyms","synonyms","synonyms","synonyms","synonyms","synonyms"],["female","female","female","female","female","male","male","male","male","male","female","female","female","female","female","male","male","male","male","male","female","female","female","female","female","male","male","male","male","male","female","female","female","female","female","male","male","male","male","male","female","female","female","female","female","male","male","male","male","male","female","female","female","female","female","male","male","male","male","male","female","female","female","female","female","male","male","male","male","male","female","female","female","female","female","male","male","male","male","male","female","female","female","female","female","male","male","male","male","male","female","female","female","female","female","male","male","male","male","male","female","female","female","female","female","male","male","male","male","male","female","female","female","female","female","male","male","male","male","male","female","female","female","female","female","male","male","male","male","male","female","female","female","female","female","male","male","male","male","male","female","female","female","female","female","male","male","male","male","male","female","female","female","female","female","male","male","male","male","male","female","female","female","female","female","male","male","male","male","male","female","female","female","female","female","male","male","male","male","female","female","female","female","female","male","male","male","male","male","female","female","female","female","female","male","male","male","male","male","female","female","female","female","female","male","male","male","male","male","female","female","female","female","female","male","male","male","male","male","female","female","female","female","male","male","male","female","female","female","female","male","male","male","male","male","male","female","female","female","female","female","male","male","male","male","male","female","female","female","female","female","male","male","male","male","female","male","female","male","female","male","female","male","female","male","female","male","female","male","female","male","female","male","female","female","female","male","male","male","female","female","female","male","male","male","female","female","female","male","male","male","female","female","female","male","male","male","female","female","female","male","male","male","female","female","female","male","male","male","female","female","female","male","male","male","female","female","female","male","male","male","female","female","female","male","male","male","female","female","female","male","male","male","female","female","female","male","male","male","female","female","female","male","male","male","female","male","female","male","female","male","female","male","female","female","female","male","male","male","female","female","female","male","male","female","female","female","male","male","male","female","female","female","male","male","male","female","female","female","male","male","male","female","male","female","male","female","male","female","male","female","male","female","male","female","male","female","male","female","male","female","female","female","female","male","male","male","male","female","female","female","female","male","male","male","male","female","female","female","female","male","male","male","male","female","female","female","female","male","male","male","male","female","female","female","female","male","male","male","male","female","female","female","female","male","male","male","male","female","female","female","female","male","male","male","male","female","female","female","female","male","male","male","male","female","female","female","female","male","male","male","male","female","female","female","female","male","male","male","male","female","female","female","male","male","male","male","female","female","female","female","male","male","male","male","female","female","female","female","male","male","male","female","female","female","female","male","male","male","male","female","female","female","female","male","male","male","male","female","female","female","female","male","male","male","male","female","female","female","female","male","male","male","male","female","female","female","female","male","male","male","male","female","female","female","female","male","male","male","male","female","female","female","male","male","male","male","female","female","female","female","male","male","male","male","female","female","female","female","male","male","male","male","female","female","female","female","male","male","male","male","female","female","female","female","male","male","male","male","female","female","female","female","male","male","male","male","female","female","female","female","male","male","male","male","female","female","female","female","male","male","male","male","female","female","female","female","male","male","male","male","female","female","female","female","male","male","male","male","female","female","female","female","male","male","male","male","female","female","female","female","male","male","male","male","female","female","female","female","male","male","male","male","female","female","female","male","male","male","male","female","female","female","female","male","male","male","female","female","female","female","male","male","male","male","female","female","female","female","male","male","male","male","female","female","female","female","male","male","male","male","female","female","female","male","male","male","male","female","female","female","male","male","male","female","male","female","male","female","male","female","female","male","female","female","female","male","male","male","female","female","female","male","male","male","female","female","female","male","male","male","female","female","female","male","male","male","female","female","male","male","female","female","female","male","male","male","female","female","male","male","female","female","female","male","male","male","female","female","male","male","female","female","female","male","male","male","female","female","male","male","female","female","female","male","male","male","female","female","female","male","male","male","female","female","female","male","male","male","female","female","male","male","female","female","male","male","female","female","male","male","female","female","male","male","female","female","female","male","male","male","female","female","male","male","female","female","female","male","male","male","female","female","male","male","female","female","female","female","female","male","male","male","male","male","female","female","female","female","female","male","male","male","male","male","female","female","female","female","female","female","male","male","male","male","male","male","female","female","female","female","female","female","male","male","male","male","male","male","female","female","female","male","male","male","female","female","female","female","female","male","male","male","male","male","female","female","female","female","female","male","male","male","male","male","female","female","female","female","female","male","male","male","male","male","female","female","female","female","female","male","male","male","male","male","female","female","female","female","female","male","male","male","male","male","female","female","female","female","female","male","male","male","male","male","female","female","female","female","male","male","male","male","female","male","female","male","female","male","female","female","female","male","male","male","female","female","female","female","male","male","male","male","female","female","female","female","male","male","male","male","female","female","female","female","male","male","male","male","female","female","female","female","male","male","male","male"],["a","ae","aeh","aehplus","full","a","ae","aeh","aehplus","full","a","ae","aeh","aehplus","full","a","ae","aeh","aehplus","full","a","ae","aeh","aehplus","full","a","ae","aeh","aehplus","full","a","ae","aeh","aehplus","full","a","ae","aeh","aehplus","full","a","ae","aeh","aehplus","full","a","ae","aeh","aehplus","full","a","ae","aeh","aehplus","full","a","ae","aeh","aehplus","full","a","ae","aeh","aehplus","full","a","ae","aeh","aehplus","full","a","ae","aeh","aehplus","full","a","ae","aeh","aehplus","full","a","ae","aeh","aehplus","full","a","ae","aeh","aehplus","full","a","ae","aeh","aehplus","full","a","ae","aeh","aehplus","full","a","ae","aeh","aehplus","full","a","ae","aeh","aehplus","full","a","ae","aeh","aehplus","full","a","ae","aeh","aehplus","full","a","ae","aeh","aehplus","full","a","ae","aeh","aehplus","full","a","ae","aeh","aehplus","full","a","ae","aeh","aehplus","full","a","ae","aeh","aehplus","full","a","ae","aeh","aehplus","full","a","ae","aeh","aehplus","full","a","ae","aeh","aehplus","full","a","ae","aeh","aehplus","full","a","ae","aeh","aehplus","full","a","ae","aeh","aehplus","full","a","ae","aehplus","full","a","ae","aeh","aehplus","full","a","ae","aeh","aehplus","full","a","ae","aeh","aehplus","full","a","ae","aeh","aehplus","full","a","ae","aeh","aehplus","full","a","ae","aeh","aehplus","full","a","ae","aeh","aehplus","full","a","ae","aeh","aehplus","full","ae","aeh","aehplus","full","ae","aeh","aehplus","a","ae","aeh","aehplus","a","ae","aeh","aehplus","full","a","a","ae","aeh","aehplus","full","a","ae","aeh","aehplus","full","a","ae","aeh","aehplus","full","ae","aeh","aehplus","full","aehplus","aehplus","aehplus","aehplus","aehplus","aehplus","aehplus","aehplus","aehplus","aehplus","aehplus","aehplus","aehplus","aehplus","aehplus","aehplus","aehplus","aehplus","a","aeh","aehplus","a","aeh","aehplus","a","aeh","aehplus","a","aeh","aehplus","a","aeh","aehplus","a","aeh","aehplus","a","aeh","aehplus","a","aeh","aehplus","a","aeh","aehplus","a","aeh","aehplus","a","aeh","aehplus","a","aeh","aehplus","a","aeh","aehplus","a","aeh","aehplus","a","aeh","aehplus","a","aeh","aehplus","a","aeh","aehplus","a","aeh","aehplus","a","aeh","aehplus","a","aeh","aehplus","a","aeh","aehplus","a","aeh","aehplus","a","aeh","aehplus","a","aeh","aehplus","aehplus","aehplus","aehplus","aehplus","aehplus","aehplus","aehplus","aehplus","a","aeh","aehplus","a","aeh","aehplus","a","aeh","aehplus","a","aeh","a","aeh","aehplus","a","aeh","aehplus","a","aeh","aehplus","a","aeh","aehplus","a","aeh","aehplus","a","aeh","aehplus","aehplus","aehplus","aehplus","aehplus","aehplus","aehplus","aehplus","aehplus","aehplus","aehplus","aehplus","aehplus","aehplus","aehplus","aehplus","aehplus","aehplus","aehplus","a","ae","aeh","aehplus","a","ae","aeh","aehplus","a","ae","aeh","aehplus","a","ae","aeh","aehplus","a","ae","aeh","aehplus","a","ae","aeh","aehplus","a","ae","aeh","aehplus","a","ae","aeh","aehplus","a","ae","aeh","aehplus","a","ae","aeh","aehplus","a","ae","aeh","aehplus","a","ae","aeh","aehplus","a","ae","aeh","aehplus","a","ae","aeh","aehplus","a","ae","aeh","aehplus","a","ae","aeh","aehplus","a","ae","aeh","aehplus","a","ae","aeh","aehplus","a","ae","aeh","aehplus","a","ae","aeh","aehplus","ae","aeh","aehplus","a","ae","aeh","aehplus","a","ae","aeh","aehplus","a","ae","aeh","aehplus","a","ae","aeh","aehplus","ae","aeh","aehplus","a","ae","aeh","aehplus","a","ae","aeh","aehplus","a","ae","aeh","aehplus","a","ae","aeh","aehplus","a","ae","aeh","aehplus","a","ae","aeh","aehplus","a","ae","aeh","aehplus","a","ae","aeh","aehplus","a","ae","aeh","aehplus","a","ae","aeh","aehplus","a","ae","aeh","aehplus","a","ae","aeh","aehplus","a","aeh","aehplus","a","ae","aeh","aehplus","a","ae","aeh","aehplus","a","ae","aeh","aehplus","a","ae","aeh","aehplus","a","ae","aeh","aehplus","a","ae","aeh","aehplus","a","ae","aeh","aehplus","a","ae","aeh","aehplus","a","ae","aeh","aehplus","a","ae","aeh","aehplus","a","ae","aeh","aehplus","a","ae","aeh","aehplus","a","ae","aeh","aehplus","a","ae","aeh","aehplus","a","ae","aeh","aehplus","a","ae","aeh","aehplus","a","ae","aeh","aehplus","a","ae","aeh","aehplus","a","ae","aeh","aehplus","a","ae","aeh","aehplus","a","ae","aeh","aehplus","a","ae","aeh","aehplus","a","ae","aeh","aehplus","a","ae","aeh","aehplus","a","ae","aeh","aehplus","a","aeh","aehplus","a","ae","aeh","aehplus","a","ae","aeh","aehplus","a","aeh","aehplus","a","ae","aeh","aehplus","a","ae","aeh","aehplus","a","ae","aeh","aehplus","a","ae","aeh","aehplus","a","ae","aeh","aehplus","a","ae","aeh","aehplus","a","ae","aeh","a","ae","aeh","aehplus","a","aeh","aehplus","a","aeh","aehplus","aehplus","aehplus","aehplus","aehplus","aehplus","aehplus","aehplus","aehplus","aehplus","a","aeh","aehplus","a","aeh","aehplus","a","aeh","aehplus","a","aeh","aehplus","a","aeh","aehplus","a","aeh","aehplus","a","aeh","aehplus","a","aeh","aehplus","a","aeh","a","aeh","a","aeh","aehplus","a","aeh","aehplus","a","aeh","a","aeh","a","aeh","aehplus","a","aeh","aehplus","a","aeh","a","aeh","a","aeh","aehplus","a","aeh","aehplus","a","aeh","a","aeh","a","aeh","aehplus","a","aeh","aehplus","a","aeh","aehplus","a","aeh","aehplus","a","aeh","aehplus","a","aeh","aehplus","a","aeh","a","aeh","a","aeh","a","aeh","a","aeh","a","aeh","a","aeh","a","aeh","a","aeh","aehplus","a","aeh","aehplus","a","aeh","a","aeh","a","aeh","aehplus","a","aeh","aehplus","a","aeh","a","aeh","0","a","ae","aeh","aehplus","0","a","ae","aeh","aehplus","0","a","ae","aeh","aehplus","0","a","ae","aeh","aehplus","0","a","ae","aeh","aehplus","aehplus","0","a","ae","aeh","aehplus","aehplus","0","a","ae","aeh","aehplus","aehplus","0","a","ae","aeh","aehplus","aehplus","a","ae","aeh","a","ae","aeh","0","a","ae","aeh","aehplus","0","a","ae","aeh","aehplus","0","a","ae","aeh","aehplus","0","a","ae","aeh","aehplus","0","a","ae","aeh","aehplus","0","a","ae","aeh","aehplus","0","a","ae","aeh","aehplus","0","a","ae","aeh","aehplus","0","a","ae","aeh","aehplus","0","a","ae","aeh","aehplus","0","a","ae","aeh","aehplus","0","a","ae","aeh","aehplus","a","ae","aeh","aehplus","a","ae","aeh","aehplus","aehplus","aehplus","aehplus","aehplus","aehplus","aehplus","a","ae","aeh","a","ae","aeh","a","ae","aeh","aehplus","a","ae","aeh","aehplus","a","ae","aeh","aehplus","a","ae","aeh","aehplus","a","ae","aeh","aehplus","a","ae","aeh","aehplus","a","ae","aeh","aehplus","a","ae","aeh","aehplus"],["563","563","150","150","150","350","350","72","72","72","594","594","150","150","150","376","376","72","72","72","593","593","150","150","150","376","376","72","72","72","595","595","150","150","150","379","379","72","72","72","572","572","150","150","150","358","358","72","72","72","524","524","130","130","130","352","352","70","70","70","554","554","150","150","150","350","350","72","72","72","383","383","72","72","72","383","383","72","72","72","592","592","150","150","150","377","377","72","72","72","580","580","150","150","150","368","368","72","72","72","594","594","150","150","150","377","377","72","72","72","563","563","150","150","150","350","350","72","72","72","594","594","150","150","150","376","376","72","72","72","593","593","150","150","150","376","376","72","72","72","595","595","150","150","150","379","379","72","72","72","571","571","150","150","150","358","358","72","72","72","538","538","145","145","145","353","353","72","72","72","554","554","150","150","150","349","349","72","72","600","600","150","150","150","383","383","72","72","72","592","592","150","150","150","377","377","72","72","72","580","580","150","150","150","368","368","72","72","72","594","594","150","150","150","377","377","72","72","72","563","150","150","150","350","72","72","595","595","150","150","379","379","72","72","72","358","592","592","150","150","150","377","377","72","72","72","580","580","150","150","150","368","72","72","72","3,511","3,091","3,511","3,091","3,511","3,091","3,511","3,091","3,510","3,090","3,510","3,090","3,510","3,088","3,511","3,091","3,511","3,091","370","370","370","318","318","318","370","370","370","318","318","318","370","370","370","318","318","318","370","370","370","318","318","318","641","641","641","507","507","507","641","641","641","507","507","507","641","641","641","507","507","507","641","641","641","507","507","507","715","715","715","535","535","535","715","715","715","535","535","535","715","715","715","535","535","535","715","715","715","535","535","535","225","252","225","252","225","252","225","252","228","226","225","253","253","252","228","226","225","253","253","228","226","225","253","253","252","228","226","225","253","253","252","228","226","225","253","253","252","782","800","782","800","782","800","782","800","782","800","782","800","782","800","782","800","782","800","1,010","1,010","1,010","1,010","351","351","351","351","1,010","1,010","1,010","1,010","351","351","351","351","1,010","1,010","1,010","1,010","351","351","351","351","1,010","1,010","1,010","1,010","351","351","351","351","1,010","1,010","1,010","1,010","351","351","351","351","1,010","1,010","1,010","1,010","351","351","351","351","1,010","1,010","1,010","1,010","351","351","351","351","1,010","1,010","1,010","1,010","351","351","351","351","1,010","1,010","951","1,010","351","351","327","351","1,010","1,010","1,010","1,010","351","351","351","351","1,010","1,010","1,010","351","351","351","351","1,010","1,010","1,010","1,010","351","351","351","351","1,010","1,010","1,010","1,010","351","351","351","1,010","1,010","1,010","1,010","351","351","351","351","1,010","1,010","1,010","1,010","351","351","351","351","1,010","1,010","1,010","1,010","351","351","351","351","1,010","1,010","1,010","1,010","351","351","351","351","1,010","1,010","1,010","1,010","351","351","351","351","1,010","1,010","1,010","1,010","351","351","351","351","1,010","1,010","1,010","351","351","351","351","1,010","1,010","1,010","1,010","351","351","351","351","1,010","1,010","1,010","1,010","351","351","351","351","1,010","1,010","1,010","1,010","351","351","351","351","1,010","1,010","1,010","1,010","351","351","351","351","1,010","1,010","1,010","1,010","351","351","351","351","1,010","1,010","1,010","1,010","351","351","351","351","1,010","1,010","1,010","1,010","351","351","351","351","1,010","1,010","1,010","1,010","351","351","351","351","1,010","1,010","1,010","1,010","351","351","351","351","1,010","1,010","1,010","1,010","351","351","351","351","1,010","1,010","1,010","1,010","351","351","351","351","1,010","1,010","1,010","1,010","351","351","351","351","1,010","1,010","1,010","351","351","351","351","1,010","1,010","1,010","1,010","351","351","351","1,010","1,010","1,010","1,010","351","351","351","351","1,010","1,010","1,010","1,010","351","351","351","351","1,010","1,010","1,010","1,010","351","351","351","351","1,010","1,010","1,010","351","351","351","351","939","934","934","851","847","847","272","137","275","139","275","139","268","265","134","303","275","274","158","139","139","305","276","275","161","139","139","306","276","275","161","139","139","302","274","273","157","138","138","305","275","162","140","303","273","272","159","139","139","311","276","164","140","302","273","272","161","139","139","298","271","156","138","299","272","271","156","138","138","301","273","157","139","293","272","271","151","136","136","299","276","275","158","138","138","300","276","275","158","138","138","284","268","146","133","301","275","156","138","293","271","153","137","311","276","164","140","289","268","267","153","136","136","268","254","135","127","278","264","263","142","133","133","280","265","142","132","512","507","485","476","408","347","347","341","338","300","512","512","490","477","408","347","347","341","338","299","512","512","490","478","409","410","347","347","341","338","299","300","512","512","490","478","409","410","347","347","341","338","299","300","509","487","478","347","341","338","512","512","490","478","410","347","347","341","337","299","512","512","490","479","411","347","347","341","338","300","512","511","489","480","412","347","346","341","338","300","512","512","490","476","408","347","347","341","337","299","512","508","486","477","408","347","347","341","338","299","512","509","487","478","410","347","347","341","338","300","508","486","477","410","347","341","338","300","409","298","409","299","409","299","508","486","477","347","341","338","510","488","479","411","347","341","338","300","511","489","480","412","347","341","338","300","508","486","477","409","347","341","338","299","508","486","477","410","347","341","338","300"],["106.3( 2.8),p&lt;.01","101.2( 5.0),p&lt;.01","105.9( 7.9),p&lt;.01","110.4( 7.9),p&lt;.01","118.6( 8.0),p&lt;.01","107.8( 3.2),p&lt;.01","107.6( 5.3),p&lt;.01","102.9( 9.9),p&lt;.01","107.0(12.9),p&lt;.01","107.7(16.0),p&lt;.01","106.4( 2.9),p&lt;.01","101.7( 5.0),p&lt;.01","106.3( 8.2),p&lt;.01","111.4( 8.2),p&lt;.01","119.7( 8.3),p&lt;.01","109.1( 3.3),p&lt;.01","108.5( 5.6),p&lt;.01","101.9(11.4),p&lt;.01","105.4(17.0),p&lt;.01","106.6(18.9),p&lt;.01","106.7( 2.9),p&lt;.01","102.1( 4.9),p&lt;.01","106.2( 7.8),p&lt;.01","110.6( 8.0),p&lt;.01","118.9( 8.0),p&lt;.01","109.2( 3.4),p&lt;.01","106.6( 5.9),p&lt;.01","101.8(10.9),p&lt;.01","105.8(14.5),p&lt;.01","107.7(19.0),p&lt;.01","105.7( 2.9),p&lt;.01","100.5( 4.9),p&lt;.01","105.6( 7.9),p&lt;.01","109.9( 7.9),p&lt;.01","118.2( 7.9),p&lt;.01","108.6( 3.3),p&lt;.01","105.0( 5.4),p&lt;.01","101.5(10.7),p&lt;.01","105.9(13.2),p&lt;.01","107.4(18.6),p&lt;.01","105.2( 2.9),p&lt;.01","101.0( 4.9),p&lt;.01","105.7( 7.9),p&lt;.01","109.6( 8.3),p&lt;.01","117.8( 8.5),p&lt;.01","108.4( 3.2),p&lt;.01","107.1( 5.2),p&lt;.01","102.3(10.3),p&lt;.01","107.0(13.9),p&lt;.01","107.9(17.9),p&lt;.01","106.0( 3.0),p&lt;.01","102.0( 5.1),p&lt;.01","105.8( 8.5),p&lt;.01","109.8( 8.6),p&lt;.01","118.0( 8.6),p&lt;.01","109.3( 3.3),p&lt;.01","105.9( 5.7),p&lt;.01","100.7(10.6),p&lt;.01","104.2(15.2),p&lt;.01","105.8(19.4),p&lt;.01","106.1( 2.9),p&lt;.01","101.4( 5.0),p&lt;.01","106.1( 8.8),p&lt;.01","110.3( 8.7),p&lt;.01","118.5( 9.0),p&lt;.01","109.2( 3.4),p&lt;.01","105.8( 5.8),p&lt;.01","102.8(10.1),p&lt;.01","106.5(13.1),p&lt;.01","107.9(16.4),p&lt;.01","107.7( 3.4),p&lt;.01","107.7( 5.6),p&lt;.01","101.6(11.3),p&lt;.01","105.7(13.0),p&lt;.01","107.3(14.3),p&lt;.01","107.7( 3.4),p&lt;.01","107.7( 5.6),p&lt;.01","101.6(11.3),p&lt;.01","105.7(13.0),p&lt;.01","107.3(14.3),p&lt;.01","105.4( 2.8),p&lt;.01","100.4( 4.7),p&lt;.01","105.2( 7.9),p&lt;.01","109.4( 8.4),p&lt;.01","117.6( 8.2),p&lt;.01","106.9( 3.2),p&lt;.01","108.3( 5.4),p&lt;.01","102.2(10.5),p&lt;.01","106.3(13.4),p&lt;.01","108.1(22.4),p&lt;.01","106.2( 2.9),p&lt;.01","101.6( 5.2),p&lt;.01","105.5( 8.3),p&lt;.01","110.0( 8.3),p&lt;.01","118.0( 7.9),p&lt;.01","107.4( 3.3),p&lt;.01","107.6( 5.7),p&lt;.01","102.3(11.0),p&lt;.01","107.0(17.0),p&lt;.01","108.4(18.8),p&lt;.01","106.2( 2.9),p&lt;.01","101.1( 5.0),p&lt;.01","105.7( 8.2),p&lt;.01","109.8( 8.4),p&lt;.01","118.0( 8.6),p&lt;.01","108.7( 3.5),p&lt;.01","106.0( 5.8),p&lt;.01","102.4(10.4),p&lt;.01","106.4(15.4),p&lt;.01","107.2(18.9),p&lt;.01"," 18.4( 1.0),p&lt;.01"," 18.7( 1.3),p&lt;.01"," 18.4( 1.6),p&lt;.01"," 18.5( 1.7),p&lt;.01"," 18.4( 1.8),p&lt;.01"," 34.9( 1.7),p&lt;.01"," 36.3( 2.9),p&lt;.01"," 35.7( 3.6),p&lt;.01"," 36.2( 5.1),p&lt;.01"," 37.9( 5.5),p&lt;.01"," 18.6( 0.9),p&lt;.01"," 18.8( 1.3),p&lt;.01"," 18.3( 1.6),p&lt;.01"," 18.6( 1.8),p&lt;.01"," 18.4( 1.9),p&lt;.01"," 34.9( 1.9),p&lt;.01"," 36.4( 2.7),p&lt;.01"," 35.7( 3.4),p&lt;.01"," 36.5( 5.6),p&lt;.01"," 38.1( 6.4),p&lt;.01"," 18.6( 1.0),p&lt;.01"," 19.0( 1.3),p&lt;.01"," 18.5( 1.5),p&lt;.01"," 18.7( 1.6),p&lt;.01"," 18.5( 1.7),p&lt;.01"," 35.1( 1.9),p&lt;.01"," 37.1( 2.8),p&lt;.01"," 35.8( 4.0),p&lt;.01"," 36.5( 6.0),p&lt;.01"," 38.2( 7.3),p&lt;.01"," 18.9( 1.0),p&lt;.01"," 19.3( 1.3),p&lt;.01"," 18.4( 1.4),p&lt;.01"," 18.6( 1.6),p&lt;.01"," 18.4( 1.8),p&lt;.01"," 34.8( 1.6),p&lt;.01"," 37.6( 2.5),p&lt;.01"," 35.7( 3.3),p&lt;.01"," 36.4( 5.2),p&lt;.01"," 38.1( 6.0),p&lt;.01"," 18.5( 1.0),p&lt;.01"," 18.7( 1.4),p&lt;.01"," 18.4( 1.5),p&lt;.01"," 18.6( 1.7),p&lt;.01"," 18.4( 1.8),p&lt;.01"," 34.9( 1.9),p&lt;.01"," 37.6( 2.8),p&lt;.01"," 35.8( 3.6),p&lt;.01"," 36.4( 5.0),p&lt;.01"," 37.8( 5.5),p&lt;.01"," 18.1( 1.0),p&lt;.01"," 18.4( 1.4),p&lt;.01"," 18.3( 1.5),p&lt;.01"," 18.5( 1.6),p&lt;.01"," 18.4( 1.7),p&lt;.01"," 33.5( 1.7),p&lt;.01"," 36.6( 3.0),p&lt;.01"," 35.7( 3.2),p&lt;.01"," 36.2( 5.5),p&lt;.01"," 37.9( 5.9),p&lt;.01"," 18.7( 1.0),p&lt;.01"," 18.9( 1.3),p&lt;.01"," 18.4( 1.5),p&lt;.01"," 18.6( 1.6),p&lt;.01"," 18.4( 1.7),p&lt;.01"," 35.1( 1.6),p&lt;.01"," 37.3( 2.6),p&lt;.01"," 36.5( 5.6),p&lt;.01"," 38.3( 6.0),p&lt;.01"," 18.5( 1.0),p&lt;.01"," 19.5( 1.3),p&lt;.01"," 18.4( 1.5),p&lt;.01"," 18.5( 1.6),p&lt;.01"," 18.4( 1.7),p&lt;.01"," 34.9( 1.9),p&lt;.01"," 36.1( 2.8),p&lt;.01"," 35.7( 3.5),p&lt;.01"," 36.6( 5.3),p&lt;.01"," 37.7( 6.2),p&lt;.01"," 18.4( 0.9),p&lt;.01"," 18.5( 1.3),p&lt;.01"," 18.5( 1.6),p&lt;.01"," 18.8( 1.7),p&lt;.01"," 18.6( 1.8),p&lt;.01"," 34.6( 1.8),p&lt;.01"," 37.6( 2.7),p&lt;.01"," 35.6( 3.3),p&lt;.01"," 36.3( 4.6),p&lt;.01"," 37.6( 5.1),p&lt;.01"," 18.7( 0.9),p&lt;.01"," 18.9( 1.3),p&lt;.01"," 18.5( 1.5),p&lt;.01"," 18.7( 1.7),p&lt;.01"," 18.6( 1.8),p&lt;.01"," 35.2( 1.7),p&lt;.01"," 37.6( 2.7),p&lt;.01"," 35.9( 3.7),p&lt;.01"," 36.4( 5.6),p&lt;.01"," 38.7( 5.8),p&lt;.01"," 18.7( 1.0),p&lt;.01"," 19.0( 1.3),p&lt;.01"," 18.3( 1.5),p&lt;.01"," 18.4( 1.8),p&lt;.01"," 18.2( 1.9),p&lt;.01"," 35.2( 1.6),p&lt;.01"," 38.4( 2.7),p&lt;.01"," 35.7( 3.2),p&lt;.01"," 36.2( 5.5),p&lt;.01"," 37.7( 6.0),p&lt;.01","310.4(17.4),p&lt;.01","333.1(17.9),p&lt;.01","345.3(25.9),p&lt;.01","339.1(26.7),p&lt;.01","468.3(40.5),p&lt;.01","412.9(49.4),p&lt;.01","454.5(91.2),p&lt;.01","317.5(14.4),p&lt;.01","312.3(21.0),p&lt;.01","335.3(24.6),p&lt;.01","347.9(25.1),p&lt;.01","454.8(29.6),p&lt;.01","436.6(46.2),p&lt;.01","412.1(66.6),p&lt;.01","454.8(89.9),p&lt;.01","477.2(153.2),p&lt;.01","455.1(30.1),p&lt;.01","311.4(13.1),p&lt;.01","293.5(20.7),p&lt;.01","327.9(24.3),p&lt;.01","338.9(25.8),p&lt;.01","333.2(26.6),p&lt;.01","449.9(33.3),p&lt;.01","439.8(55.8),p&lt;.01","407.4(64.3),p&lt;.01","442.7(90.7),p&lt;.01","464.5(143.1),p&lt;.01","319.6(13.0),p&lt;.01","313.5(20.6),p&lt;.01","332.2(25.6),p&lt;.01","344.5(26.0),p&lt;.01","338.5(26.9),p&lt;.01","449.5(48.7),p&lt;.01","413.6(61.7),p&lt;.01","445.4(93.9),p&lt;.01","467.8(151.5),p&lt;.01","  1.9( 0.0),p&lt;.01","  2.6( 0.0),p&lt;.01","  1.9( 0.0),p&lt;.01","  2.6( 0.0),p&lt;.01","188.5( 1.7),p&lt;.01","262.6( 3.2),p&lt;.01","188.5( 1.7),p&lt;.01","262.6( 3.2),p&lt;.01","  0.8( 0.0),p&lt;.01","  0.9( 0.0),p&lt;.01","  0.8( 0.0),p&lt;.01","  0.9( 0.0),p&lt;.01","  0.8( 0.0),p&lt;.01","  0.9( 0.0),p&lt;.01"," 20.3( 0.2),p&lt;.01"," 34.3( 0.3),p&lt;.01"," 20.3( 0.2),p&lt;.01"," 34.3( 0.3),p&lt;.01","  0.8( 0.0),p&lt;.01","  0.8( 0.0),p&lt;.01","  0.8( 0.0),p&lt;.01","  0.9( 0.0),p&lt;.01","  0.8( 0.0),p&lt;.01","  0.9( 0.0),p&lt;.01","  0.8( 0.0),p&lt;.01","  0.8( 0.0),p&lt;.01","  0.8( 0.0),p&lt;.01","  0.9( 0.0),p&lt;.01","  0.8( 0.0),p&lt;.01","  0.9( 0.0),p&lt;.01","  0.8( 0.0),p&lt;.01","  0.8( 0.0),p&lt;.01","  0.8( 0.0),p&lt;.01","  0.9( 0.0),p&lt;.01","  0.8( 0.0),p&lt;.01","  0.9( 0.0),p&lt;.01","  0.8( 0.0),p&lt;.01","  0.8( 0.0),p&lt;.01","  0.8( 0.0),p&lt;.01","  0.9( 0.0),p&lt;.01","  0.8( 0.0),p&lt;.01","  0.9( 0.0),p&lt;.01"," 24.2( 0.5),p&lt;.01"," 22.6( 0.9),p&lt;.01"," 23.6( 0.9),p&lt;.01"," 39.4( 0.5),p&lt;.01"," 35.2( 1.3),p&lt;.01"," 35.3( 1.1),p&lt;.01"," 24.1( 0.5),p&lt;.01"," 22.6( 0.9),p&lt;.01"," 23.7( 0.9),p&lt;.01"," 39.4( 0.6),p&lt;.01"," 35.2( 1.3),p&lt;.01"," 35.3( 1.1),p&lt;.01"," 24.1( 0.5),p&lt;.01"," 22.6( 0.9),p&lt;.01"," 23.6( 0.9),p&lt;.01"," 39.4( 0.6),p&lt;.01"," 35.2( 1.3),p&lt;.01"," 35.2( 1.1),p&lt;.01"," 24.1( 0.5),p&lt;.01"," 22.6( 0.9),p&lt;.01"," 23.6( 0.9),p&lt;.01"," 39.4( 0.6),p&lt;.01"," 35.2( 1.3),p&lt;.01"," 35.2( 1.1),p&lt;.01","274.9( 2.7),p&lt;.01","248.5( 5.6),p&lt;.01","256.8( 6.2),p&lt;.01","405.2( 5.0),p&lt;.01","320.4(13.7),p&lt;.01","339.4(14.5),p&lt;.01","274.8( 2.7),p&lt;.01","248.5( 5.6),p&lt;.01","257.0( 6.2),p&lt;.01","405.1( 5.0),p&lt;.01","320.5(13.8),p&lt;.01","339.4(14.5),p&lt;.01","274.8( 2.8),p&lt;.01","248.5( 5.6),p&lt;.01","256.7( 6.2),p&lt;.01","405.2( 5.0),p&lt;.01","320.4(13.8),p&lt;.01","339.2(14.5),p&lt;.01","274.8( 2.8),p&lt;.01","248.5( 5.6),p&lt;.01","256.7( 6.2),p&lt;.01","405.2( 5.0),p&lt;.01","320.4(13.7),p&lt;.01","339.3(14.5),p&lt;.01"," 88.6(13.4),p&lt;.01"," 95.0(12.8),p&lt;.01"," 87.4(13.9),p&lt;.01"," 94.7(12.5),p&lt;.01"," 87.5(13.5),p&lt;.01"," 94.6(12.7),p&lt;.01"," 87.8(14.2),p&lt;.01"," 94.6(13.2),p&lt;.01","  5.4( 1.2),p&lt;.01","  4.9( 1.5),p&lt;.01","  4.8( 1.6),p&lt;.01","  5.3( 1.0),p&lt;.01","  5.0( 1.0),p&lt;.01","  4.7( 1.1),p&lt;.01","  5.3( 1.3),p&lt;.01","  4.9( 1.6),p&lt;.01","  4.8( 1.6),p&lt;.01","  5.4( 1.0),p&lt;.01","  5.1( 1.1),p&lt;.01","  5.4( 1.2),p&lt;.01","  4.9( 1.5),p&lt;.01","  4.8( 1.6),p&lt;.01","  5.4( 1.0),p&lt;.01","  5.1( 1.1),p&lt;.01","  4.8( 1.1),p&lt;.01","  5.5( 1.2),p&lt;.01","  5.0( 1.4),p&lt;.01","  4.9( 1.5),p&lt;.01","  5.4( 0.9),p&lt;.01","  5.2( 1.0),p&lt;.01","  4.9( 1.1),p&lt;.01","  5.5( 1.2),p&lt;.01","  4.9( 1.5),p&lt;.01","  4.8( 1.5),p&lt;.01","  5.4( 0.9),p&lt;.01","  5.2( 1.1),p&lt;.01","  4.9( 1.1),p&lt;.01","  7.8( 0.2),p&lt;.01","  7.2( 0.1),p&lt;.01","  7.8( 0.2),p&lt;.01","  7.2( 0.1),p&lt;.01","  7.8( 0.2),p&lt;.01","  7.2( 0.1),p&lt;.01"," 19.4( 0.3),p&lt;.01"," 34.0( 0.5),p&lt;.01"," 19.4( 0.3),p&lt;.01"," 34.0( 0.5),p&lt;.01"," 19.4( 0.3),p&lt;.01"," 34.0( 0.5),p&lt;.01","352.1( 4.5),p&lt;.01","468.6( 6.5),p&lt;.01","352.1( 4.5),p&lt;.01","468.3( 6.5),p&lt;.01","352.0( 4.5),p&lt;.01","468.4( 6.5),p&lt;.01","  1.7( 0.0),p&lt;.01","  1.6( 0.0),p&lt;.01","  1.6( 0.0),p&lt;.01","  1.7( 0.0),p&lt;.01","  2.4( 0.1),p&lt;.01","  2.1( 0.1),p&lt;.01","  2.1( 0.1),p&lt;.01","  2.4( 0.1),p&lt;.01","  1.7( 0.0),p&lt;.01","  1.6( 0.0),p&lt;.01","  1.6( 0.0),p&lt;.01","  1.7( 0.0),p&lt;.01","  2.4( 0.1),p&lt;.01","  2.1( 0.1),p&lt;.01","  2.1( 0.1),p&lt;.01","  2.4( 0.1),p&lt;.01","  1.7( 0.0),p&lt;.01","  1.6( 0.0),p&lt;.01","  1.6( 0.0),p&lt;.01","  1.7( 0.0),p&lt;.01","  2.4( 0.1),p&lt;.01","  2.1( 0.1),p&lt;.01","  2.1( 0.1),p&lt;.01","  2.4( 0.1),p&lt;.01","  1.7( 0.0),p&lt;.01","  1.6( 0.0),p&lt;.01","  1.6( 0.0),p&lt;.01","  1.7( 0.0),p&lt;.01","  2.4( 0.1),p&lt;.01","  2.1( 0.1),p&lt;.01","  2.1( 0.1),p&lt;.01","  2.4( 0.1),p&lt;.01","  1.7( 0.0),p&lt;.01","  1.6( 0.0),p&lt;.01","  1.6( 0.0),p&lt;.01","  1.7( 0.0),p&lt;.01","  2.4( 0.1),p&lt;.01","  2.1( 0.1),p&lt;.01","  2.1( 0.1),p&lt;.01","  2.4( 0.1),p&lt;.01","  1.7( 0.0),p&lt;.01","  1.6( 0.0),p&lt;.01","  1.6( 0.0),p&lt;.01","  1.7( 0.0),p&lt;.01","  2.4( 0.1),p&lt;.01","  2.1( 0.1),p&lt;.01","  2.1( 0.1),p&lt;.01","  2.4( 0.1),p&lt;.01","  1.7( 0.0),p&lt;.01","  1.6( 0.0),p&lt;.01","  1.6( 0.0),p&lt;.01","  1.7( 0.0),p&lt;.01","  2.4( 0.1),p&lt;.01","  2.1( 0.1),p&lt;.01","  2.1( 0.1),p&lt;.01","  2.4( 0.1),p&lt;.01","  1.7( 0.0),p&lt;.01","  1.6( 0.0),p&lt;.01","  1.6( 0.0),p&lt;.01","  1.7( 0.0),p&lt;.01","  2.4( 0.1),p&lt;.01","  2.1( 0.1),p&lt;.01","  2.1( 0.1),p&lt;.01","  2.4( 0.1),p&lt;.01","  1.7( 0.0),p&lt;.01","  1.6( 0.0),p&lt;.01","  1.6( 0.0),p&lt;.01","  1.7( 0.0),p&lt;.01","  2.4( 0.1),p&lt;.01","  2.1( 0.1),p&lt;.01","  2.1( 0.1),p&lt;.01","  2.4( 0.1),p&lt;.01","  1.7( 0.0),p&lt;.01","  1.6( 0.0),p&lt;.01","  1.6( 0.0),p&lt;.01","  1.7( 0.0),p&lt;.01","  2.4( 0.1),p&lt;.01","  2.1( 0.1),p&lt;.01","  2.1( 0.1),p&lt;.01","  2.4( 0.1),p&lt;.01","  1.6( 0.0),p&lt;.01","  1.6( 0.0),p&lt;.01","  1.7( 0.0),p&lt;.01","  2.4( 0.1),p&lt;.01","  2.1( 0.1),p&lt;.01","  2.1( 0.1),p&lt;.01","  2.4( 0.1),p&lt;.01","  1.7( 0.0),p&lt;.01","  1.6( 0.0),p&lt;.01","  1.6( 0.0),p&lt;.01","  1.7( 0.0),p&lt;.01","  2.4( 0.1),p&lt;.01","  2.1( 0.1),p&lt;.01","  2.1( 0.1),p&lt;.01","  2.4( 0.1),p&lt;.01","  1.7( 0.0),p&lt;.01","  1.6( 0.0),p&lt;.01","  1.6( 0.0),p&lt;.01","  1.7( 0.0),p&lt;.01","  2.1( 0.1),p&lt;.01","  2.1( 0.1),p&lt;.01","  2.4( 0.1),p&lt;.01","  1.7( 0.0),p&lt;.01","  1.6( 0.0),p&lt;.01","  1.6( 0.0),p&lt;.01","  1.7( 0.0),p&lt;.01","  2.4( 0.1),p&lt;.01","  2.1( 0.1),p&lt;.01","  2.1( 0.1),p&lt;.01","  2.4( 0.1),p&lt;.01","  1.7( 0.0),p&lt;.01","  1.6( 0.0),p&lt;.01","  1.6( 0.0),p&lt;.01","  1.7( 0.0),p&lt;.01","  2.4( 0.1),p&lt;.01","  2.1( 0.1),p&lt;.01","  2.1( 0.1),p&lt;.01","  2.4( 0.1),p&lt;.01","  1.7( 0.0),p&lt;.01","  1.6( 0.0),p&lt;.01","  1.6( 0.0),p&lt;.01","  1.7( 0.0),p&lt;.01","  2.4( 0.1),p&lt;.01","  2.1( 0.1),p&lt;.01","  2.1( 0.1),p&lt;.01","  2.4( 0.1),p&lt;.01","  1.7( 0.0),p&lt;.01","  1.6( 0.0),p&lt;.01","  1.6( 0.0),p&lt;.01","  1.7( 0.0),p&lt;.01","  2.4( 0.1),p&lt;.01","  2.1( 0.1),p&lt;.01","  2.1( 0.1),p&lt;.01","  2.4( 0.1),p&lt;.01","  1.7( 0.0),p&lt;.01","  1.6( 0.0),p&lt;.01","  1.6( 0.0),p&lt;.01","  1.7( 0.0),p&lt;.01","  2.4( 0.1),p&lt;.01","  2.1( 0.1),p&lt;.01","  2.1( 0.1),p&lt;.01","  2.4( 0.1),p&lt;.01","  1.7( 0.0),p&lt;.01","  1.6( 0.0),p&lt;.01","  1.6( 0.0),p&lt;.01","  1.7( 0.0),p&lt;.01","  2.4( 0.1),p&lt;.01","  2.1( 0.1),p&lt;.01","  2.1( 0.1),p&lt;.01","  2.4( 0.1),p&lt;.01"," 47.3( 0.6),p&lt;.01"," 43.9( 1.1),p&lt;.01"," 43.7( 1.3),p&lt;.01"," 80.4( 1.8),p&lt;.01"," 75.0( 3.0),p&lt;.01"," 76.3( 2.7),p&lt;.01"," 79.7( 3.0),p&lt;.01"," 47.3( 0.6),p&lt;.01"," 43.4( 1.2),p&lt;.01"," 43.9( 1.1),p&lt;.01"," 43.7( 1.3),p&lt;.01"," 80.4( 1.8),p&lt;.01"," 74.8( 3.0),p&lt;.01"," 76.1( 2.7),p&lt;.01"," 79.5( 3.1),p&lt;.01","  1.7( 0.0),p&lt;.01","  1.6( 0.0),p&lt;.01","  1.6( 0.0),p&lt;.01","  1.7( 0.0),p&lt;.01","  2.4( 0.1),p&lt;.01","  2.1( 0.1),p&lt;.01"," 76.1( 2.7),p&lt;.01"," 79.5( 3.1),p&lt;.01"," 47.3( 0.6),p&lt;.01"," 43.4( 1.2),p&lt;.01"," 43.9( 1.1),p&lt;.01"," 43.7( 1.3),p&lt;.01"," 80.3( 1.8),p&lt;.01"," 74.8( 3.0),p&lt;.01"," 76.1( 2.7),p&lt;.01"," 79.5( 3.0),p&lt;.01","  1.7( 0.0),p&lt;.01","  1.6( 0.0),p&lt;.01","  1.6( 0.0),p&lt;.01","  1.7( 0.0),p&lt;.01","  2.4( 0.1),p&lt;.01","  2.1( 0.1),p&lt;.01"," 76.1( 2.7),p&lt;.01"," 79.6( 3.0),p&lt;.01"," 47.3( 0.6),p&lt;.01"," 43.4( 1.2),p&lt;.01"," 43.9( 1.1),p&lt;.01"," 43.7( 1.3),p&lt;.01"," 80.4( 1.8),p&lt;.01"," 74.9( 3.0),p&lt;.01"," 76.2( 2.7),p&lt;.01"," 79.6( 3.0),p&lt;.01"," 47.3( 0.6),p&lt;.01"," 43.4( 1.2),p&lt;.01"," 43.9( 1.1),p&lt;.01"," 43.7( 1.3),p&lt;.01"," 80.3( 1.8),p&lt;.01"," 74.8( 3.0),p&lt;.01"," 76.1( 2.7),p&lt;.01"," 79.6( 3.0),p&lt;.01"," 47.3( 0.6),p&lt;.01"," 43.4( 1.2),p&lt;.01"," 43.9( 1.1),p&lt;.01"," 43.7( 1.3),p&lt;.01"," 80.4( 1.8),p&lt;.01"," 74.8( 3.0),p&lt;.01"," 76.2( 2.7),p&lt;.01"," 79.4( 3.0),p&lt;.01"," 47.3( 0.6),p&lt;.01"," 43.4( 1.2),p&lt;.01"," 43.9( 1.1),p&lt;.01"," 43.7( 1.3),p&lt;.01"," 80.4( 1.8),p&lt;.01"," 74.8( 3.0),p&lt;.01"," 76.2( 2.7),p&lt;.01"," 79.7( 3.0),p&lt;.01"," 47.3( 0.6),p&lt;.01"," 43.4( 1.2),p&lt;.01"," 43.9( 1.1),p&lt;.01"," 43.7( 1.3),p&lt;.01"," 80.4( 1.8),p&lt;.01"," 74.9( 3.0),p&lt;.01"," 76.2( 2.7),p&lt;.01"," 79.5( 3.0),p&lt;.01"," 47.3( 0.6),p&lt;.01"," 43.4( 1.2),p&lt;.01"," 43.9( 1.1),p&lt;.01"," 43.7( 1.3),p&lt;.01"," 80.4( 1.8),p&lt;.01"," 74.9( 3.0),p&lt;.01"," 76.2( 2.7),p&lt;.01"," 79.5( 3.0),p&lt;.01"," 47.3( 0.6),p&lt;.01"," 43.4( 1.2),p&lt;.01"," 43.9( 1.1),p&lt;.01"," 43.7( 1.3),p&lt;.01"," 80.4( 1.8),p&lt;.01"," 74.9( 3.0),p&lt;.01"," 76.2( 2.7),p&lt;.01"," 79.6( 3.0),p&lt;.01"," 47.3( 0.6),p&lt;.01"," 43.4( 1.2),p&lt;.01"," 43.9( 1.1),p&lt;.01"," 43.7( 1.3),p&lt;.01"," 80.3( 1.8),p&lt;.01"," 74.7( 3.0),p&lt;.01"," 76.0( 2.7),p&lt;.01"," 79.3( 3.0),p&lt;.01"," 47.3( 0.6),p&lt;.01"," 43.9( 1.1),p&lt;.01"," 43.7( 1.3),p&lt;.01"," 80.3( 1.8),p&lt;.01"," 74.8( 3.0),p&lt;.01"," 76.1( 2.7),p&lt;.01"," 79.5( 3.1),p&lt;.01"," 47.3( 0.6),p&lt;.01"," 43.4( 1.2),p&lt;.01"," 43.9( 1.1),p&lt;.01"," 43.7( 1.3),p&lt;.01"," 80.3( 1.8),p&lt;.01"," 76.1( 2.7),p&lt;.01"," 79.5( 3.1),p&lt;.01"," 47.3( 0.6),p&lt;.01"," 43.3( 1.2),p&lt;.01"," 43.9( 1.1),p&lt;.01"," 43.7( 1.3),p&lt;.01"," 80.3( 1.8),p&lt;.01"," 74.8( 3.0),p&lt;.01"," 76.2( 2.7),p&lt;.01"," 79.5( 3.1),p&lt;.01"," 47.3( 0.6),p&lt;.01"," 43.3( 1.2),p&lt;.01"," 43.9( 1.1),p&lt;.01"," 43.7( 1.3),p&lt;.01"," 80.4( 1.8),p&lt;.01"," 74.8( 3.0),p&lt;.01"," 76.2( 2.7),p&lt;.01"," 79.6( 3.1),p&lt;.01"," 47.2( 0.6),p&lt;.01"," 43.3( 1.2),p&lt;.01"," 43.9( 1.1),p&lt;.01"," 43.7( 1.3),p&lt;.01"," 80.3( 1.8),p&lt;.01"," 74.8( 3.0),p&lt;.01"," 76.1( 2.7),p&lt;.01"," 79.5( 3.0),p&lt;.01","  1.7( 0.0),p&lt;.01","  1.6( 0.0),p&lt;.01","  1.6( 0.0),p&lt;.01","  2.4( 0.1),p&lt;.01","  2.1( 0.1),p&lt;.01"," 76.2( 2.7),p&lt;.01"," 79.7( 3.1),p&lt;.01"," 61.0( 0.7),p&lt;.01"," 60.5( 1.0),p&lt;.01"," 60.6( 1.1),p&lt;.01"," 79.9( 0.8),p&lt;.01"," 81.1( 1.0),p&lt;.01"," 80.7( 1.4),p&lt;.01"," 10.3( 0.4),p&lt;.01","  9.2( 0.6),p&lt;.01"," 10.3( 0.4),p&lt;.01","  9.1( 0.6),p&lt;.01"," 10.3( 0.5),p&lt;.01","  9.0( 0.6),p&lt;.01"," 10.3( 0.5),p&lt;.01"," 10.3( 0.5),p&lt;.01","  9.2( 0.6),p&lt;.01","  8.8( 0.2),p&lt;.01","  9.0( 0.2),p&lt;.01","  9.2( 0.2),p&lt;.01"," 11.3( 0.4),p&lt;.01"," 11.8( 0.3),p&lt;.01"," 12.1( 0.4),p&lt;.01","  8.8( 0.2),p&lt;.01","  9.0( 0.2),p&lt;.01","  9.2( 0.2),p&lt;.01"," 11.3( 0.4),p&lt;.01"," 11.8( 0.3),p&lt;.01"," 12.1( 0.4),p&lt;.01","  8.8( 0.2),p&lt;.01","  9.0( 0.2),p&lt;.01","  9.2( 0.2),p&lt;.01"," 11.3( 0.4),p&lt;.01"," 11.8( 0.3),p&lt;.01"," 12.1( 0.4),p&lt;.01","  8.8( 0.2),p&lt;.01","  9.0( 0.2),p&lt;.01","  9.2( 0.2),p&lt;.01"," 11.2( 0.4),p&lt;.01"," 11.8( 0.3),p&lt;.01"," 12.1( 0.4),p&lt;.01","  8.8( 0.2),p&lt;.01","  9.0( 0.2),p&lt;.01"," 11.3( 0.4),p&lt;.01"," 11.8( 0.3),p&lt;.01","  8.8( 0.2),p&lt;.01","  9.0( 0.2),p&lt;.01","  9.2( 0.2),p&lt;.01"," 11.3( 0.4),p&lt;.01"," 11.8( 0.3),p&lt;.01"," 12.1( 0.4),p&lt;.01","  8.8( 0.2),p&lt;.01","  9.0( 0.2),p&lt;.01"," 11.4( 0.4),p&lt;.01"," 11.8( 0.3),p&lt;.01","  8.8( 0.2),p&lt;.01","  9.0( 0.2),p&lt;.01","  9.2( 0.2),p&lt;.01"," 11.3( 0.4),p&lt;.01"," 11.8( 0.3),p&lt;.01"," 11.4( 0.5),p&lt;.01","  8.8( 0.2),p&lt;.01","  9.0( 0.2),p&lt;.01"," 11.3( 0.4),p&lt;.01"," 11.8( 0.3),p&lt;.01","  8.8( 0.2),p&lt;.01","  9.0( 0.2),p&lt;.01","  9.2( 0.2),p&lt;.01"," 11.3( 0.4),p&lt;.01"," 11.8( 0.3),p&lt;.01"," 12.1( 0.4),p&lt;.01","  8.8( 0.2),p&lt;.01","  9.0( 0.2),p&lt;.01"," 11.3( 0.4),p&lt;.01"," 11.8( 0.3),p&lt;.01","312.1( 7.4),p&lt;.01","318.4( 7.8),p&lt;.01","328.2( 8.7),p&lt;.01","430.6(16.1),p&lt;.01","434.7(16.3),p&lt;.01","464.6(23.3),p&lt;.01","310.9( 7.5),p&lt;.01","317.6( 7.9),p&lt;.01","327.6( 8.8),p&lt;.01","432.0(16.1),p&lt;.01","435.2(16.3),p&lt;.01","466.6(23.6),p&lt;.01","311.4( 7.4),p&lt;.01","317.6( 7.8),p&lt;.01","327.4( 8.8),p&lt;.01","434.4(16.1),p&lt;.01","435.4(16.3),p&lt;.01","469.4(23.6),p&lt;.01","311.7( 7.4),p&lt;.01","318.2( 7.8),p&lt;.01","429.1(16.4),p&lt;.01","433.7(16.3),p&lt;.01","311.5( 7.3),p&lt;.01","317.5( 7.8),p&lt;.01","435.3(16.0),p&lt;.01","436.0(16.3),p&lt;.01","311.0( 7.4),p&lt;.01","317.7( 7.8),p&lt;.01","432.5(16.1),p&lt;.01","434.0(16.2),p&lt;.01","310.4( 7.6),p&lt;.01","318.0( 7.8),p&lt;.01","430.5(16.3),p&lt;.01","434.6(16.2),p&lt;.01","310.8( 7.4),p&lt;.01","317.4( 7.8),p&lt;.01","327.4( 8.8),p&lt;.01","432.5(16.1),p&lt;.01","434.5(16.3),p&lt;.01","465.6(23.6),p&lt;.01","309.7( 7.5),p&lt;.01","316.3( 7.8),p&lt;.01","427.7(16.2),p&lt;.01","428.9(16.3),p&lt;.01","310.8( 7.4),p&lt;.01","317.5( 7.8),p&lt;.01","327.7( 8.8),p&lt;.01","433.6(15.9),p&lt;.01","435.2(16.2),p&lt;.01","463.7(23.4),p&lt;.01","312.0( 7.3),p&lt;.01","317.8( 7.8),p&lt;.01","433.1(16.1),p&lt;.01","435.0(16.3),p&lt;.01","--,p=  ----","  1.8( 0.0),p&lt;.01","  1.8( 0.0),p&lt;.01","  1.8( 0.0),p&lt;.01","  1.8( 0.0),p&lt;.01","--,p=  ----","  2.5( 0.1),p&lt;.01","  2.5( 0.1),p&lt;.01","  2.4( 0.1),p&lt;.01","  2.6( 0.1),p&lt;.01","--,p=  ----","  1.8( 0.0),p&lt;.01","  1.8( 0.0),p&lt;.01","  1.8( 0.0),p&lt;.01","  1.8( 0.0),p&lt;.01","--,p=  ----","  2.5( 0.1),p&lt;.01","  2.5( 0.1),p&lt;.01","  2.4( 0.1),p&lt;.01","  2.5( 0.1),p&lt;.01","--,p=  ----","  1.8( 0.0),p&lt;.01","  1.8( 0.0),p&lt;.01","  1.8( 0.0),p&lt;.01","  1.8( 0.0),p&lt;.01","  1.8( 0.0),p&lt;.01","--,p=  ----","  2.5( 0.1),p&lt;.01","  2.5( 0.1),p&lt;.01","  2.4( 0.1),p&lt;.01","  2.6( 0.1),p&lt;.01","  2.6( 0.1),p&lt;.01","--,p=  ----","  1.8( 0.0),p&lt;.01","  1.8( 0.0),p&lt;.01","  1.8( 0.0),p&lt;.01","  1.8( 0.0),p&lt;.01","  1.8( 0.0),p&lt;.01","--,p=  ----","  2.5( 0.1),p&lt;.01","  2.5( 0.1),p&lt;.01","  2.4( 0.1),p&lt;.01","  2.5( 0.1),p&lt;.01","  2.6( 0.1),p&lt;.01","  1.8( 0.0),p&lt;.01","  1.8( 0.0),p&lt;.01","  1.8( 0.0),p&lt;.01","  2.5( 0.1),p&lt;.01","  2.5( 0.1),p&lt;.01","  2.4( 0.1),p&lt;.01","--,p=  ----","  1.8( 0.0),p&lt;.01","  1.8( 0.0),p&lt;.01","  1.8( 0.0),p&lt;.01","  1.8( 0.0),p&lt;.01","--,p=  ----","  2.5( 0.1),p&lt;.01","  2.5( 0.1),p&lt;.01","  2.4( 0.1),p&lt;.01","  2.6( 0.1),p&lt;.01","--,p=  ----","  1.8( 0.0),p&lt;.01","  1.8( 0.0),p&lt;.01","  1.8( 0.0),p&lt;.01","  1.8( 0.0),p&lt;.01","--,p=  ----","  2.5( 0.1),p&lt;.01","  2.5( 0.1),p&lt;.01","  2.4( 0.1),p&lt;.01","  2.5( 0.1),p&lt;.01","--,p=  ----","  1.8( 0.0),p&lt;.01","  1.8( 0.0),p&lt;.01","  1.8( 0.0),p&lt;.01","  1.8( 0.0),p&lt;.01","--,p=  ----","  2.5( 0.1),p&lt;.01","  2.5( 0.1),p&lt;.01","  2.4( 0.1),p&lt;.01","  2.5( 0.1),p&lt;.01","--,p=  ----","  1.8( 0.0),p&lt;.01","  1.8( 0.0),p&lt;.01","  1.8( 0.0),p&lt;.01","  1.8( 0.0),p&lt;.01","--,p=  ----","  2.5( 0.1),p&lt;.01","  2.5( 0.1),p&lt;.01","  2.4( 0.1),p&lt;.01","  2.6( 0.1),p&lt;.01","--,p=  ----","  1.8( 0.0),p&lt;.01","  1.8( 0.0),p&lt;.01","  1.8( 0.0),p&lt;.01","  1.8( 0.0),p&lt;.01","--,p=  ----","  2.5( 0.0),p&lt;.01","  2.5( 0.1),p&lt;.01","  2.4( 0.1),p&lt;.01","  2.5( 0.1),p&lt;.01","--,p=  ----","  1.8( 0.0),p&lt;.01","  1.8( 0.0),p&lt;.01","  1.7( 0.0),p&lt;.01","  1.8( 0.0),p&lt;.01","--,p=  ----","  2.5( 0.1),p&lt;.01","  2.5( 0.1),p&lt;.01","  2.4( 0.1),p&lt;.01","  2.6( 0.1),p&lt;.01"," 21.0( 0.3),p&lt;.01"," 20.8( 0.4),p&lt;.01"," 20.8( 0.4),p&lt;.01"," 21.5( 0.4),p&lt;.01"," 38.6( 0.9),p&lt;.01"," 38.6( 1.1),p&lt;.01"," 38.2( 1.0),p&lt;.01"," 37.7( 1.5),p&lt;.01"," 21.5( 0.5),p&lt;.01"," 36.9( 0.9),p&lt;.01"," 21.5( 0.5),p&lt;.01"," 36.9( 0.8),p&lt;.01"," 21.5( 0.4),p&lt;.01"," 36.8( 0.8),p&lt;.01"," 21.0( 0.3),p&lt;.01"," 20.9( 0.4),p&lt;.01"," 20.8( 0.4),p&lt;.01"," 38.6( 0.9),p&lt;.01"," 38.6( 1.1),p&lt;.01"," 38.2( 1.0),p&lt;.01"," 21.0( 0.3),p&lt;.01"," 20.9( 0.4),p&lt;.01"," 20.8( 0.4),p&lt;.01"," 21.5( 0.4),p&lt;.01"," 38.6( 0.9),p&lt;.01"," 38.5( 1.1),p&lt;.01"," 38.2( 1.1),p&lt;.01"," 37.7( 1.5),p&lt;.01"," 21.0( 0.3),p&lt;.01"," 20.8( 0.4),p&lt;.01"," 20.8( 0.4),p&lt;.01"," 21.5( 0.5),p&lt;.01"," 38.5( 1.0),p&lt;.01"," 38.4( 1.1),p&lt;.01"," 38.1( 1.1),p&lt;.01"," 37.6( 1.6),p&lt;.01"," 21.0( 0.3),p&lt;.01"," 20.8( 0.3),p&lt;.01"," 20.8( 0.3),p&lt;.01"," 21.5( 0.5),p&lt;.01"," 38.6( 0.9),p&lt;.01"," 38.6( 1.1),p&lt;.01"," 38.2( 1.0),p&lt;.01"," 36.8( 0.8),p&lt;.01"," 21.0( 0.3),p&lt;.01"," 20.9( 0.4),p&lt;.01"," 20.8( 0.4),p&lt;.01"," 21.5( 0.5),p&lt;.01"," 38.6( 0.9),p&lt;.01"," 38.5( 1.1),p&lt;.01"," 38.2( 1.1),p&lt;.01"," 37.7( 1.6),p&lt;.01"],[" -2.69( 0.52),p&lt;.01"," -3.54( 1.08),p&lt;.01"," -4.18( 2.32),p=.07"," -4.01( 2.39),p=.09"," -4.26( 2.29),p=.06"," -2.08( 0.73),p&lt;.01"," -2.04( 1.21),p=.09"," -0.48( 3.04),p=.88"," -2.18( 4.47),p=.62"," -1.48( 6.11),p=.81"," -2.72( 0.58),p&lt;.01"," -3.59( 1.10),p&lt;.01"," -4.11( 2.76),p=.14"," -4.45( 2.75),p=.10"," -4.72( 2.95),p=.11"," -2.31( 0.80),p&lt;.01"," -2.29( 1.27),p=.07","  0.14( 3.42),p=.97"," -1.28( 6.41),p=.84"," -0.95( 7.91),p=.90"," -2.71( 0.54),p&lt;.01"," -3.75( 1.06),p&lt;.01"," -3.92( 2.31),p=.09"," -3.98( 2.60),p=.13"," -4.19( 2.62),p=.11"," -2.40( 0.78),p&lt;.01"," -1.54( 1.14),p=.18","  0.27( 2.93),p=.93"," -1.75( 4.93),p=.72"," -1.70( 6.64),p=.80"," -2.49( 0.58),p&lt;.01"," -3.36( 1.07),p&lt;.01"," -3.43( 2.19),p=.12"," -3.29( 2.37),p=.16"," -3.60( 2.40),p=.13"," -2.28( 0.69),p&lt;.01"," -1.11( 1.19),p=.35","  0.19( 3.16),p=.95"," -1.81( 6.01),p=.76"," -1.68( 7.17),p=.81"," -2.61( 0.61),p&lt;.01"," -3.66( 1.09),p&lt;.01"," -3.27( 2.28),p=.15"," -3.10( 2.44),p=.20"," -3.40( 2.41),p=.16"," -2.14( 0.73),p&lt;.01"," -1.34( 1.12),p=.23"," -0.19( 2.92),p=.95"," -2.31( 4.48),p=.60"," -1.79( 7.08),p=.80"," -2.37( 0.58),p&lt;.01"," -3.52( 1.14),p&lt;.01"," -3.41( 2.40),p=.15"," -3.18( 2.65),p=.23"," -3.38( 2.64),p=.20"," -2.24( 0.73),p&lt;.01"," -1.50( 1.14),p=.19","  0.55( 3.06),p=.86"," -0.88( 5.47),p=.87"," -0.75( 6.82),p=.91"," -2.60( 0.58),p&lt;.01"," -3.44( 1.10),p&lt;.01"," -3.74( 2.37),p=.12"," -3.65( 2.58),p=.16"," -3.87( 2.63),p=.14"," -2.20( 0.73),p&lt;.01"," -1.27( 1.25),p=.31"," -0.50( 3.07),p=.87"," -1.98( 4.91),p=.69"," -1.72( 6.01),p=.78"," -2.27( 0.73),p&lt;.01"," -2.22( 1.14),p=.05","  0.06( 2.91),p=.98"," -1.64( 5.96),p=.78"," -1.37( 7.00),p=.84"," -2.27( 0.73),p&lt;.01"," -2.22( 1.14),p=.05","  0.06( 2.91),p=.98"," -1.64( 5.96),p=.78"," -1.37( 7.00),p=.84"," -2.38( 0.55),p&lt;.01"," -3.31( 1.03),p&lt;.01"," -3.18( 2.50),p=.20"," -3.04( 2.84),p=.28"," -3.26( 3.00),p=.28"," -2.11( 0.72),p&lt;.01"," -1.26( 1.22),p=.30"," -0.15( 3.15),p=.96"," -1.81( 4.79),p=.71"," -1.74( 8.13),p=.83"," -2.65( 0.55),p&lt;.01"," -3.51( 1.14),p&lt;.01"," -3.57( 2.46),p=.15"," -3.51( 2.53),p=.17"," -3.76( 2.65),p=.16"," -2.05( 0.83),p=.01"," -2.04( 1.27),p=.11","  0.03( 3.25),p=.99"," -2.18( 5.62),p=.70"," -1.93( 5.59),p=.73"," -2.52( 0.59),p&lt;.01"," -3.41( 1.17),p&lt;.01"," -3.42( 2.58),p=.18"," -3.23( 2.68),p=.23"," -3.45( 2.63),p=.19"," -2.25( 0.81),p=.01"," -1.57( 1.21),p=.20"," -0.29( 3.45),p=.93"," -1.97( 5.80),p=.73"," -1.44( 6.09),p=.81"," -0.78( 0.22),p&lt;.01"," -0.88( 0.35),p=.01"," -2.22( 0.37),p&lt;.01"," -2.35( 0.42),p&lt;.01"," -2.27( 0.42),p&lt;.01"," -1.02( 0.44),p=.02"," -0.97( 0.74),p=.19"," -1.82( 1.18),p=.12"," -2.33( 1.36),p=.09"," -2.83( 1.45),p=.05"," -0.94( 0.25),p&lt;.01"," -1.05( 0.38),p=.01"," -2.17( 0.40),p&lt;.01"," -2.35( 0.47),p&lt;.01"," -2.27( 0.48),p&lt;.01"," -1.23( 0.50),p=.01"," -1.17( 0.73),p=.11"," -1.81( 1.29),p=.16"," -2.46( 1.47),p=.09"," -2.89( 1.64),p=.08"," -0.98( 0.23),p&lt;.01"," -1.14( 0.35),p&lt;.01"," -2.23( 0.38),p&lt;.01"," -2.41( 0.47),p&lt;.01"," -2.35( 0.49),p&lt;.01"," -1.20( 0.52),p=.02"," -0.96( 0.67),p=.15"," -1.91( 1.20),p=.11"," -2.52( 1.52),p=.10"," -3.01( 1.91),p=.12"," -0.87( 0.24),p&lt;.01"," -0.95( 0.38),p=.01"," -2.20( 0.42),p&lt;.01"," -2.35( 0.48),p&lt;.01"," -2.26( 0.48),p&lt;.01"," -1.17( 0.41),p&lt;.01"," -0.97( 0.67),p=.15"," -1.81( 1.30),p=.16"," -2.38( 1.39),p=.09"," -2.87( 1.61),p=.07"," -0.97( 0.23),p&lt;.01"," -1.12( 0.35),p&lt;.01"," -2.22( 0.41),p&lt;.01"," -2.39( 0.42),p&lt;.01"," -2.32( 0.43),p&lt;.01"," -1.15( 0.47),p=.01"," -0.92( 0.71),p=.20"," -1.88( 1.10),p=.09"," -2.39( 1.47),p=.10"," -2.70( 1.71),p=.12"," -0.78( 0.27),p&lt;.01"," -0.85( 0.41),p=.04"," -2.15( 0.41),p&lt;.01"," -2.28( 0.48),p&lt;.01"," -2.24( 0.48),p&lt;.01"," -0.88( 0.53),p=.10"," -0.49( 0.77),p=.52"," -1.83( 1.23),p=.14"," -2.35( 1.78),p=.19"," -2.80( 1.90),p=.14"," -0.98( 0.23),p&lt;.01"," -1.10( 0.34),p&lt;.01"," -2.19( 0.36),p&lt;.01"," -2.36( 0.47),p&lt;.01"," -2.29( 0.48),p&lt;.01"," -1.20( 0.46),p=.01"," -0.85( 0.67),p=.20"," -2.46( 1.45),p=.09"," -3.01( 1.49),p=.04"," -0.90( 0.23),p&lt;.01"," -1.22( 0.37),p&lt;.01"," -2.15( 0.43),p&lt;.01"," -2.29( 0.51),p&lt;.01"," -2.21( 0.49),p&lt;.01"," -1.13( 0.48),p=.02"," -1.08( 0.67),p=.11"," -1.90( 1.21),p=.12"," -2.54( 1.75),p=.15"," -2.65( 2.41),p=.27"," -0.82( 0.22),p&lt;.01"," -0.88( 0.33),p=.01"," -2.32( 0.39),p&lt;.01"," -2.51( 0.47),p&lt;.01"," -2.44( 0.49),p&lt;.01"," -1.01( 0.45),p=.03"," -1.16( 0.75),p=.12"," -1.82( 1.22),p=.13"," -2.34( 1.55),p=.13"," -2.59( 1.71),p=.13"," -1.03( 0.23),p&lt;.01"," -1.15( 0.36),p&lt;.01"," -2.37( 0.40),p&lt;.01"," -2.51( 0.45),p&lt;.01"," -2.49( 0.45),p&lt;.01"," -1.21( 0.42),p&lt;.01"," -1.03( 0.72),p=.15"," -1.94( 1.14),p=.09"," -2.42( 1.24),p=.05"," -3.24( 1.37),p=.02"," -0.96( 0.23),p&lt;.01"," -1.09( 0.34),p&lt;.01"," -2.14( 0.41),p&lt;.01"," -2.24( 0.48),p&lt;.01"," -2.15( 0.48),p&lt;.01"," -1.19( 0.43),p=.01"," -1.06( 0.66),p=.11"," -1.82( 1.18),p=.12"," -2.29( 1.84),p=.21"," -2.68( 1.84),p=.15","-10.71( 4.20),p=.01","-26.73( 4.00),p&lt;.01","-28.93( 6.91),p&lt;.01","-26.99( 7.29),p&lt;.01","-18.94( 8.62),p=.03","-29.25(10.46),p=.01","-34.23(25.43),p=.18","-12.73( 3.31),p&lt;.01"," -9.96( 5.25),p=.06","-27.66( 5.42),p&lt;.01","-30.34( 5.91),p&lt;.01","-15.22( 9.10),p=.10","-12.33(13.96),p=.38","-31.06(27.15),p=.25","-37.40(32.26),p=.25","-37.62(40.31),p=.35","-15.66( 8.34),p=.06","-11.58( 2.77),p&lt;.01"," -5.54( 5.62),p=.32","-23.55( 7.43),p&lt;.01","-25.21( 8.42),p&lt;.01","-23.53( 9.30),p=.01","-14.85( 9.59),p=.12","-12.82(18.01),p=.48","-26.04(33.48),p=.44","-27.75(39.85),p=.49","-26.95(47.63),p=.57","-14.42( 2.89),p&lt;.01","-11.07( 4.82),p=.02","-25.89( 6.46),p&lt;.01","-28.33( 7.03),p&lt;.01","-26.65( 7.66),p&lt;.01","-16.65(13.61),p=.22","-29.16(30.96),p=.35","-29.81(37.75),p=.43","-29.38(50.40),p=.56"," -0.02( 0.00),p&lt;.01"," -0.02( 0.00),p&lt;.01"," -0.02( 0.00),p&lt;.01"," -0.02( 0.00),p&lt;.01"," -2.12( 0.19),p&lt;.01"," -2.22( 0.44),p&lt;.01"," -2.13( 0.19),p&lt;.01"," -2.20( 0.44),p&lt;.01"," -0.01( 0.00),p&lt;.01"," -0.01( 0.00),p&lt;.01"," -0.01( 0.00),p&lt;.01"," -0.01( 0.00),p&lt;.01"," -0.01( 0.00),p&lt;.01"," -0.01( 0.00),p&lt;.01"," -0.29( 0.02),p&lt;.01"," -0.45( 0.04),p&lt;.01"," -0.29( 0.02),p&lt;.01"," -0.45( 0.04),p&lt;.01"," -0.02( 0.01),p=.01"," -0.03( 0.01),p&lt;.01"," -0.03( 0.01),p&lt;.01"," -0.03( 0.01),p&lt;.01"," -0.03( 0.01),p=.01"," -0.03( 0.01),p=.01"," -0.02( 0.00),p&lt;.01"," -0.03( 0.01),p&lt;.01"," -0.03( 0.01),p&lt;.01"," -0.02( 0.00),p&lt;.01"," -0.02( 0.01),p=.03"," -0.02( 0.01),p=.02"," -0.02( 0.04),p=.64"," -0.03( 0.01),p&lt;.01"," -0.03( 0.01),p&lt;.01"," -0.02( 0.01),p=.01"," -0.02( 0.01),p=.08"," -0.02( 0.01),p=.03"," -0.02( 0.01),p&lt;.01"," -0.03( 0.01),p&lt;.01"," -0.03( 0.01),p&lt;.01"," -0.02( 0.00),p&lt;.01"," -0.02( 0.01),p=.04"," -0.02( 0.01),p=.03"," -0.52( 0.10),p&lt;.01"," -0.26( 0.19),p=.16"," -0.25( 0.19),p=.19"," -0.93( 0.07),p&lt;.01"," -0.81( 0.22),p&lt;.01"," -0.57( 0.24),p=.02"," -0.50( 0.08),p&lt;.01"," -0.25( 0.19),p=.18"," -0.27( 0.18),p=.14"," -0.90( 0.20),p&lt;.01"," -0.79( 0.24),p&lt;.01"," -0.59( 0.23),p=.01"," -0.51( 0.09),p&lt;.01"," -0.25( 0.19),p=.18"," -0.25( 0.19),p=.19"," -0.91( 0.07),p&lt;.01"," -0.80( 0.23),p&lt;.01"," -0.51( 0.23),p=.03"," -0.51( 0.08),p&lt;.01"," -0.26( 0.19),p=.18"," -0.25( 0.19),p=.19"," -0.91( 0.07),p&lt;.01"," -0.80( 0.23),p&lt;.01"," -0.55( 0.23),p=.01"," -2.67( 0.62),p&lt;.01"," -2.21( 1.33),p=.10"," -2.16( 1.29),p=.09"," -5.67( 1.06),p&lt;.01"," -6.41( 3.13),p=.04"," -6.00( 2.75),p=.03"," -2.66( 0.56),p&lt;.01"," -2.28( 1.27),p=.07"," -2.34( 1.28),p=.07"," -5.54( 0.98),p&lt;.01"," -6.47( 2.97),p=.03"," -5.94( 2.66),p=.03"," -2.67( 0.59),p&lt;.01"," -2.23( 1.30),p=.09"," -2.11( 1.28),p=.10"," -5.61( 1.00),p&lt;.01"," -6.43( 3.05),p=.04"," -5.64( 2.64),p=.03"," -2.67( 0.59),p&lt;.01"," -2.23( 1.30),p=.09"," -2.10( 1.28),p=.10"," -5.61( 1.00),p&lt;.01"," -6.43( 3.05),p=.04"," -5.61( 2.65),p=.04"," -7.09( 2.24),p&lt;.01"," -2.83( 1.54),p=.07"," -6.39( 2.31),p=.01"," -2.76( 1.57),p=.08"," -6.55( 2.21),p&lt;.01"," -2.82( 1.59),p=.08"," -6.77( 2.33),p&lt;.01"," -2.64( 1.61),p=.10","  0.22( 0.12),p=.07","  0.23( 0.18),p=.20","  0.21( 0.20),p=.30","  0.23( 0.15),p=.14","  0.26( 0.17),p=.14","  0.28( 0.18),p=.11","  0.23( 0.14),p=.09","  0.23( 0.18),p=.19","  0.21( 0.20),p=.29","  0.21( 0.16),p=.19","  0.25( 0.18),p=.17","  0.23( 0.12),p=.06","  0.24( 0.18),p=.20","  0.21( 0.20),p=.30","  0.21( 0.15),p=.17","  0.25( 0.17),p=.13","  0.29( 0.18),p=.11","  0.20( 0.12),p=.09","  0.22( 0.18),p=.22","  0.19( 0.19),p=.33","  0.22( 0.15),p=.14","  0.25( 0.17),p=.14","  0.27( 0.18),p=.13","  0.21( 0.12),p=.08","  0.24( 0.17),p=.17","  0.21( 0.19),p=.27","  0.21( 0.16),p=.19","  0.23( 0.18),p=.18","  0.26( 0.19),p=.16","  0.42( 0.05),p&lt;.01","  0.42( 0.06),p&lt;.01","  0.42( 0.05),p&lt;.01","  0.42( 0.06),p&lt;.01","  0.42( 0.05),p&lt;.01","  0.42( 0.06),p&lt;.01"," -0.29( 0.03),p&lt;.01"," -0.61( 0.06),p&lt;.01"," -0.28( 0.03),p&lt;.01"," -0.59( 0.06),p&lt;.01"," -0.28( 0.03),p&lt;.01"," -0.61( 0.06),p&lt;.01"," -3.80( 0.36),p&lt;.01"," -5.40( 0.55),p&lt;.01"," -3.79( 0.36),p&lt;.01"," -5.30( 0.56),p&lt;.01"," -3.77( 0.36),p&lt;.01"," -5.31( 0.55),p&lt;.01"," -0.04( 0.00),p&lt;.01"," -0.04( 0.01),p&lt;.01"," -0.04( 0.01),p&lt;.01"," -0.04( 0.01),p&lt;.01"," -0.05( 0.01),p&lt;.01"," -0.04( 0.02),p=.01"," -0.04( 0.02),p=.01"," -0.08( 0.02),p&lt;.01"," -0.04( 0.00),p&lt;.01"," -0.04( 0.01),p&lt;.01"," -0.04( 0.01),p&lt;.01"," -0.04( 0.01),p&lt;.01"," -0.04( 0.01),p&lt;.01"," -0.04( 0.02),p=.02"," -0.04( 0.02),p=.02"," -0.08( 0.02),p&lt;.01"," -0.04( 0.00),p&lt;.01"," -0.04( 0.01),p&lt;.01"," -0.04( 0.01),p&lt;.01"," -0.04( 0.01),p&lt;.01"," -0.05( 0.01),p&lt;.01"," -0.04( 0.02),p=.01"," -0.04( 0.02),p=.02"," -0.08( 0.02),p&lt;.01"," -0.04( 0.00),p&lt;.01"," -0.04( 0.01),p&lt;.01"," -0.04( 0.01),p&lt;.01"," -0.04( 0.01),p&lt;.01"," -0.05( 0.01),p&lt;.01"," -0.04( 0.02),p=.01"," -0.04( 0.02),p=.01"," -0.08( 0.02),p&lt;.01"," -0.04( 0.00),p&lt;.01"," -0.04( 0.01),p&lt;.01"," -0.04( 0.01),p&lt;.01"," -0.04( 0.01),p&lt;.01"," -0.05( 0.01),p&lt;.01"," -0.04( 0.02),p=.01"," -0.04( 0.02),p=.02"," -0.08( 0.02),p&lt;.01"," -0.04( 0.00),p&lt;.01"," -0.04( 0.01),p&lt;.01"," -0.04( 0.01),p&lt;.01"," -0.04( 0.01),p&lt;.01"," -0.05( 0.01),p&lt;.01"," -0.04( 0.02),p=.01"," -0.04( 0.02),p=.02"," -0.08( 0.02),p&lt;.01"," -0.04( 0.00),p&lt;.01"," -0.04( 0.01),p&lt;.01"," -0.04( 0.01),p&lt;.01"," -0.04( 0.01),p&lt;.01"," -0.04( 0.01),p&lt;.01"," -0.04( 0.02),p=.01"," -0.04( 0.02),p=.02"," -0.08( 0.02),p&lt;.01"," -0.04( 0.00),p&lt;.01"," -0.04( 0.01),p&lt;.01"," -0.04( 0.01),p&lt;.01"," -0.04( 0.01),p&lt;.01"," -0.04( 0.01),p&lt;.01"," -0.04( 0.02),p=.01"," -0.04( 0.02),p=.02"," -0.08( 0.02),p&lt;.01"," -0.04( 0.00),p&lt;.01"," -0.04( 0.01),p&lt;.01"," -0.04( 0.01),p&lt;.01"," -0.04( 0.01),p&lt;.01"," -0.05( 0.01),p&lt;.01"," -0.04( 0.02),p=.01"," -0.04( 0.02),p=.01"," -0.08( 0.02),p&lt;.01"," -0.04( 0.00),p&lt;.01"," -0.04( 0.01),p&lt;.01"," -0.04( 0.01),p&lt;.01"," -0.04( 0.01),p&lt;.01"," -0.05( 0.01),p&lt;.01"," -0.04( 0.02),p=.01"," -0.04( 0.02),p=.02"," -0.08( 0.02),p&lt;.01"," -0.04( 0.01),p&lt;.01"," -0.04( 0.01),p&lt;.01"," -0.04( 0.01),p&lt;.01"," -0.05( 0.01),p&lt;.01"," -0.04( 0.02),p=.01"," -0.04( 0.02),p=.02"," -0.08( 0.02),p&lt;.01"," -0.04( 0.00),p&lt;.01"," -0.04( 0.01),p&lt;.01"," -0.04( 0.01),p&lt;.01"," -0.04( 0.01),p&lt;.01"," -0.05( 0.01),p&lt;.01"," -0.04( 0.02),p=.01"," -0.04( 0.02),p=.02"," -0.08( 0.02),p&lt;.01"," -0.04( 0.00),p&lt;.01"," -0.04( 0.01),p&lt;.01"," -0.04( 0.01),p&lt;.01"," -0.04( 0.01),p&lt;.01"," -0.04( 0.02),p=.01"," -0.04( 0.02),p=.01"," -0.08( 0.02),p&lt;.01"," -0.04( 0.00),p&lt;.01"," -0.04( 0.01),p&lt;.01"," -0.04( 0.01),p&lt;.01"," -0.04( 0.01),p&lt;.01"," -0.05( 0.01),p&lt;.01"," -0.04( 0.02),p=.01"," -0.04( 0.02),p=.01"," -0.08( 0.02),p&lt;.01"," -0.04( 0.00),p&lt;.01"," -0.04( 0.01),p&lt;.01"," -0.04( 0.01),p&lt;.01"," -0.04( 0.01),p&lt;.01"," -0.05( 0.01),p&lt;.01"," -0.04( 0.02),p=.01"," -0.04( 0.02),p=.02"," -0.08( 0.02),p&lt;.01"," -0.04( 0.00),p&lt;.01"," -0.04( 0.01),p&lt;.01"," -0.04( 0.01),p&lt;.01"," -0.04( 0.01),p&lt;.01"," -0.05( 0.01),p&lt;.01"," -0.04( 0.02),p=.01"," -0.04( 0.02),p=.01"," -0.08( 0.02),p&lt;.01"," -0.04( 0.00),p&lt;.01"," -0.04( 0.01),p&lt;.01"," -0.04( 0.01),p&lt;.01"," -0.04( 0.01),p&lt;.01"," -0.05( 0.01),p&lt;.01"," -0.04( 0.02),p=.01"," -0.04( 0.02),p=.02"," -0.08( 0.02),p&lt;.01"," -0.04( 0.00),p&lt;.01"," -0.04( 0.01),p&lt;.01"," -0.04( 0.01),p&lt;.01"," -0.04( 0.01),p&lt;.01"," -0.05( 0.01),p&lt;.01"," -0.04( 0.02),p=.02"," -0.04( 0.02),p=.03"," -0.08( 0.02),p&lt;.01"," -0.04( 0.01),p&lt;.01"," -0.03( 0.01),p&lt;.01"," -0.04( 0.01),p&lt;.01"," -0.04( 0.01),p&lt;.01"," -0.05( 0.01),p&lt;.01"," -0.04( 0.02),p=.02"," -0.04( 0.02),p=.02"," -0.08( 0.02),p&lt;.01"," -0.95( 0.14),p&lt;.01"," -0.47( 0.31),p=.12"," -0.42( 0.32),p=.19"," -1.50( 0.40),p&lt;.01"," -1.75( 0.60),p&lt;.01"," -1.81( 0.60),p&lt;.01"," -2.48( 0.90),p=.01"," -0.95( 0.14),p&lt;.01"," -0.41( 0.30),p=.17"," -0.46( 0.30),p=.13"," -0.41( 0.32),p=.19"," -1.51( 0.41),p&lt;.01"," -1.73( 0.60),p&lt;.01"," -1.81( 0.61),p&lt;.01"," -2.47( 0.90),p=.01"," -0.04( 0.00),p&lt;.01"," -0.04( 0.01),p&lt;.01"," -0.04( 0.01),p&lt;.01"," -0.04( 0.01),p&lt;.01"," -0.05( 0.01),p&lt;.01"," -0.04( 0.02),p=.01"," -1.80( 0.61),p&lt;.01"," -2.47( 0.90),p=.01"," -0.95( 0.14),p&lt;.01"," -0.41( 0.31),p=.18"," -0.46( 0.30),p=.14"," -0.40( 0.32),p=.20"," -1.49( 0.40),p&lt;.01"," -1.74( 0.60),p&lt;.01"," -1.81( 0.60),p&lt;.01"," -2.44( 0.88),p=.01"," -0.04( 0.00),p&lt;.01"," -0.04( 0.01),p&lt;.01"," -0.04( 0.01),p&lt;.01"," -0.04( 0.01),p&lt;.01"," -0.05( 0.01),p&lt;.01"," -0.04( 0.02),p=.01"," -1.76( 0.59),p&lt;.01"," -2.41( 0.87),p=.01"," -0.95( 0.14),p&lt;.01"," -0.42( 0.30),p=.17"," -0.46( 0.30),p=.13"," -0.41( 0.31),p=.19"," -1.52( 0.41),p&lt;.01"," -1.73( 0.61),p=.01"," -1.81( 0.61),p&lt;.01"," -2.45( 0.89),p=.01"," -0.95( 0.15),p&lt;.01"," -0.42( 0.31),p=.17"," -0.46( 0.31),p=.14"," -0.41( 0.32),p=.20"," -1.47( 0.40),p&lt;.01"," -1.75( 0.60),p&lt;.01"," -1.83( 0.60),p&lt;.01"," -2.47( 0.89),p=.01"," -0.95( 0.14),p&lt;.01"," -0.41( 0.30),p=.17"," -0.45( 0.30),p=.13"," -0.39( 0.32),p=.21"," -1.50( 0.41),p&lt;.01"," -1.70( 0.61),p=.01"," -1.78( 0.61),p&lt;.01"," -2.39( 0.89),p=.01"," -0.94( 0.14),p&lt;.01"," -0.41( 0.30),p=.18"," -0.45( 0.30),p=.14"," -0.40( 0.32),p=.21"," -1.47( 0.41),p&lt;.01"," -1.74( 0.62),p=.01"," -1.83( 0.62),p&lt;.01"," -2.46( 0.90),p=.01"," -0.95( 0.15),p&lt;.01"," -0.42( 0.31),p=.17"," -0.46( 0.31),p=.13"," -0.41( 0.32),p=.20"," -1.52( 0.41),p&lt;.01"," -1.75( 0.60),p&lt;.01"," -1.84( 0.60),p&lt;.01"," -2.48( 0.89),p=.01"," -0.95( 0.14),p&lt;.01"," -0.41( 0.31),p=.18"," -0.45( 0.30),p=.14"," -0.40( 0.32),p=.20"," -1.49( 0.41),p&lt;.01"," -1.70( 0.60),p&lt;.01"," -1.78( 0.60),p&lt;.01"," -2.46( 0.89),p=.01"," -0.94( 0.14),p&lt;.01"," -0.41( 0.31),p=.19"," -0.45( 0.31),p=.14"," -0.39( 0.32),p=.22"," -1.52( 0.41),p&lt;.01"," -1.73( 0.62),p=.01"," -1.81( 0.62),p&lt;.01"," -2.47( 0.91),p=.01"," -0.99( 0.14),p&lt;.01"," -0.50( 0.31),p=.10"," -0.54( 0.31),p=.08"," -0.51( 0.32),p=.11"," -1.55( 0.41),p&lt;.01"," -1.71( 0.61),p=.01"," -1.80( 0.62),p&lt;.01"," -2.45( 0.91),p=.01"," -0.93( 0.14),p&lt;.01"," -0.42( 0.30),p=.17"," -0.37( 0.32),p=.24"," -1.49( 0.41),p&lt;.01"," -1.73( 0.61),p=.01"," -1.81( 0.62),p&lt;.01"," -2.48( 0.90),p=.01"," -0.95( 0.14),p&lt;.01"," -0.41( 0.31),p=.18"," -0.46( 0.31),p=.14"," -0.41( 0.32),p=.20"," -1.51( 0.41),p&lt;.01"," -1.85( 0.61),p&lt;.01"," -2.52( 0.90),p=.01"," -0.95( 0.15),p&lt;.01"," -0.43( 0.31),p=.17"," -0.47( 0.31),p=.13"," -0.41( 0.32),p=.20"," -1.52( 0.41),p&lt;.01"," -1.86( 0.60),p&lt;.01"," -1.83( 0.62),p&lt;.01"," -2.58( 0.89),p&lt;.01"," -0.96( 0.15),p&lt;.01"," -0.42( 0.31),p=.17"," -0.47( 0.31),p=.13"," -0.41( 0.32),p=.20"," -1.51( 0.41),p&lt;.01"," -1.75( 0.61),p&lt;.01"," -1.83( 0.61),p&lt;.01"," -2.50( 0.90),p=.01"," -0.94( 0.15),p&lt;.01"," -0.40( 0.31),p=.19"," -0.44( 0.30),p=.15"," -0.39( 0.32),p=.21"," -1.51( 0.41),p&lt;.01"," -1.73( 0.61),p=.01"," -1.81( 0.61),p&lt;.01"," -2.43( 0.90),p=.01"," -0.04( 0.01),p&lt;.01"," -0.03( 0.01),p&lt;.01"," -0.04( 0.01),p&lt;.01"," -0.05( 0.01),p&lt;.01"," -0.04( 0.02),p=.02"," -1.83( 0.60),p&lt;.01"," -2.56( 0.90),p&lt;.01"," -2.05( 0.18),p&lt;.01"," -2.00( 0.27),p&lt;.01"," -2.18( 0.28),p&lt;.01"," -2.47( 0.17),p&lt;.01"," -2.51( 0.23),p&lt;.01"," -2.36( 0.29),p&lt;.01","  0.53( 0.36),p=.15","  0.18( 0.18),p=.31","  0.55( 0.43),p=.20","  0.20( 0.19),p=.29","  0.53( 0.40),p=.19","  0.22( 0.18),p=.21","  0.56( 0.36),p=.12","  0.51( 0.28),p=.07","  0.21( 0.18),p=.24"," -0.33( 0.03),p&lt;.01"," -0.34( 0.03),p&lt;.01"," -0.34( 0.03),p&lt;.01"," -0.36( 0.05),p&lt;.01"," -0.37( 0.05),p&lt;.01"," -0.37( 0.08),p&lt;.01"," -0.33( 0.03),p&lt;.01"," -0.33( 0.03),p&lt;.01"," -0.34( 0.04),p&lt;.01"," -0.36( 0.05),p&lt;.01"," -0.37( 0.05),p&lt;.01"," -0.35( 0.07),p&lt;.01"," -0.33( 0.03),p&lt;.01"," -0.33( 0.03),p&lt;.01"," -0.34( 0.03),p&lt;.01"," -0.34( 0.05),p&lt;.01"," -0.36( 0.05),p&lt;.01"," -0.34( 0.07),p&lt;.01"," -0.33( 0.03),p&lt;.01"," -0.33( 0.03),p&lt;.01"," -0.34( 0.04),p&lt;.01"," -0.34( 0.05),p&lt;.01"," -0.35( 0.05),p&lt;.01"," -0.33( 0.07),p&lt;.01"," -0.33( 0.03),p&lt;.01"," -0.34( 0.03),p&lt;.01"," -0.34( 0.05),p&lt;.01"," -0.35( 0.05),p&lt;.01"," -0.33( 0.03),p&lt;.01"," -0.33( 0.03),p&lt;.01"," -0.34( 0.03),p&lt;.01"," -0.36( 0.05),p&lt;.01"," -0.37( 0.05),p&lt;.01"," -0.35( 0.08),p&lt;.01"," -0.32( 0.03),p&lt;.01"," -0.33( 0.03),p&lt;.01"," -0.39( 0.05),p&lt;.01"," -0.39( 0.05),p&lt;.01"," -0.33( 0.03),p&lt;.01"," -0.34( 0.03),p&lt;.01"," -0.34( 0.04),p&lt;.01"," -0.34( 0.05),p&lt;.01"," -0.35( 0.05),p&lt;.01"," -0.23( 0.09),p=.11"," -0.34( 0.03),p&lt;.01"," -0.34( 0.04),p&lt;.01"," -0.33( 0.06),p&lt;.01"," -0.35( 0.05),p&lt;.01"," -0.33( 0.03),p&lt;.01"," -0.34( 0.03),p&lt;.01"," -0.34( 0.03),p&lt;.01"," -0.35( 0.05),p&lt;.01"," -0.37( 0.05),p&lt;.01"," -0.36( 0.08),p&lt;.01"," -0.33( 0.03),p&lt;.01"," -0.34( 0.03),p&lt;.01"," -0.34( 0.05),p&lt;.01"," -0.35( 0.05),p&lt;.01"," -8.86( 1.05),p&lt;.01"," -9.21( 1.12),p&lt;.01"," -7.21( 1.41),p&lt;.01","-10.49( 2.27),p&lt;.01","-10.22( 2.26),p&lt;.01"," -3.65( 3.42),p=.29"," -8.50( 1.04),p&lt;.01"," -8.93( 1.11),p&lt;.01"," -7.04( 1.42),p&lt;.01","-10.44( 2.35),p&lt;.01","-10.10( 2.30),p&lt;.01"," -3.18( 3.63),p=.38"," -8.45( 1.03),p&lt;.01"," -8.87( 1.11),p&lt;.01"," -7.01( 1.42),p&lt;.01","-10.32( 2.37),p&lt;.01","-10.25( 2.31),p&lt;.01"," -4.53( 3.48),p=.19"," -8.61( 1.06),p&lt;.01"," -8.98( 1.12),p&lt;.01","-10.02( 2.35),p&lt;.01"," -9.88( 2.32),p&lt;.01"," -8.43( 1.04),p&lt;.01"," -8.91( 1.13),p&lt;.01","-10.53( 2.33),p&lt;.01","-10.17( 2.32),p&lt;.01"," -8.41( 1.04),p&lt;.01"," -8.90( 1.10),p&lt;.01"," -9.93( 2.27),p&lt;.01"," -9.44( 2.29),p&lt;.01"," -8.77( 1.03),p&lt;.01"," -9.49( 1.14),p&lt;.01","-10.64( 2.43),p&lt;.01","-10.11( 2.40),p&lt;.01"," -8.45( 1.05),p&lt;.01"," -8.90( 1.12),p&lt;.01"," -7.03( 1.41),p&lt;.01","-10.09( 2.36),p&lt;.01"," -9.85( 2.38),p&lt;.01"," -3.29( 3.71),p=.38"," -7.31( 1.34),p&lt;.01"," -7.85( 1.42),p&lt;.01"," -6.71( 2.47),p=.01"," -5.96( 2.53),p=.02"," -8.43( 1.01),p&lt;.01"," -8.93( 1.08),p&lt;.01"," -7.13( 1.40),p&lt;.01","-11.04( 2.34),p&lt;.01","-10.77( 2.33),p&lt;.01"," -3.27( 3.62),p=.37"," -8.46( 1.03),p&lt;.01"," -8.84( 1.11),p&lt;.01","-10.48( 2.33),p&lt;.01","-10.09( 2.36),p&lt;.01","--,p=  ----"," -0.03( 0.00),p&lt;.01"," -0.03( 0.00),p&lt;.01"," -0.03( 0.00),p&lt;.01"," -0.03( 0.00),p&lt;.01","--,p=  ----"," -0.04( 0.00),p&lt;.01"," -0.04( 0.01),p&lt;.01"," -0.04( 0.01),p&lt;.01"," -0.05( 0.01),p&lt;.01","--,p=  ----"," -0.03( 0.00),p&lt;.01"," -0.03( 0.00),p&lt;.01"," -0.03( 0.00),p&lt;.01"," -0.03( 0.00),p&lt;.01","--,p=  ----"," -0.04( 0.00),p&lt;.01"," -0.04( 0.01),p&lt;.01"," -0.04( 0.01),p&lt;.01"," -0.04( 0.01),p&lt;.01","--,p=  ----"," -0.03( 0.00),p&lt;.01"," -0.03( 0.00),p&lt;.01"," -0.03( 0.00),p&lt;.01"," -0.03( 0.00),p&lt;.01"," -0.03( 0.00),p&lt;.01","--,p=  ----"," -0.04( 0.00),p&lt;.01"," -0.04( 0.01),p&lt;.01"," -0.04( 0.01),p&lt;.01"," -0.05( 0.01),p&lt;.01"," -0.05( 0.01),p&lt;.01","--,p=  ----"," -0.03( 0.00),p&lt;.01"," -0.03( 0.00),p&lt;.01"," -0.03( 0.00),p&lt;.01"," -0.03( 0.00),p&lt;.01"," -0.03( 0.00),p&lt;.01","--,p=  ----"," -0.04( 0.00),p&lt;.01"," -0.04( 0.01),p&lt;.01"," -0.04( 0.01),p&lt;.01"," -0.05( 0.01),p&lt;.01"," -0.05( 0.01),p&lt;.01"," -0.03( 0.00),p&lt;.01"," -0.03( 0.00),p&lt;.01"," -0.03( 0.00),p&lt;.01"," -0.04( 0.00),p&lt;.01"," -0.04( 0.01),p&lt;.01"," -0.04( 0.01),p&lt;.01","--,p=  ----"," -0.03( 0.00),p&lt;.01"," -0.03( 0.00),p&lt;.01"," -0.03( 0.00),p&lt;.01"," -0.03( 0.00),p&lt;.01","--,p=  ----"," -0.04( 0.00),p&lt;.01"," -0.04( 0.01),p&lt;.01"," -0.04( 0.01),p&lt;.01"," -0.05( 0.01),p&lt;.01","--,p=  ----"," -0.03( 0.00),p&lt;.01"," -0.03( 0.00),p&lt;.01"," -0.03( 0.00),p&lt;.01"," -0.03( 0.00),p&lt;.01","--,p=  ----"," -0.04( 0.00),p&lt;.01"," -0.04( 0.01),p&lt;.01"," -0.04( 0.01),p&lt;.01"," -0.04( 0.01),p&lt;.01","--,p=  ----"," -0.03( 0.00),p&lt;.01"," -0.03( 0.00),p&lt;.01"," -0.03( 0.00),p&lt;.01"," -0.03( 0.00),p&lt;.01","--,p=  ----"," -0.04( 0.01),p&lt;.01"," -0.04( 0.01),p&lt;.01"," -0.04( 0.01),p&lt;.01"," -0.04( 0.01),p&lt;.01","--,p=  ----"," -0.03( 0.00),p&lt;.01"," -0.03( 0.00),p&lt;.01"," -0.03( 0.00),p&lt;.01"," -0.03( 0.00),p&lt;.01","--,p=  ----"," -0.04( 0.00),p&lt;.01"," -0.04( 0.01),p&lt;.01"," -0.04( 0.01),p&lt;.01"," -0.05( 0.01),p&lt;.01","--,p=  ----"," -0.03( 0.00),p&lt;.01"," -0.03( 0.00),p&lt;.01"," -0.03( 0.00),p&lt;.01"," -0.03( 0.00),p&lt;.01","--,p=  ----"," -0.04( 0.00),p&lt;.01"," -0.04( 0.00),p&lt;.01"," -0.04( 0.00),p&lt;.01"," -0.05( 0.01),p&lt;.01","--,p=  ----"," -0.03( 0.00),p&lt;.01"," -0.03( 0.00),p&lt;.01"," -0.03( 0.00),p&lt;.01"," -0.03( 0.00),p&lt;.01","--,p=  ----"," -0.04( 0.00),p&lt;.01"," -0.04( 0.01),p&lt;.01"," -0.04( 0.01),p&lt;.01"," -0.05( 0.01),p&lt;.01"," -0.57( 0.03),p&lt;.01"," -0.58( 0.04),p&lt;.01"," -0.58( 0.04),p&lt;.01"," -0.57( 0.04),p&lt;.01"," -0.90( 0.13),p&lt;.01"," -0.90( 0.14),p&lt;.01"," -0.90( 0.14),p&lt;.01"," -0.87( 0.20),p&lt;.01"," -0.57( 0.04),p&lt;.01"," -0.96( 0.08),p&lt;.01"," -0.57( 0.04),p&lt;.01"," -0.95( 0.08),p&lt;.01"," -0.57( 0.04),p&lt;.01"," -0.95( 0.08),p&lt;.01"," -0.57( 0.03),p&lt;.01"," -0.58( 0.04),p&lt;.01"," -0.58( 0.04),p&lt;.01"," -0.92( 0.13),p&lt;.01"," -0.94( 0.14),p&lt;.01"," -0.93( 0.14),p&lt;.01"," -0.58( 0.03),p&lt;.01"," -0.59( 0.04),p&lt;.01"," -0.59( 0.04),p&lt;.01"," -0.57( 0.04),p&lt;.01"," -0.89( 0.13),p&lt;.01"," -0.90( 0.14),p&lt;.01"," -0.89( 0.14),p&lt;.01"," -0.87( 0.20),p&lt;.01"," -0.57( 0.04),p&lt;.01"," -0.58( 0.04),p&lt;.01"," -0.58( 0.04),p&lt;.01"," -0.57( 0.05),p&lt;.01"," -0.92( 0.14),p&lt;.01"," -0.94( 0.15),p&lt;.01"," -0.92( 0.15),p&lt;.01"," -0.87( 0.22),p&lt;.01"," -0.57( 0.03),p&lt;.01"," -0.58( 0.03),p&lt;.01"," -0.58( 0.03),p&lt;.01"," -0.57( 0.04),p&lt;.01"," -0.92( 0.13),p&lt;.01"," -0.93( 0.13),p&lt;.01"," -0.92( 0.14),p&lt;.01"," -0.95( 0.08),p&lt;.01"," -0.57( 0.03),p&lt;.01"," -0.59( 0.04),p&lt;.01"," -0.59( 0.04),p&lt;.01"," -0.57( 0.04),p&lt;.01"," -0.90( 0.13),p&lt;.01"," -0.91( 0.14),p&lt;.01"," -0.90( 0.14),p&lt;.01"," -0.86( 0.20),p&lt;.01"],["  20.6( 0.8),p&lt;.01","  13.8( 1.1),p&lt;.01","  18.4( 2.2),p&lt;.01","  18.9( 2.3),p&lt;.01","  19.3( 2.6),p&lt;.01","  20.5( 1.0),p&lt;.01","  20.4( 1.1),p&lt;.01","  19.4( 6.1),p&lt;.01","  23.9( 7.1),p&lt;.01","  22.3( 9.1),p=.01","  11.9( 0.3),p&lt;.01","   9.8( 0.3),p&lt;.01","  10.3( 0.6),p&lt;.01","  10.8( 0.6),p&lt;.01","  10.8( 0.6),p&lt;.01","  12.1( 0.3),p&lt;.01","  12.0( 0.3),p&lt;.01","  11.8( 1.2),p&lt;.01","  11.0( 2.0),p&lt;.01","  10.8( 2.1),p&lt;.01","  40.5( 0.7),p&lt;.01","  35.6( 1.0),p&lt;.01","  37.6( 2.6),p&lt;.01","  38.7( 2.9),p&lt;.01","  38.7( 3.0),p&lt;.01","  36.9( 1.0),p&lt;.01","  36.8( 1.0),p&lt;.01","  33.9( 5.4),p&lt;.01","  30.8( 7.7),p&lt;.01","  33.0( 8.5),p&lt;.01","  13.5( 0.3),p&lt;.01","  11.2( 0.4),p&lt;.01","  13.3( 0.8),p&lt;.01","  13.5( 0.9),p&lt;.01","  13.4( 1.0),p&lt;.01","  13.7( 0.4),p&lt;.01","  13.7( 0.4),p&lt;.01","  15.6( 2.0),p&lt;.01","  14.5( 3.4),p&lt;.01","  15.1( 3.7),p&lt;.01","  34.2( 1.1),p&lt;.01","  24.0( 1.5),p&lt;.01","  29.6( 3.4),p&lt;.01","  30.5( 3.5),p&lt;.01","  30.6( 3.8),p&lt;.01","  31.3( 1.5),p&lt;.01","  31.3( 1.5),p&lt;.01","  29.6( 6.5),p&lt;.01","  29.1( 7.5),p&lt;.01","  31.3( 8.0),p&lt;.01","  19.6( 0.6),p&lt;.01","  15.7( 0.7),p&lt;.01","  13.0( 1.6),p&lt;.01","  13.2( 2.1),p&lt;.01","  13.3( 2.3),p&lt;.01","  22.6( 0.5),p&lt;.01","  23.3( 0.6),p&lt;.01","  17.9( 2.8),p&lt;.01","  18.3( 3.9),p&lt;.01","  18.0( 4.8),p&lt;.01","  21.6( 0.6),p&lt;.01","  16.5( 0.8),p&lt;.01","  18.2( 1.8),p&lt;.01","  18.3( 2.1),p&lt;.01","  18.2( 2.2),p&lt;.01","  20.8( 0.8),p&lt;.01","  20.4( 0.8),p&lt;.01","  15.1( 3.6),p&lt;.01","  14.7( 5.2),p=.01","  14.1( 5.3),p=.01","  26.2( 0.2),p&lt;.01","  26.2( 0.2),p&lt;.01","  26.5( 0.6),p&lt;.01","  26.7( 0.9),p&lt;.01","  26.9( 1.1),p&lt;.01","  26.2( 0.2),p&lt;.01","  26.2( 0.2),p&lt;.01","  26.5( 0.6),p&lt;.01","  26.7( 0.9),p&lt;.01","  26.9( 1.1),p&lt;.01","  45.3( 1.2),p&lt;.01","  32.6( 1.6),p&lt;.01","  39.7( 2.9),p&lt;.01","  41.2( 3.3),p&lt;.01","  41.0( 3.4),p&lt;.01","  39.4( 1.3),p&lt;.01","  39.0( 1.4),p&lt;.01","  37.4( 6.2),p&lt;.01","  39.1(11.0),p&lt;.01","  38.7(14.0),p=.01"," 124.9( 7.2),p&lt;.01"," 172.3( 7.6),p&lt;.01"," 170.2(16.7),p&lt;.01"," 162.5(17.9),p&lt;.01"," 171.5(18.4),p&lt;.01"," 132.4( 9.3),p&lt;.01"," 131.4( 9.6),p&lt;.01"," 169.3(31.7),p&lt;.01"," 163.4(43.6),p&lt;.01"," 167.6(52.4),p&lt;.01","  44.8( 1.1),p&lt;.01","  32.8( 1.3),p&lt;.01","  34.4( 2.7),p&lt;.01","  34.8( 3.2),p&lt;.01","  35.9( 3.2),p&lt;.01","  44.0( 1.3),p&lt;.01","  44.3( 1.4),p&lt;.01","  32.1( 4.6),p&lt;.01","  34.0( 6.7),p&lt;.01","  34.4( 7.6),p&lt;.01","  20.7( 0.8),p&lt;.01","  14.0( 1.1),p&lt;.01","  18.3( 2.4),p&lt;.01","  18.9( 2.4),p&lt;.01","  19.3( 2.7),p&lt;.01","  20.4( 1.0),p&lt;.01","  20.3( 1.1),p&lt;.01","  19.1( 5.3),p&lt;.01","  24.1( 7.1),p&lt;.01","  22.5( 8.7),p=.01","  11.9( 0.3),p&lt;.01","   9.8( 0.3),p&lt;.01","  10.4( 0.7),p&lt;.01","  10.8( 0.7),p&lt;.01","  10.8( 0.7),p&lt;.01","  12.1( 0.3),p&lt;.01","  12.1( 0.3),p&lt;.01","  11.9( 0.9),p&lt;.01","  11.2( 1.8),p&lt;.01","  10.8( 2.1),p&lt;.01","  40.6( 0.8),p&lt;.01","  35.7( 1.1),p&lt;.01","  37.5( 2.6),p&lt;.01","  38.5( 2.7),p&lt;.01","  38.5( 2.8),p&lt;.01","  37.0( 1.0),p&lt;.01","  36.8( 1.0),p&lt;.01","  33.3( 4.6),p&lt;.01","  30.0( 8.3),p&lt;.01","  32.2(10.0),p&lt;.01","  13.6( 0.3),p&lt;.01","  11.3( 0.4),p&lt;.01","  13.4( 0.9),p&lt;.01","  13.7( 0.9),p&lt;.01","  13.6( 1.0),p&lt;.01","  13.8( 0.4),p&lt;.01","  13.7( 0.4),p&lt;.01","  13.9( 2.0),p&lt;.01","  12.9( 3.5),p&lt;.01","  13.6( 4.0),p&lt;.01","  34.1( 1.1),p&lt;.01","  24.1( 1.5),p&lt;.01","  29.5( 3.5),p&lt;.01","  30.4( 3.8),p&lt;.01","  30.5( 4.0),p&lt;.01","  31.3( 1.5),p&lt;.01","  31.2( 1.5),p&lt;.01","  25.7( 5.0),p&lt;.01","  25.4( 7.5),p&lt;.01","  27.8( 8.4),p&lt;.01","  19.5( 0.6),p&lt;.01","  15.6( 0.7),p&lt;.01","  12.8( 1.6),p&lt;.01","  13.1( 2.0),p&lt;.01","  13.3( 2.4),p&lt;.01","  22.5( 0.5),p&lt;.01","  23.2( 0.6),p&lt;.01","  17.1( 2.4),p&lt;.01","  17.4( 3.8),p&lt;.01","  16.9( 4.2),p&lt;.01","  21.6( 0.6),p&lt;.01","  16.5( 0.8),p&lt;.01","  18.0( 1.9),p&lt;.01","  18.2( 2.1),p&lt;.01","  18.1( 2.1),p&lt;.01","  20.7( 0.8),p&lt;.01","  20.3( 0.8),p&lt;.01","  15.8( 5.2),p&lt;.01","  15.2( 5.9),p=.01","  26.3( 0.2),p&lt;.01","  26.4( 0.2),p&lt;.01","  26.0( 0.3),p&lt;.01","  26.0( 0.4),p&lt;.01","  26.0( 0.4),p&lt;.01","  26.2( 0.2),p&lt;.01","  26.2( 0.2),p&lt;.01","  26.5( 0.4),p&lt;.01","  26.7( 0.7),p&lt;.01","  26.8( 1.0),p&lt;.01","  45.3( 1.3),p&lt;.01","  32.7( 1.6),p&lt;.01","  39.8( 3.0),p&lt;.01","  41.4( 3.1),p&lt;.01","  41.1( 3.3),p&lt;.01","  39.4( 1.3),p&lt;.01","  38.9( 1.5),p&lt;.01","  38.4( 5.0),p&lt;.01","  40.2(10.3),p&lt;.01","  39.4(11.1),p&lt;.01"," 124.6( 7.2),p&lt;.01"," 172.0( 7.6),p&lt;.01"," 169.0(17.5),p&lt;.01"," 161.2(19.4),p&lt;.01"," 170.2(20.4),p&lt;.01"," 133.2( 9.4),p&lt;.01"," 130.3(10.0),p&lt;.01"," 162.1(28.7),p&lt;.01"," 154.7(49.7),p&lt;.01"," 160.4(61.4),p=.01","  44.7( 1.1),p&lt;.01","  32.8( 1.3),p&lt;.01","  34.6( 2.7),p&lt;.01","  34.9( 3.3),p&lt;.01","  36.0( 3.3),p&lt;.01","  43.7( 1.3),p&lt;.01","  44.9( 1.4),p&lt;.01","  32.2( 4.2),p&lt;.01","  34.0( 6.2),p&lt;.01","  34.2( 7.5),p&lt;.01","  13.9( 1.0),p&lt;.01","  18.4( 1.9),p&lt;.01","  19.0( 2.5),p&lt;.01","  19.3( 2.8),p&lt;.01","  20.5( 1.0),p&lt;.01","  19.3( 3.8),p&lt;.01","  24.2( 8.0),p&lt;.01","  13.5( 0.3),p&lt;.01","  11.2( 0.4),p&lt;.01","  13.4( 0.9),p&lt;.01","  13.6( 1.0),p&lt;.01","  13.8( 0.4),p&lt;.01","  13.7( 0.4),p&lt;.01","  14.1( 2.2),p&lt;.01","  12.9( 3.5),p&lt;.01","  13.7( 3.8),p&lt;.01","  31.4( 1.4),p&lt;.01","  45.3( 1.2),p&lt;.01","  32.4( 1.6),p&lt;.01","  39.1( 3.1),p&lt;.01","  40.6( 3.4),p&lt;.01","  40.6( 3.7),p&lt;.01","  39.5( 1.3),p&lt;.01","  38.5( 1.5),p&lt;.01","  39.2( 4.8),p&lt;.01","  40.9( 7.8),p&lt;.01","  40.5( 9.5),p&lt;.01"," 125.5( 7.2),p&lt;.01"," 175.1( 7.4),p&lt;.01"," 171.3(18.6),p&lt;.01"," 163.1(21.4),p&lt;.01"," 172.1(21.9),p&lt;.01"," 131.5( 9.9),p&lt;.01"," 159.6(30.6),p&lt;.01"," 153.9(58.3),p=.01"," 160.3(70.5),p=.02","   3.9( 0.1),p&lt;.01","   3.3( 0.1),p&lt;.01","   5.3( 0.1),p&lt;.01","   4.9( 0.1),p&lt;.01","   3.9( 0.1),p&lt;.01","   3.3( 0.1),p&lt;.01","   5.3( 0.1),p&lt;.01","   4.9( 0.1),p&lt;.01","  17.6( 0.2),p&lt;.01","  18.3( 0.3),p&lt;.01","   3.9( 0.1),p&lt;.01","   3.4( 0.1),p&lt;.01","   5.3( 0.1),p&lt;.01","   4.9( 0.1),p&lt;.01","   3.9( 0.1),p&lt;.01","   3.3( 0.1),p&lt;.01","   5.3( 0.1),p&lt;.01","   4.9( 0.1),p&lt;.01","   3.5( 0.1),p&lt;.01","   2.3( 0.2),p&lt;.01","   2.3( 0.2),p&lt;.01","   4.1( 0.1),p&lt;.01","   3.2( 0.3),p&lt;.01","   3.1( 0.3),p&lt;.01","   9.7( 0.1),p&lt;.01","   9.0( 0.1),p&lt;.01","   9.0( 0.1),p&lt;.01","   9.6( 0.1),p&lt;.01","   9.3( 0.2),p&lt;.01","   9.3( 0.2),p&lt;.01","   4.6( 0.1),p&lt;.01","   3.8( 0.2),p&lt;.01","   3.9( 0.2),p&lt;.01","   4.2( 0.1),p&lt;.01","   3.2( 0.3),p&lt;.01","   3.4( 0.3),p&lt;.01","   5.7( 0.1),p&lt;.01","   5.0( 0.1),p&lt;.01","   5.1( 0.2),p&lt;.01","   5.3( 0.1),p&lt;.01","   4.3( 0.2),p&lt;.01","   4.4( 0.2),p&lt;.01","   3.5( 0.1),p&lt;.01","   2.3( 0.1),p&lt;.01","   2.2( 0.2),p&lt;.01","   4.1( 0.1),p&lt;.01","   3.2( 0.2),p&lt;.01","   3.3( 0.2),p&lt;.01","   9.1( 0.1),p&lt;.01","   8.4( 0.2),p&lt;.01","   8.0( 0.3),p&lt;.01","   9.4( 0.3),p&lt;.01","   8.8( 0.2),p&lt;.01","   8.7( 0.2),p&lt;.01","   4.4( 0.1),p&lt;.01","   3.5( 0.1),p&lt;.01","   3.7( 0.1),p&lt;.01","   4.0( 0.1),p&lt;.01","   2.8( 0.2),p&lt;.01","   3.0( 0.2),p&lt;.01","   5.6( 0.1),p&lt;.01","   4.7( 0.1),p&lt;.01","   4.8( 0.1),p&lt;.01","   5.2( 0.1),p&lt;.01","   4.1( 0.2),p&lt;.01","   4.3( 0.2),p&lt;.01","   3.5( 0.1),p&lt;.01","   2.2( 0.1),p&lt;.01","   2.2( 0.1),p&lt;.01","   4.1( 0.1),p&lt;.01","   3.1( 0.2),p&lt;.01","   3.1( 0.2),p&lt;.01","   9.1( 0.1),p&lt;.01","   8.4( 0.2),p&lt;.01","   8.1( 0.2),p&lt;.01","   9.4( 0.1),p&lt;.01","   8.7( 0.2),p&lt;.01","   8.6( 0.2),p&lt;.01","   4.4( 0.8),p&lt;.01","   3.5( 0.1),p&lt;.01","   3.6( 0.1),p&lt;.01","   4.0( 0.1),p&lt;.01","   2.8( 0.2),p&lt;.01","   2.9( 0.2),p&lt;.01","   5.5( 0.6),p&lt;.01","   4.7( 0.1),p&lt;.01","   4.8( 0.1),p&lt;.01","   5.2( 0.1),p&lt;.01","   4.1( 0.2),p&lt;.01","   4.2( 0.2),p&lt;.01","  24.1( 5.1),p&lt;.01","  23.8( 4.7),p&lt;.01","  10.2( 3.0),p&lt;.01","  16.6( 2.5),p&lt;.01","  38.2( 6.5),p&lt;.01","  37.5( 5.6),p&lt;.01","  12.0( 2.2),p&lt;.01","  14.3( 2.1),p&lt;.01","  19.5( 4.7),p&lt;.01","  18.1( 4.7),p&lt;.01","  19.5( 4.8),p&lt;.01","  22.3( 3.9),p&lt;.01","  21.4( 3.7),p&lt;.01","  22.7( 3.9),p&lt;.01","  25.6( 5.2),p&lt;.01","  23.8( 5.1),p&lt;.01","  24.1( 5.4),p&lt;.01","  24.7( 4.8),p&lt;.01","  23.9( 4.6),p&lt;.01","  10.2( 3.0),p&lt;.01","   9.3( 2.9),p&lt;.01","  10.2( 3.0),p&lt;.01","  16.8( 2.4),p&lt;.01","  16.4( 2.4),p&lt;.01","  16.5( 2.5),p&lt;.01","  39.8( 6.7),p&lt;.01","  37.1( 6.4),p&lt;.01","  38.1( 6.7),p&lt;.01","  38.5( 5.5),p&lt;.01","  37.1( 5.1),p&lt;.01","  37.5( 5.5),p&lt;.01","  13.0( 2.4),p&lt;.01","  11.6( 2.1),p&lt;.01","  12.0( 2.2),p&lt;.01","  15.0( 2.2),p&lt;.01","  14.4( 2.0),p&lt;.01","  14.3( 2.1),p&lt;.01","  24.3( 0.4),p&lt;.01","  22.8( 0.4),p&lt;.01","  17.8( 0.2),p&lt;.01","  17.6( 0.2),p&lt;.01","  21.1( 0.3),p&lt;.01","  17.7( 0.3),p&lt;.01","  23.5( 0.4),p&lt;.01","  21.9( 0.4),p&lt;.01","  17.3( 0.2),p&lt;.01","  17.2( 0.2),p&lt;.01","  21.4( 0.3),p&lt;.01","  17.9( 0.3),p&lt;.01","  24.3( 0.4),p&lt;.01","  22.8( 0.4),p&lt;.01","  17.8( 0.2),p&lt;.01","  17.6( 0.2),p&lt;.01","  21.0( 0.3),p&lt;.01","  17.6( 0.3),p&lt;.01","  14.1( 0.1),p&lt;.01","  13.3( 0.1),p&lt;.01","  13.4( 0.1),p&lt;.01","  13.5( 0.2),p&lt;.01","  14.4( 0.1),p&lt;.01","  13.8( 0.2),p&lt;.01","  13.8( 0.2),p&lt;.01","  13.8( 0.3),p&lt;.01","   9.6( 0.1),p&lt;.01","   8.9( 0.1),p&lt;.01","   8.9( 0.1),p&lt;.01","   9.0( 0.2),p&lt;.01","   9.8( 0.2),p&lt;.01","   8.9( 0.3),p&lt;.01","   8.9( 0.3),p&lt;.01","   8.9( 0.3),p&lt;.01","  10.0( 0.1),p&lt;.01","   9.4( 0.1),p&lt;.01","   9.4( 0.1),p&lt;.01","   9.4( 0.2),p&lt;.01","  10.2( 0.1),p&lt;.01","   9.5( 0.2),p&lt;.01","   9.6( 0.2),p&lt;.01","   9.4( 0.3),p&lt;.01","  38.0( 0.4),p&lt;.01","  31.6( 0.7),p&lt;.01","  31.8( 0.7),p&lt;.01","  32.9( 0.8),p&lt;.01","  35.6( 0.8),p&lt;.01","  30.7( 1.2),p&lt;.01","  30.8( 1.1),p&lt;.01","  31.3( 1.3),p&lt;.01","   6.4( 0.1),p&lt;.01","   5.1( 0.2),p&lt;.01","   5.2( 0.2),p&lt;.01","   5.2( 0.2),p&lt;.01","   6.6( 0.2),p&lt;.01","   5.2( 0.3),p&lt;.01","   5.1( 0.3),p&lt;.01","   5.0( 0.3),p&lt;.01","   8.4( 0.1),p&lt;.01","   7.2( 0.2),p&lt;.01","   7.3( 0.2),p&lt;.01","   7.3( 0.2),p&lt;.01","   8.9( 0.2),p&lt;.01","   7.4( 0.2),p&lt;.01","   7.4( 0.2),p&lt;.01","   7.2( 0.3),p&lt;.01","   7.3( 0.1),p&lt;.01","   6.4( 0.1),p&lt;.01","   6.4( 0.1),p&lt;.01","   6.5( 0.2),p&lt;.01","   7.8( 0.1),p&lt;.01","   6.8( 0.2),p&lt;.01","   6.9( 0.2),p&lt;.01","   6.9( 0.2),p&lt;.01","   7.7( 0.0),p&lt;.01","   7.5( 0.1),p&lt;.01","   7.5( 0.1),p&lt;.01","   7.6( 0.1),p&lt;.01","   7.9( 0.0),p&lt;.01","   7.7( 0.1),p&lt;.01","   7.7( 0.1),p&lt;.01","   7.8( 0.1),p&lt;.01","   9.7( 0.1),p&lt;.01","   7.8( 0.3),p&lt;.01","   7.9( 0.3),p&lt;.01","   8.2( 0.3),p&lt;.01","  11.7( 0.3),p&lt;.01","   9.7( 0.4),p&lt;.01","   9.9( 0.4),p&lt;.01","  10.3( 0.5),p&lt;.01","  11.0( 0.2),p&lt;.01","   8.3( 0.3),p&lt;.01","   8.3( 0.3),p&lt;.01","   8.5( 0.4),p&lt;.01","  10.2( 0.4),p&lt;.01","   8.2( 0.7),p&lt;.01","   8.2( 0.7),p&lt;.01","   7.9( 0.7),p&lt;.01","   9.9( 0.3),p&lt;.01","  10.0( 0.3),p&lt;.01","  10.2( 0.4),p&lt;.01","  11.9( 0.4),p&lt;.01","   9.8( 0.6),p&lt;.01","   9.8( 0.6),p&lt;.01","   9.5( 0.7),p&lt;.01","  12.1( 0.1),p&lt;.01","   9.6( 0.2),p&lt;.01","   9.6( 0.2),p&lt;.01","   9.8( 0.3),p&lt;.01","  13.1( 0.3),p&lt;.01","  10.7( 0.4),p&lt;.01","  10.8( 0.4),p&lt;.01","  10.9( 0.5),p&lt;.01","  28.8( 0.1),p&lt;.01","  27.6( 0.2),p&lt;.01","  27.6( 0.2),p&lt;.01","  27.7( 0.2),p&lt;.01","  27.4( 0.3),p&lt;.01","  27.4( 0.3),p&lt;.01","  27.3( 0.3),p&lt;.01","   7.5( 0.1),p&lt;.01","   4.8( 0.2),p&lt;.01","   4.9( 0.2),p&lt;.01","   5.0( 0.2),p&lt;.01","   7.8( 0.2),p&lt;.01","   4.9( 0.3),p&lt;.01","   5.0( 0.3),p&lt;.01","   4.9( 0.4),p&lt;.01","  26.5( 0.4),p&lt;.01","  21.9( 0.7),p&lt;.01","  22.1( 0.7),p&lt;.01","  23.1( 0.8),p&lt;.01","  26.1( 0.7),p&lt;.01","  21.1( 1.1),p&lt;.01","  21.3( 1.0),p&lt;.01","  20.3( 1.2),p&lt;.01","   9.7( 0.1),p&lt;.01","   7.8( 0.3),p&lt;.01","   7.8( 0.3),p&lt;.01","  35.5( 1.0),p&lt;.01","  11.7( 0.3),p&lt;.01","   9.7( 0.4),p&lt;.01","   9.7( 0.4),p&lt;.01","  36.0( 1.7),p&lt;.01","   6.4( 0.1),p&lt;.01","   5.3( 0.2),p&lt;.01","   5.3( 0.2),p&lt;.01","   5.6( 0.2),p&lt;.01","   5.9( 0.2),p&lt;.01","   4.9( 0.3),p&lt;.01","   4.9( 0.3),p&lt;.01","   5.0( 0.3),p&lt;.01","  19.2( 0.2),p&lt;.01","  16.4( 0.4),p&lt;.01","  16.5( 0.3),p&lt;.01","  16.8( 0.4),p&lt;.01","  17.9( 0.3),p&lt;.01","  15.4( 0.5),p&lt;.01","  15.5( 0.5),p&lt;.01","  15.4( 0.6),p&lt;.01","   9.8( 0.0),p&lt;.01","   9.7( 0.1),p&lt;.01","   9.7( 0.1),p&lt;.01","   9.8( 0.1),p&lt;.01","   9.8( 0.1),p&lt;.01","   9.5( 0.1),p&lt;.01","   9.5( 0.1),p&lt;.01","   9.6( 0.2),p&lt;.01","  14.1( 0.1),p&lt;.01","  13.3( 0.1),p&lt;.01","  13.5( 0.2),p&lt;.01","  14.4( 0.1),p&lt;.01","  13.8( 0.2),p&lt;.01","  13.8( 0.2),p&lt;.01","  13.8( 0.3),p&lt;.01","   9.6( 0.1),p&lt;.01","   8.9( 0.1),p&lt;.01","   8.9( 0.1),p&lt;.01","   9.0( 0.2),p&lt;.01","   9.8( 0.2),p&lt;.01","   8.9( 0.3),p&lt;.01","   8.9( 0.3),p&lt;.01","   8.9( 0.3),p&lt;.01","  10.0( 0.1),p&lt;.01","   9.4( 0.1),p&lt;.01","   9.4( 0.1),p&lt;.01","   9.4( 0.2),p&lt;.01","  10.2( 0.1),p&lt;.01","   9.5( 0.2),p&lt;.01","   9.6( 0.2),p&lt;.01","   9.4( 0.3),p&lt;.01","  38.0( 0.4),p&lt;.01","  31.6( 0.7),p&lt;.01","  31.8( 0.7),p&lt;.01","  32.9( 0.8),p&lt;.01","  35.6( 0.8),p&lt;.01","  30.6( 1.2),p&lt;.01","  30.8( 1.1),p&lt;.01","  31.4( 1.3),p&lt;.01","   6.4( 0.1),p&lt;.01","   5.1( 0.2),p&lt;.01","   5.2( 0.2),p&lt;.01","   5.2( 0.2),p&lt;.01","   6.6( 0.2),p&lt;.01","   5.2( 0.3),p&lt;.01","   5.1( 0.3),p&lt;.01","   5.0( 0.3),p&lt;.01","   8.4( 0.1),p&lt;.01","   7.3( 0.2),p&lt;.01","   7.3( 0.2),p&lt;.01","   7.3( 0.2),p&lt;.01","   8.9( 0.2),p&lt;.01","   7.4( 0.2),p&lt;.01","   7.4( 0.2),p&lt;.01","   7.2( 0.3),p&lt;.01","   7.3( 0.1),p&lt;.01","   6.4( 0.1),p&lt;.01","   6.4( 0.1),p&lt;.01","   6.5( 0.2),p&lt;.01","   7.8( 0.1),p&lt;.01","   6.8( 0.2),p&lt;.01","   6.9( 0.2),p&lt;.01","   6.9( 0.2),p&lt;.01","   7.7( 0.0),p&lt;.01","   7.5( 0.1),p&lt;.01","   7.5( 0.1),p&lt;.01","   7.6( 0.1),p&lt;.01","   7.9( 0.1),p&lt;.01","   7.7( 0.1),p&lt;.01","   7.7( 0.1),p&lt;.01","   7.8( 0.1),p&lt;.01","   9.7( 0.1),p&lt;.01","   7.8( 0.3),p&lt;.01","   7.8( 0.3),p&lt;.01","   8.2( 0.3),p&lt;.01","  11.7( 0.3),p&lt;.01","   9.7( 0.4),p&lt;.01","   9.7( 0.4),p&lt;.01","  10.3( 0.5),p&lt;.01","  11.0( 0.2),p&lt;.01","   8.3( 0.3),p&lt;.01","   8.3( 0.3),p&lt;.01","   8.5( 0.4),p&lt;.01","  10.2( 0.4),p&lt;.01","   8.2( 0.7),p&lt;.01","   8.2( 0.7),p&lt;.01","   8.0( 0.7),p&lt;.01","  12.6( 0.2),p&lt;.01","   9.9( 0.3),p&lt;.01","  10.0( 0.3),p&lt;.01","  10.2( 0.4),p&lt;.01","  11.9( 0.4),p&lt;.01","   9.8( 0.6),p&lt;.01","   9.8( 0.6),p&lt;.01","   9.5( 0.7),p&lt;.01","  12.1( 0.1),p&lt;.01","   9.6( 0.2),p&lt;.01","   9.6( 0.2),p&lt;.01","   9.8( 0.3),p&lt;.01","  13.1( 0.3),p&lt;.01","  10.7( 0.4),p&lt;.01","  10.8( 0.4),p&lt;.01","  11.0( 0.5),p&lt;.01","  28.8( 0.1),p&lt;.01","  27.6( 0.2),p&lt;.01","  27.6( 0.2),p&lt;.01","  27.7( 0.2),p&lt;.01","  28.7( 0.2),p&lt;.01","  27.4( 0.3),p&lt;.01","  27.4( 0.3),p&lt;.01","  27.3( 0.3),p&lt;.01","   7.5( 0.1),p&lt;.01","   4.9( 0.2),p&lt;.01","   5.0( 0.2),p&lt;.01","   7.8( 0.2),p&lt;.01","   4.9( 0.3),p&lt;.01","   5.0( 0.3),p&lt;.01","   4.9( 0.4),p&lt;.01","  26.5( 0.4),p&lt;.01","  21.9( 0.7),p&lt;.01","  22.1( 0.7),p&lt;.01","  23.1( 0.8),p&lt;.01","  26.1( 0.7),p&lt;.01","  21.3( 1.0),p&lt;.01","  20.4( 1.2),p&lt;.01","  42.3( 0.5),p&lt;.01","  33.8( 0.9),p&lt;.01","  34.0( 0.9),p&lt;.01","  35.4( 1.1),p&lt;.01","  43.0( 1.0),p&lt;.01","  35.4( 1.5),p&lt;.01","   9.7( 0.4),p&lt;.01","  36.0( 1.7),p&lt;.01","   6.4( 0.1),p&lt;.01","   5.3( 0.2),p&lt;.01","   5.3( 0.2),p&lt;.01","   5.6( 0.2),p&lt;.01","   5.9( 0.2),p&lt;.01","   4.9( 0.3),p&lt;.01","   4.9( 0.3),p&lt;.01","   5.0( 0.3),p&lt;.01","  19.2( 0.2),p&lt;.01","  16.4( 0.4),p&lt;.01","  16.5( 0.3),p&lt;.01","  16.8( 0.4),p&lt;.01","  17.9( 0.3),p&lt;.01","  15.5( 0.5),p&lt;.01","  15.5( 0.5),p&lt;.01","  15.4( 0.6),p&lt;.01","   9.8( 0.0),p&lt;.01","   9.7( 0.1),p&lt;.01","   9.7( 0.1),p&lt;.01","   9.8( 0.1),p&lt;.01","   9.5( 0.1),p&lt;.01","   9.5( 0.1),p&lt;.01","   9.6( 0.2),p&lt;.01","  62.1( 0.1),p&lt;.01","  61.2( 0.2),p&lt;.01","  61.1( 0.2),p&lt;.01","  60.9( 0.1),p&lt;.01","  59.7( 0.2),p&lt;.01","  59.5( 0.2),p&lt;.01","  14.7( 0.8),p&lt;.01","  14.9( 1.8),p&lt;.01","   3.9( 0.1),p&lt;.01","   3.9( 0.3),p&lt;.01","   5.7( 0.1),p&lt;.01","   5.9( 0.3),p&lt;.01","  11.1( 0.4),p&lt;.01","  28.2( 1.2),p&lt;.01","  28.8( 2.7),p&lt;.01","  14.5( 0.6),p&lt;.01","  14.4( 0.7),p&lt;.01","  15.0( 0.7),p&lt;.01","  13.2( 0.9),p&lt;.01","  13.5( 0.9),p&lt;.01","  16.6( 1.5),p&lt;.01","   3.7( 0.1),p&lt;.01","   3.8( 0.1),p&lt;.01","   3.9( 0.1),p&lt;.01","   3.5( 0.2),p&lt;.01","   3.5( 0.2),p&lt;.01","   3.7( 0.3),p&lt;.01","   5.6( 0.1),p&lt;.01","   5.7( 0.1),p&lt;.01","   5.7( 0.1),p&lt;.01","   5.7( 0.1),p&lt;.01","   5.7( 0.2),p&lt;.01","   5.9( 0.2),p&lt;.01","  16.7( 0.4),p&lt;.01","  16.7( 0.4),p&lt;.01","  17.1( 0.4),p&lt;.01","  15.6( 0.6),p&lt;.01","  15.9( 0.5),p&lt;.01","  17.6( 0.7),p&lt;.01","  30.8( 1.1),p&lt;.01","  30.5( 1.0),p&lt;.01","  34.3( 1.1),p&lt;.01","  33.7( 1.2),p&lt;.01","   7.6( 0.2),p&lt;.01","   7.8( 0.2),p&lt;.01","   7.8( 0.2),p&lt;.01","   7.0( 0.2),p&lt;.01","   6.9( 0.3),p&lt;.01","   7.2( 0.4),p&lt;.01","  28.4( 0.3),p&lt;.01","  28.9( 0.2),p&lt;.01","  28.2( 0.4),p&lt;.01","  28.3( 0.3),p&lt;.01","  11.1( 0.3),p&lt;.01","  11.3( 0.3),p&lt;.01","  11.2( 0.4),p&lt;.01","  10.5( 0.5),p&lt;.01","  10.2( 0.6),p&lt;.01","  10.6( 0.9),p&lt;.01","  11.9( 0.5),p&lt;.01","  11.9( 0.5),p&lt;.01","  11.3( 0.6),p&lt;.01","  11.2( 0.6),p&lt;.01","  28.6( 1.0),p&lt;.01","  28.7( 1.1),p&lt;.01","  29.1( 1.2),p&lt;.01","  26.5( 1.5),p&lt;.01","  25.9( 1.4),p&lt;.01","  30.5( 2.3),p&lt;.01","  17.6( 0.6),p&lt;.01","  17.3( 0.6),p&lt;.01","  16.1( 1.1),p&lt;.01","  15.5( 1.0),p&lt;.01","  14.3( 0.7),p&lt;.01","  14.3( 0.7),p&lt;.01","  14.8( 0.8),p&lt;.01","  13.2( 1.0),p&lt;.01","  13.6( 0.9),p&lt;.01","  16.8( 1.5),p&lt;.01","   3.7( 0.1),p&lt;.01","   3.8( 0.1),p&lt;.01","   3.9( 0.1),p&lt;.01","   3.5( 0.2),p&lt;.01","   3.5( 0.2),p&lt;.01","   4.0( 0.3),p&lt;.01","   5.6( 0.1),p&lt;.01","   5.7( 0.1),p&lt;.01","   5.7( 0.1),p&lt;.01","   5.7( 0.1),p&lt;.01","   5.7( 0.2),p&lt;.01","   6.0( 0.3),p&lt;.01","  16.6( 0.4),p&lt;.01","  16.7( 0.4),p&lt;.01","  15.8( 0.5),p&lt;.01","  16.0( 0.5),p&lt;.01","  30.9( 1.1),p&lt;.01","  30.5( 1.0),p&lt;.01","  34.3( 1.1),p&lt;.01","  33.8( 1.2),p&lt;.01","   7.6( 0.2),p&lt;.01","   7.8( 0.2),p&lt;.01","   7.0( 0.3),p&lt;.01","   7.0( 0.3),p&lt;.01","  28.4( 0.3),p&lt;.01","  28.8( 0.2),p&lt;.01","  28.1( 0.4),p&lt;.01","  28.3( 0.3),p&lt;.01","  11.1( 0.3),p&lt;.01","  11.3( 0.3),p&lt;.01","  11.2( 0.4),p&lt;.01","  10.6( 0.6),p&lt;.01","  10.3( 0.6),p&lt;.01","  11.0( 0.8),p&lt;.01","  11.8( 0.5),p&lt;.01","  11.9( 0.5),p&lt;.01","  11.4( 0.6),p&lt;.01","  11.3( 0.5),p&lt;.01","  28.4( 1.1),p&lt;.01","  28.6( 1.1),p&lt;.01","  28.5( 1.2),p&lt;.01","  26.9( 1.6),p&lt;.01","  26.1( 1.4),p&lt;.01","  31.5( 2.4),p&lt;.01","  17.6( 0.6),p&lt;.01","  17.3( 0.6),p&lt;.01","  16.2( 1.0),p&lt;.01","  15.5( 1.0),p&lt;.01","--,p=  ----","  13.7( 0.2),p&lt;.01","  13.0( 0.2),p&lt;.01","  13.0( 0.2),p&lt;.01","  13.1( 0.3),p&lt;.01","--,p=  ----","  14.2( 0.3),p&lt;.01","  13.2( 0.3),p&lt;.01","  13.1( 0.4),p&lt;.01","  13.2( 0.5),p&lt;.01","--,p=  ----","  17.2( 0.4),p&lt;.01","  16.2( 0.4),p&lt;.01","  16.3( 0.4),p&lt;.01","  16.5( 0.5),p&lt;.01","--,p=  ----","  17.4( 0.6),p&lt;.01","  16.1( 0.6),p&lt;.01","  15.9( 0.6),p&lt;.01","  16.0( 0.8),p&lt;.01","--,p=  ----","   3.9( 0.1),p&lt;.01","   3.8( 0.1),p&lt;.01","   3.8( 0.1),p&lt;.01","   3.7( 0.1),p&lt;.01","   3.7( 0.1),p&lt;.01","--,p=  ----","   4.1( 0.1),p&lt;.01","   3.9( 0.1),p&lt;.01","   3.8( 0.1),p&lt;.01","   3.8( 0.2),p&lt;.01","   3.9( 0.2),p&lt;.01","--,p=  ----","   5.6( 0.1),p&lt;.01","   5.5( 0.1),p&lt;.01","   5.5( 0.1),p&lt;.01","   5.5( 0.1),p&lt;.01","   5.6( 0.1),p&lt;.01","--,p=  ----","   5.5( 0.1),p&lt;.01","   5.3( 0.1),p&lt;.01","   5.3( 0.1),p&lt;.01","   5.4( 0.1),p&lt;.01","   5.3( 0.1),p&lt;.01","  28.0( 0.4),p&lt;.01","  27.6( 0.4),p&lt;.01","  27.6( 0.4),p&lt;.01","  26.8( 0.5),p&lt;.01","  25.5( 0.6),p&lt;.01","  25.4( 0.6),p&lt;.01","--,p=  ----","  20.8( 0.2),p&lt;.01","  20.3( 0.3),p&lt;.01","  20.4( 0.3),p&lt;.01","  20.5( 0.3),p&lt;.01","--,p=  ----","  19.0( 0.3),p&lt;.01","  18.4( 0.3),p&lt;.01","  18.4( 0.4),p&lt;.01","  18.5( 0.5),p&lt;.01","--,p=  ----","  29.0( 0.5),p&lt;.01","  27.6( 0.4),p&lt;.01","  27.7( 0.4),p&lt;.01","  27.9( 0.6),p&lt;.01","--,p=  ----","  32.7( 0.6),p&lt;.01","  30.9( 0.6),p&lt;.01","  30.7( 0.6),p&lt;.01","  30.7( 0.8),p&lt;.01","--,p=  ----","  28.1( 0.1),p&lt;.01","  27.9( 0.1),p&lt;.01","  28.0( 0.1),p&lt;.01","  28.1( 0.1),p&lt;.01","--,p=  ----","  27.8( 0.2),p&lt;.01","  27.6( 0.2),p&lt;.01","  27.5( 0.2),p&lt;.01","  27.1( 0.2),p&lt;.01","--,p=  ----","  42.6( 1.1),p&lt;.01","  41.8( 1.2),p&lt;.01","  41.8( 1.3),p&lt;.01","  41.5( 1.6),p&lt;.01","--,p=  ----","  50.5( 1.7),p&lt;.01","  48.1( 1.9),p&lt;.01","  48.1( 2.0),p&lt;.01","  49.5( 2.7),p&lt;.01","--,p=  ----","  35.4( 0.6),p&lt;.01","  33.8( 0.6),p&lt;.01","  33.9( 0.6),p&lt;.01","  34.5( 0.7),p&lt;.01","--,p=  ----","  34.5( 0.8),p&lt;.01","  32.3( 0.9),p&lt;.01","  32.0( 0.9),p&lt;.01","  32.7( 1.1),p&lt;.01","--,p=  ----","  18.4( 0.3),p&lt;.01","  17.3( 0.3),p&lt;.01","  17.4( 0.3),p&lt;.01","  17.7( 0.3),p&lt;.01","--,p=  ----","  17.8( 0.4),p&lt;.01","  16.2( 0.4),p&lt;.01","  16.0( 0.4),p&lt;.01","  15.9( 0.6),p&lt;.01","  13.7( 0.2),p&lt;.01","  13.0( 0.2),p&lt;.01","  13.0( 0.2),p&lt;.01","  13.1( 0.3),p&lt;.01","  14.2( 0.3),p&lt;.01","  13.2( 0.3),p&lt;.01","  13.0( 0.4),p&lt;.01","  13.1( 0.5),p&lt;.01","  16.5( 0.5),p&lt;.01","  16.0( 0.8),p&lt;.01","   3.7( 0.1),p&lt;.01","   3.8( 0.2),p&lt;.01","   5.5( 0.1),p&lt;.01","   5.3( 0.1),p&lt;.01","  28.0( 0.4),p&lt;.01","  27.6( 0.4),p&lt;.01","  27.6( 0.4),p&lt;.01","  26.8( 0.5),p&lt;.01","  25.5( 0.6),p&lt;.01","  25.4( 0.6),p&lt;.01","  29.0( 0.5),p&lt;.01","  27.6( 0.4),p&lt;.01","  27.7( 0.4),p&lt;.01","  27.9( 0.6),p&lt;.01","  32.7( 0.6),p&lt;.01","  30.9( 0.6),p&lt;.01","  30.7( 0.6),p&lt;.01","  30.6( 0.8),p&lt;.01","  28.1( 0.1),p&lt;.01","  27.9( 0.1),p&lt;.01","  28.0( 0.1),p&lt;.01","  28.1( 0.1),p&lt;.01","  27.8( 0.2),p&lt;.01","  27.6( 0.2),p&lt;.01","  27.5( 0.2),p&lt;.01","  27.1( 0.2),p&lt;.01","  35.4( 0.6),p&lt;.01","  33.8( 0.6),p&lt;.01","  33.8( 0.6),p&lt;.01","  34.5( 0.7),p&lt;.01","  34.5( 0.8),p&lt;.01","  32.2( 0.8),p&lt;.01","  31.9( 0.8),p&lt;.01","  32.6( 1.1),p&lt;.01","  18.4( 0.3),p&lt;.01","  17.3( 0.3),p&lt;.01","  17.4( 0.3),p&lt;.01","  17.7( 0.3),p&lt;.01","  17.8( 0.4),p&lt;.01","  16.2( 0.4),p&lt;.01","  16.0( 0.4),p&lt;.01","  15.9( 0.6),p&lt;.01"],["  0.69( 0.18),p&lt;.01","  1.19( 0.26),p&lt;.01","  0.77( 0.43),p=.08","  0.81( 0.47),p=.09","  0.75( 0.47),p=.11","  0.93( 0.21),p&lt;.01","  0.93( 0.31),p&lt;.01","  1.84( 1.10),p=.10","  1.75( 1.40),p=.21","  1.43( 1.89),p=.45"," -0.01( 0.05),p=.81","  0.04( 0.07),p=.59","  0.01( 0.12),p=.94"," -0.05( 0.16),p=.76"," -0.06( 0.17),p=.73"," -0.02( 0.07),p=.79"," -0.02( 0.10),p=.86","  0.03( 0.35),p=.93","  0.18( 0.52),p=.73","  0.27( 0.58),p=.64"," -0.22( 0.19),p=.24"," -0.51( 0.29),p=.08"," -0.77( 0.69),p=.27"," -0.83( 0.78),p=.28"," -0.66( 0.74),p=.37"," -0.20( 0.23),p=.38"," -0.14( 0.35),p=.69","  0.81( 1.23),p=.51","  1.13( 1.73),p=.52","  0.94( 1.98),p=.64","  0.26( 0.07),p&lt;.01","  0.36( 0.10),p&lt;.01","  0.26( 0.17),p=.13","  0.30( 0.18),p=.10","  0.30( 0.20),p=.15","  0.20( 0.08),p=.02","  0.16( 0.11),p=.12"," -0.34( 0.45),p=.45"," -0.18( 0.59),p=.76"," -0.29( 0.62),p=.64","  0.55( 0.21),p=.01","  0.68( 0.32),p=.03","  0.50( 0.64),p=.43","  0.42( 0.71),p=.56","  0.52( 0.77),p=.50","  0.33( 0.26),p=.20","  0.26( 0.41),p=.53","  1.42( 1.01),p=.16","  1.34( 1.26),p=.29","  1.22( 1.31),p=.35"," -0.46( 0.14),p&lt;.01"," -0.60( 0.22),p=.01","  0.05( 0.49),p=.92","  0.24( 0.58),p=.67","  0.29( 0.64),p=.65"," -0.65( 0.18),p&lt;.01"," -1.34( 0.25),p&lt;.01"," -0.74( 0.78),p=.34"," -0.69( 1.12),p=.54"," -0.55( 1.22),p=.65","  0.13( 0.14),p=.37","  0.05( 0.23),p=.84"," -0.03( 0.35),p=.93"," -0.09( 0.44),p=.83","  0.07( 0.50),p=.89","  0.62( 0.24),p=.01","  1.07( 0.31),p&lt;.01","  1.77( 0.84),p=.04","  1.79( 1.07),p=.10","  1.81( 1.15),p=.11","  0.09( 0.05),p=.06","  0.10( 0.06),p=.12","  0.01( 0.21),p=.97"," -0.06( 0.29),p=.84"," -0.05( 0.34),p=.89","  0.09( 0.05),p=.06","  0.10( 0.06),p=.12","  0.01( 0.21),p=.97"," -0.06( 0.29),p=.84"," -0.05( 0.34),p=.89","  0.55( 0.23),p=.02","  1.03( 0.45),p=.02","  0.26( 0.60),p=.67","  0.32( 0.62),p=.60","  0.45( 0.60),p=.45","  0.52( 0.36),p=.14","  1.01( 0.59),p=.09","  0.87( 2.12),p=.68","  0.66( 2.43),p=.79","  0.65( 2.93),p=.82","  1.08( 1.33),p=.42","  1.12( 2.12),p=.60","  3.31( 4.16),p=.43","  3.44( 5.01),p=.49","  3.26( 5.09),p=.52","  1.79( 2.07),p=.39","  1.85( 3.17),p=.56"," -6.16( 8.66),p=.48"," -2.91(10.20),p=.78"," -2.39(11.58),p=.84","  0.05( 0.23),p=.81"," -0.22( 0.36),p=.54","  0.09( 0.65),p=.89","  0.33( 0.72),p=.65","  0.12( 0.77),p=.87"," -0.36( 0.30),p=.22"," -0.73( 0.46),p=.11","  1.55( 1.29),p=.23","  1.61( 2.17),p=.46","  1.28( 2.22),p=.56","  0.64( 0.18),p&lt;.01","  1.08( 0.26),p&lt;.01","  0.78( 0.39),p=.04","  0.81( 0.44),p=.07","  0.76( 0.47),p=.10","  1.00( 0.23),p&lt;.01","  1.04( 0.33),p&lt;.01","  1.64( 1.00),p=.10","  1.46( 1.58),p=.36","  1.17( 1.41),p=.41"," -0.02( 0.05),p=.67","  0.02( 0.07),p=.74"," -0.01( 0.13),p=.93"," -0.08( 0.17),p=.63"," -0.09( 0.17),p=.62"," -0.02( 0.08),p=.83"," -0.02( 0.11),p=.84","  0.09( 0.31),p=.78","  0.20( 0.35),p=.56","  0.41( 0.56),p=.47"," -0.27( 0.20),p=.17"," -0.57( 0.29),p=.05"," -0.70( 0.62),p=.26"," -0.73( 0.67),p=.28"," -0.56( 0.67),p=.40"," -0.26( 0.24),p=.28"," -0.15( 0.36),p=.67","  0.36( 0.99),p=.71","  0.66( 1.78),p=.71","  0.51( 2.25),p=.82","  0.23( 0.07),p&lt;.01","  0.30( 0.10),p=.01","  0.17( 0.17),p=.32","  0.21( 0.20),p=.30","  0.20( 0.22),p=.35","  0.19( 0.08),p=.02","  0.17( 0.11),p=.13"," -0.22( 0.44),p=.62"," -0.08( 0.56),p=.89"," -0.28( 0.77),p=.71","  0.58( 0.20),p&lt;.01","  0.66( 0.31),p=.03","  0.55( 0.62),p=.37","  0.46( 0.69),p=.50","  0.59( 0.79),p=.45","  0.33( 0.28),p=.24","  0.31( 0.43),p=.48","  1.31( 1.04),p=.21","  1.25( 1.26),p=.33","  1.03( 1.62),p=.53"," -0.44( 0.15),p&lt;.01"," -0.54( 0.23),p=.02","  0.10( 0.52),p=.85","  0.30( 0.61),p=.62","  0.33( 0.72),p=.65"," -0.60( 0.18),p&lt;.01"," -1.26( 0.26),p&lt;.01"," -0.62( 0.67),p=.35"," -0.62( 1.16),p=.59"," -0.36( 1.40),p=.79","  0.16( 0.14),p=.27","  0.06( 0.23),p=.78","  0.04( 0.35),p=.90"," -0.02( 0.44),p=.96","  0.13( 0.49),p=.80","  0.66( 0.24),p=.01","  1.11( 0.30),p&lt;.01","  1.55( 0.99),p=.12","  1.63( 1.29),p=.21","  0.05( 0.03),p=.11"," -0.01( 0.04),p=.78","  0.09( 0.07),p=.20","  0.10( 0.09),p=.29","  0.11( 0.09),p=.25","  0.10( 0.05),p=.07","  0.10( 0.06),p=.11"," -0.00( 0.17),p=.99"," -0.06( 0.29),p=.83"," -0.02( 0.34),p=.96","  0.57( 0.23),p=.01","  0.99( 0.42),p=.02","  0.20( 0.50),p=.69","  0.24( 0.57),p=.68","  0.36( 0.57),p=.53","  0.54( 0.35),p=.12","  1.08( 0.63),p=.09","  1.12( 1.45),p=.44","  0.86( 1.81),p=.64","  1.08( 1.93),p=.57","  1.36( 1.36),p=.32","  1.43( 2.08),p=.49","  4.13( 4.63),p=.37","  4.41( 5.71),p=.44","  4.30( 5.92),p=.47","  1.23( 2.12),p=.56","  3.13( 3.46),p=.36"," -1.54( 9.18),p=.87","  2.76(11.68),p=.81","  2.45(16.05),p=.88","  0.09( 0.21),p=.68"," -0.21( 0.32),p=.51"," -0.01( 0.62),p=.99","  0.24( 0.75),p=.75","  0.06( 0.79),p=.94"," -0.19( 0.31),p=.53"," -1.36( 0.47),p&lt;.01","  1.45( 1.34),p=.28","  1.45( 2.12),p=.49","  1.19( 2.05),p=.56","  1.12( 0.20),p&lt;.01","  0.73( 0.37),p=.05","  0.78( 0.47),p=.10","  0.73( 0.49),p=.14","  0.91( 0.27),p&lt;.01","  1.57( 1.53),p=.31","  1.40( 1.75),p=.42","  0.25( 0.07),p&lt;.01","  0.36( 0.11),p&lt;.01","  0.20( 0.18),p=.27","  0.24( 0.19),p=.19","  0.19( 0.08),p=.02","  0.16( 0.11),p=.14"," -0.34( 0.42),p=.42"," -0.10( 0.67),p=.89"," -0.31( 0.80),p=.70","  0.22( 0.23),p=.34","  0.55( 0.21),p=.01","  1.16( 0.44),p=.01","  0.56( 0.59),p=.34","  0.60( 0.68),p=.38","  0.62( 0.78),p=.42","  0.47( 0.34),p=.16","  1.05( 0.67),p=.12","  0.68( 1.62),p=.68","  0.48( 2.24),p=.83","  0.49( 2.27),p=.83","  0.80( 1.30),p=.54"," -0.55( 2.05),p=.79","  2.42( 5.06),p=.63","  2.91( 6.20),p=.64","  2.73( 6.22),p=.66","  2.26( 3.10),p=.47"," -0.02( 9.19),p=.99","  3.49(13.75),p=.80","  2.94(17.25),p=.86"," -0.04( 0.01),p&lt;.01","  0.01( 0.01),p=.61"," -0.04( 0.01),p&lt;.01"," -0.03( 0.01),p&lt;.01"," -0.04( 0.01),p&lt;.01","  0.01( 0.01),p=.61"," -0.04( 0.01),p&lt;.01"," -0.03( 0.01),p&lt;.01"," -0.08( 0.03),p&lt;.01"," -0.07( 0.04),p=.06"," -0.06( 0.01),p&lt;.01"," -0.02( 0.01),p=.11"," -0.05( 0.01),p&lt;.01"," -0.03( 0.01),p=.01"," -0.04( 0.01),p&lt;.01","  0.01( 0.01),p=.64"," -0.04( 0.01),p&lt;.01"," -0.03( 0.01),p&lt;.01"," -0.12( 0.02),p&lt;.01"," -0.07( 0.03),p=.01"," -0.04( 0.03),p=.23"," -0.14( 0.02),p&lt;.01"," -0.15( 0.05),p&lt;.01"," -0.11( 0.05),p=.02"," -0.07( 0.01),p&lt;.01"," -0.07( 0.03),p&lt;.01"," -0.07( 0.03),p=.01"," -0.08( 0.01),p&lt;.01"," -0.12( 0.03),p&lt;.01"," -0.12( 0.03),p&lt;.01"," -0.08( 0.02),p&lt;.01"," -0.03( 0.03),p=.34"," -0.01( 0.03),p=.87"," -0.10( 0.02),p&lt;.01"," -0.09( 0.05),p=.04"," -0.10( 0.04),p=.01"," -0.09( 0.01),p&lt;.01"," -0.07( 0.02),p&lt;.01"," -0.06( 0.03),p=.03"," -0.11( 0.02),p&lt;.01"," -0.08( 0.04),p=.08"," -0.07( 0.04),p=.09"," -0.15( 0.01),p&lt;.01"," -0.11( 0.02),p&lt;.01"," -0.07( 0.02),p&lt;.01"," -0.19( 0.01),p&lt;.01"," -0.24( 0.03),p&lt;.01"," -0.20( 0.04),p&lt;.01"," -0.16( 0.02),p&lt;.01"," -0.09( 0.04),p=.04"," -0.08( 0.05),p=.11"," -0.22( 0.03),p&lt;.01"," -0.22( 0.06),p&lt;.01"," -0.19( 0.05),p&lt;.01"," -0.06( 0.03),p=.05"," -0.04( 0.02),p=.10"," -0.03( 0.03),p=.17"," -0.07( 0.02),p&lt;.01"," -0.05( 0.03),p=.14"," -0.07( 0.03),p=.03"," -0.08( 0.01),p&lt;.01"," -0.08( 0.02),p&lt;.01"," -0.08( 0.02),p&lt;.01"," -0.09( 0.02),p&lt;.01"," -0.10( 0.03),p&lt;.01"," -0.12( 0.03),p&lt;.01"," -0.15( 0.01),p&lt;.01"," -0.11( 0.02),p&lt;.01"," -0.08( 0.02),p&lt;.01"," -0.19( 0.01),p&lt;.01"," -0.23( 0.03),p&lt;.01"," -0.18( 0.04),p&lt;.01"," -0.17( 0.08),p=.03"," -0.14( 0.06),p=.03"," -0.12( 0.04),p=.01"," -0.22( 0.07),p&lt;.01"," -0.23( 0.07),p&lt;.01"," -0.18( 0.05),p&lt;.01"," -0.08( 0.54),p=.89"," -0.05( 0.11),p=.63"," -0.04( 0.02),p=.09"," -0.08( 0.05),p=.08"," -0.06( 0.04),p=.20"," -0.06( 0.03),p=.05"," -0.09( 0.63),p=.89"," -0.09( 0.26),p=.74"," -0.08( 0.02),p&lt;.01"," -0.10( 0.05),p=.04"," -0.11( 0.05),p=.03"," -0.10( 0.03),p&lt;.01"," -0.17( 0.49),p=.72"," -0.08( 0.46),p=.87","  0.20( 0.29),p=.53"," -0.36( 0.27),p=.45","  0.02( 0.37),p=.96","  0.02( 0.52),p=.98","  0.34( 0.17),p=.05","  0.04( 0.18),p=.85"," -0.16( 0.39),p=.68"," -0.18( 0.41),p=.66"," -0.17( 0.44),p=.70"," -0.77( 0.38),p=.04"," -0.74( 0.42),p=.08"," -0.75( 0.45),p=.10"," -0.12( 0.45),p=.79"," -0.22( 0.48),p=.64"," -0.18( 0.54),p=.74"," -0.08( 0.41),p=.85"," -0.07( 0.43),p=.88","  0.27( 0.28),p=.41","  0.20( 0.26),p=.53","  0.20( 0.29),p=.55"," -0.35( 0.26),p=.47"," -0.33( 0.27),p=.50"," -0.34( 0.29),p=.43"," -0.03( 0.39),p=.95"," -0.02( 0.37),p=.96","  0.03( 0.39),p=.93"," -0.03( 0.45),p=.95"," -0.01( 0.46),p=.99","  0.04( 0.50),p=.94","  0.38( 0.17),p=.02","  0.35( 0.16),p=.02","  0.35( 0.16),p=.03","  0.03( 0.18),p=.86","  0.05( 0.19),p=.78","  0.04( 0.19),p=.84"," -0.35( 0.02),p&lt;.01"," -0.38( 0.03),p&lt;.01"," -0.16( 0.02),p&lt;.01"," -0.17( 0.02),p&lt;.01"," -0.31( 0.03),p&lt;.01"," -0.22( 0.03),p&lt;.01"," -0.38( 0.03),p&lt;.01"," -0.39( 0.04),p&lt;.01"," -0.16( 0.02),p&lt;.01"," -0.16( 0.03),p&lt;.01"," -0.48( 0.04),p&lt;.01"," -0.32( 0.04),p&lt;.01"," -0.34( 0.02),p&lt;.01"," -0.37( 0.03),p&lt;.01"," -0.17( 0.02),p&lt;.01"," -0.17( 0.02),p&lt;.01"," -0.29( 0.03),p&lt;.01"," -0.20( 0.03),p&lt;.01","  0.04( 0.01),p&lt;.01","  0.11( 0.04),p&lt;.01","  0.11( 0.04),p&lt;.01","  0.09( 0.04),p=.02"," -0.01( 0.02),p=.70","  0.06( 0.04),p=.12","  0.06( 0.04),p=.16","  0.06( 0.05),p=.24","  0.02( 0.03),p=.45","  0.05( 0.06),p=.41","  0.05( 0.06),p=.38","  0.07( 0.06),p=.31"," -0.14( 0.06),p=.02"," -0.07( 0.09),p=.43"," -0.07( 0.09),p=.45"," -0.08( 0.12),p=.49"," -0.01( 0.03),p=.79"," -0.06( 0.06),p=.26"," -0.06( 0.06),p=.27"," -0.03( 0.06),p=.59"," -0.17( 0.05),p&lt;.01"," -0.10( 0.08),p=.22"," -0.10( 0.08),p=.21"," -0.07( 0.10),p=.51"," -0.00( 0.10),p=.99"," -0.02( 0.20),p=.91"," -0.02( 0.20),p=.91"," -0.05( 0.21),p=.80","  0.05( 0.18),p=.80","  0.27( 0.32),p=.41","  0.27( 0.32),p=.40","  0.38( 0.35),p=.29"," -0.04( 0.03),p=.16","  0.00( 0.05),p=.99"," -0.00( 0.05),p=.98"," -0.01( 0.05),p=.90","  0.03( 0.06),p=.56","  0.01( 0.09),p=.92","  0.01( 0.09),p=.89","  0.04( 0.10),p=.68"," -0.01( 0.02),p=.62","  0.03( 0.05),p=.57","  0.03( 0.05),p=.61","  0.04( 0.06),p=.46"," -0.02( 0.05),p=.63","  0.05( 0.08),p=.53","  0.05( 0.08),p=.53","  0.01( 0.09),p=.95","  0.02( 0.02),p=.46","  0.06( 0.04),p=.18","  0.06( 0.04),p=.17","  0.07( 0.05),p=.16"," -0.05( 0.05),p=.29"," -0.06( 0.07),p=.37"," -0.06( 0.07),p=.38"," -0.10( 0.08),p=.21","  0.02( 0.01),p=.04","  0.03( 0.02),p=.06","  0.03( 0.02),p=.06","  0.02( 0.02),p=.34"," -0.03( 0.02),p=.19","  0.00( 0.03),p=.99"," -0.00( 0.03),p=.98"," -0.04( 0.05),p=.43","  0.01( 0.04),p=.68","  0.00( 0.08),p=.99"," -0.01( 0.07),p=.93"," -0.04( 0.08),p=.64","  0.00( 0.07),p=.99"," -0.04( 0.12),p=.73","  0.00( 0.12),p=.98"," -0.13( 0.15),p=.38","  0.45( 0.05),p&lt;.01","  0.25( 0.11),p=.02","  0.26( 0.11),p=.02","  0.27( 0.12),p=.03","  0.39( 0.11),p&lt;.01","  0.33( 0.19),p=.08","  0.33( 0.18),p=.08","  0.22( 0.24),p=.35","  0.29( 0.10),p=.01","  0.29( 0.10),p=.01","  0.26( 0.12),p=.03","  0.11( 0.09),p=.21","  0.16( 0.17),p=.33","  0.16( 0.17),p=.33","  0.14( 0.21),p=.52","  0.02( 0.04),p=.57","  0.03( 0.08),p=.69","  0.03( 0.08),p=.70","  0.03( 0.09),p=.71","  0.00( 0.08),p=.99","  0.10( 0.13),p=.43","  0.10( 0.13),p=.45","  0.05( 0.14),p=.74"," -0.03( 0.03),p=.30","  0.07( 0.07),p=.26","  0.07( 0.07),p=.25","  0.05( 0.07),p=.49","  0.05( 0.11),p=.66","  0.04( 0.10),p=.67","  0.01( 0.13),p=.92","  0.03( 0.02),p=.10","  0.04( 0.04),p=.38","  0.04( 0.04),p=.39","  0.04( 0.04),p=.38","  0.04( 0.04),p=.26","  0.10( 0.07),p=.18","  0.10( 0.07),p=.18","  0.07( 0.08),p=.35","  0.16( 0.08),p=.03","  0.29( 0.15),p=.05","  0.29( 0.15),p=.05","  0.28( 0.16),p=.09"," -0.03( 0.15),p=.86","  0.38( 0.27),p=.15","  0.37( 0.27),p=.17","  0.29( 0.31),p=.35","  0.01( 0.04),p=.68","  0.00( 0.08),p=.99","  0.00( 0.07),p=.97","  0.50( 0.22),p=.02","  0.00( 0.07),p=.99"," -0.04( 0.12),p=.73"," -0.04( 0.12),p=.76"," -0.07( 0.42),p=.86","  0.13( 0.03),p&lt;.01","  0.12( 0.05),p=.03","  0.12( 0.05),p=.03","  0.12( 0.06),p=.03","  0.01( 0.05),p=.78","  0.08( 0.08),p=.33","  0.08( 0.08),p=.33","  0.07( 0.11),p=.52","  0.37( 0.05),p&lt;.01","  0.40( 0.11),p&lt;.01","  0.40( 0.11),p&lt;.01","  0.40( 0.12),p&lt;.01","  0.11( 0.10),p=.25","  0.19( 0.16),p=.23","  0.19( 0.16),p=.23","  0.27( 0.20),p=.18","  0.01( 0.01),p=.09","  0.01( 0.02),p=.76","  0.01( 0.02),p=.72","  0.01( 0.03),p=.81","  0.02( 0.03),p=.53","  0.09( 0.05),p=.06","  0.09( 0.05),p=.08","  0.09( 0.06),p=.14","  0.04( 0.01),p&lt;.01","  0.11( 0.04),p&lt;.01","  0.09( 0.04),p=.01"," -0.01( 0.02),p=.80","  0.06( 0.04),p=.12","  0.06( 0.04),p=.16","  0.05( 0.05),p=.27","  0.02( 0.03),p=.49","  0.05( 0.06),p=.38","  0.05( 0.06),p=.36","  0.07( 0.07),p=.29"," -0.15( 0.06),p=.01"," -0.08( 0.09),p=.35"," -0.07( 0.09),p=.40"," -0.08( 0.11),p=.49"," -0.01( 0.03),p=.79"," -0.06( 0.06),p=.26"," -0.06( 0.06),p=.27"," -0.03( 0.06),p=.59"," -0.17( 0.05),p&lt;.01"," -0.10( 0.08),p=.22"," -0.10( 0.08),p=.20"," -0.07( 0.10),p=.54"," -0.01( 0.10),p=.92"," -0.01( 0.20),p=.98"," -0.00( 0.20),p=.98"," -0.04( 0.21),p=.86"," -0.00( 0.19),p=.99","  0.22( 0.32),p=.50","  0.23( 0.32),p=.47","  0.37( 0.35),p=.29"," -0.04( 0.03),p=.16","  0.00( 0.05),p=.99"," -0.00( 0.05),p=.98"," -0.01( 0.05),p=.90","  0.03( 0.06),p=.56","  0.01( 0.09),p=.92","  0.01( 0.09),p=.91","  0.04( 0.10),p=.69"," -0.01( 0.02),p=.59","  0.03( 0.05),p=.56","  0.03( 0.05),p=.60","  0.04( 0.06),p=.45"," -0.02( 0.04),p=.60","  0.05( 0.08),p=.54","  0.05( 0.08),p=.52","  0.01( 0.10),p=.91","  0.01( 0.02),p=.55","  0.06( 0.04),p=.16","  0.06( 0.04),p=.17","  0.07( 0.05),p=.15"," -0.05( 0.05),p=.27"," -0.06( 0.07),p=.36"," -0.06( 0.07),p=.38"," -0.10( 0.08),p=.21","  0.02( 0.01),p=.05","  0.03( 0.02),p=.06","  0.03( 0.02),p=.06","  0.02( 0.02),p=.33"," -0.03( 0.02),p=.16"," -0.00( 0.03),p=.90"," -0.00( 0.03),p=.91"," -0.04( 0.05),p=.41","  0.01( 0.04),p=.75","  0.00( 0.08),p=.96","  0.00( 0.07),p=.96"," -0.04( 0.08),p=.65"," -0.01( 0.07),p=.95"," -0.04( 0.12),p=.71"," -0.03( 0.12),p=.79"," -0.12( 0.15),p=.42","  0.44( 0.05),p&lt;.01","  0.26( 0.11),p=.02","  0.26( 0.11),p=.02","  0.28( 0.12),p=.02","  0.36( 0.11),p&lt;.01","  0.29( 0.19),p=.13","  0.30( 0.19),p=.11","  0.20( 0.23),p=.39","  0.35( 0.05),p&lt;.01","  0.30( 0.10),p&lt;.01","  0.30( 0.10),p&lt;.01","  0.27( 0.12),p=.02","  0.09( 0.09),p=.30","  0.14( 0.17),p=.41","  0.14( 0.17),p=.40","  0.12( 0.21),p=.55","  0.02( 0.04),p=.65","  0.04( 0.08),p=.64","  0.03( 0.08),p=.68","  0.04( 0.09),p=.69"," -0.01( 0.08),p=.92","  0.09( 0.13),p=.49","  0.09( 0.13),p=.48","  0.04( 0.14),p=.76"," -0.03( 0.03),p=.28","  0.08( 0.07),p=.21","  0.08( 0.07),p=.21","  0.06( 0.07),p=.42"," -0.09( 0.06),p=.18","  0.04( 0.11),p=.74","  0.04( 0.10),p=.74","  0.01( 0.13),p=.94","  0.03( 0.02),p=.10","  0.04( 0.04),p=.37","  0.04( 0.04),p=.36","  0.04( 0.04),p=.28","  0.09( 0.07),p=.18","  0.09( 0.07),p=.18","  0.07( 0.08),p=.36","  0.16( 0.08),p=.04","  0.29( 0.15),p=.05","  0.29( 0.15),p=.05","  0.28( 0.16),p=.09"," -0.06( 0.15),p=.67","  0.33( 0.26),p=.20","  0.26( 0.31),p=.39","  0.10( 0.11),p=.34","  0.37( 0.20),p=.07","  0.38( 0.20),p=.06","  0.52( 0.22),p=.02","  0.01( 0.19),p=.95"," -0.29( 0.34),p=.40"," -0.03( 0.12),p=.79"," -0.10( 0.41),p=.80","  0.13( 0.03),p&lt;.01","  0.12( 0.05),p=.03","  0.12( 0.05),p=.03","  0.13( 0.06),p=.03","  0.00( 0.05),p=.95","  0.06( 0.08),p=.44","  0.07( 0.08),p=.42","  0.07( 0.11),p=.54","  0.36( 0.05),p&lt;.01","  0.41( 0.11),p&lt;.01","  0.41( 0.11),p&lt;.01","  0.41( 0.12),p&lt;.01","  0.09( 0.10),p=.36","  0.17( 0.16),p=.29","  0.17( 0.16),p=.29","  0.26( 0.20),p=.20","  0.01( 0.01),p=.09","  0.01( 0.02),p=.76","  0.01( 0.02),p=.72","  0.02( 0.03),p=.53","  0.09( 0.05),p=.06","  0.08( 0.05),p=.10","  0.08( 0.06),p=.16"," -0.17( 0.04),p&lt;.01"," -0.21( 0.08),p=.03"," -0.27( 0.09),p=.01"," -0.38( 0.05),p&lt;.01"," -0.47( 0.08),p&lt;.01"," -0.37( 0.11),p&lt;.01"," -0.22( 0.12),p=.07"," -0.36( 0.22),p=.10"," -0.09( 0.03),p&lt;.01"," -0.15( 0.09),p=.10"," -0.08( 0.02),p&lt;.01"," -0.06( 0.06),p=.39"," -0.04( 0.07),p=.55"," -0.13( 0.20),p=.50"," -0.37( 0.41),p=.37"," -0.29( 0.08),p&lt;.01"," -0.28( 0.09),p&lt;.01"," -0.32( 0.10),p&lt;.01"," -0.48( 0.10),p&lt;.01"," -0.52( 0.12),p&lt;.01"," -0.57( 0.16),p&lt;.01"," -0.08( 0.02),p&lt;.01"," -0.09( 0.02),p&lt;.01"," -0.09( 0.03),p&lt;.01"," -0.06( 0.04),p=.15"," -0.06( 0.04),p=.20"," -0.02( 0.08),p=.80"," -0.06( 0.02),p&lt;.01"," -0.07( 0.02),p&lt;.01"," -0.07( 0.02),p&lt;.01"," -0.05( 0.03),p=.07"," -0.07( 0.03),p=.01"," -0.10( 0.05),p=.05"," -0.09( 0.07),p=.20"," -0.08( 0.08),p=.30"," -0.15( 0.07),p=.05"," -0.03( 0.13),p=.81"," -0.01( 0.12),p=.95","  0.08( 0.19),p=.68"," -0.34( 0.09),p&lt;.01"," -0.33( 0.11),p&lt;.01"," -0.48( 0.17),p=.01"," -0.47( 0.17),p=.01"," -0.06( 0.05),p=.18"," -0.06( 0.05),p=.23"," -0.05( 0.05),p=.30"," -0.07( 0.07),p=.31"," -0.03( 0.07),p=.68","  0.02( 0.09),p=.83"," -0.22( 0.07),p&lt;.01"," -0.27( 0.07),p&lt;.01"," -0.31( 0.13),p=.02"," -0.22( 0.11),p=.05"," -0.12( 0.06),p=.05"," -0.10( 0.05),p=.06"," -0.07( 0.06),p=.33"," -0.15( 0.09),p=.09"," -0.09( 0.09),p=.30","  0.04( 0.19),p=.84"," -0.22( 0.08),p&lt;.01"," -0.22( 0.08),p=.01"," -0.41( 0.15),p=.01"," -0.43( 0.16),p=.01"," -0.51( 0.16),p&lt;.01"," -0.52( 0.16),p&lt;.01"," -0.48( 0.17),p&lt;.01"," -0.52( 0.22),p=.02"," -0.57( 0.20),p&lt;.01"," -0.60( 0.30),p=.04"," -0.10( 0.08),p=.22"," -0.08( 0.09),p=.32"," -0.17( 0.11),p=.12"," -0.19( 0.12),p=.11"," -0.27( 0.08),p&lt;.01"," -0.25( 0.09),p=.01"," -0.19( 0.10),p=.07"," -0.47( 0.10),p&lt;.01"," -0.48( 0.11),p&lt;.01"," -0.42( 0.17),p=.01"," -0.08( 0.02),p&lt;.01"," -0.09( 0.02),p&lt;.01"," -0.09( 0.03),p&lt;.01"," -0.05( 0.04),p=.24"," -0.05( 0.04),p=.25"," -0.06( 0.09),p=.47"," -0.06( 0.02),p&lt;.01"," -0.07( 0.02),p&lt;.01"," -0.07( 0.02),p&lt;.01"," -0.04( 0.03),p=.11"," -0.06( 0.03),p=.02"," -0.10( 0.06),p=.08"," -0.07( 0.07),p=.33"," -0.05( 0.08),p=.52"," -0.06( 0.11),p=.58"," -0.04( 0.11),p=.72"," -0.33( 0.09),p&lt;.01"," -0.32( 0.10),p&lt;.01"," -0.51( 0.18),p&lt;.01"," -0.49( 0.17),p=.01"," -0.06( 0.05),p=.24"," -0.05( 0.05),p=.28"," -0.09( 0.07),p=.21"," -0.06( 0.08),p=.45"," -0.22( 0.07),p&lt;.01"," -0.27( 0.07),p&lt;.01"," -0.29( 0.12),p=.01"," -0.19( 0.10),p=.07"," -0.12( 0.06),p=.03"," -0.10( 0.05),p=.06"," -0.04( 0.07),p=.53"," -0.17( 0.07),p=.02"," -0.11( 0.07),p=.12","  0.13( 0.16),p=.41"," -0.22( 0.07),p&lt;.01"," -0.21( 0.08),p=.01"," -0.35( 0.14),p=.01"," -0.36( 0.15),p=.02"," -0.49( 0.14),p&lt;.01"," -0.49( 0.15),p&lt;.01"," -0.10( 0.19),p=.62"," -0.53( 0.19),p&lt;.01"," -0.56( 0.18),p&lt;.01"," -0.54( 0.33),p=.10"," -0.08( 0.08),p=.30"," -0.06( 0.08),p=.47"," -0.20( 0.11),p=.09"," -0.21( 0.12),p=.09","--,p=  ----"," -0.10( 0.02),p&lt;.01"," -0.10( 0.02),p&lt;.01"," -0.10( 0.02),p&lt;.01"," -0.12( 0.03),p&lt;.01","--,p=  ----"," -0.12( 0.02),p&lt;.01"," -0.13( 0.03),p&lt;.01"," -0.12( 0.03),p&lt;.01"," -0.14( 0.04),p&lt;.01","--,p=  ----"," -0.37( 0.03),p&lt;.01"," -0.37( 0.03),p&lt;.01"," -0.37( 0.03),p&lt;.01"," -0.36( 0.04),p&lt;.01","--,p=  ----"," -0.43( 0.04),p&lt;.01"," -0.42( 0.04),p&lt;.01"," -0.42( 0.04),p&lt;.01"," -0.42( 0.07),p&lt;.01","--,p=  ----"," -0.04( 0.01),p&lt;.01"," -0.04( 0.01),p&lt;.01"," -0.04( 0.01),p&lt;.01"," -0.04( 0.01),p&lt;.01"," -0.04( 0.01),p&lt;.01","--,p=  ----"," -0.06( 0.01),p&lt;.01"," -0.05( 0.01),p&lt;.01"," -0.05( 0.01),p&lt;.01"," -0.05( 0.01),p&lt;.01"," -0.05( 0.01),p&lt;.01","--,p=  ----"," -0.02( 0.01),p&lt;.01"," -0.03( 0.01),p&lt;.01"," -0.02( 0.01),p&lt;.01"," -0.03( 0.01),p&lt;.01"," -0.03( 0.01),p&lt;.01","--,p=  ----"," -0.02( 0.01),p=.01"," -0.02( 0.01),p=.03"," -0.02( 0.01),p=.04"," -0.03( 0.01),p=.06"," -0.03( 0.01),p=.06"," -0.53( 0.04),p&lt;.01"," -0.56( 0.04),p&lt;.01"," -0.56( 0.04),p&lt;.01"," -0.57( 0.06),p&lt;.01"," -0.58( 0.06),p&lt;.01"," -0.59( 0.07),p&lt;.01","--,p=  ----"," -0.20( 0.02),p&lt;.01"," -0.19( 0.02),p&lt;.01"," -0.18( 0.02),p&lt;.01"," -0.18( 0.03),p&lt;.01","--,p=  ----"," -0.18( 0.03),p&lt;.01"," -0.18( 0.03),p&lt;.01"," -0.18( 0.03),p&lt;.01"," -0.16( 0.04),p&lt;.01","--,p=  ----"," -0.31( 0.03),p&lt;.01"," -0.30( 0.04),p&lt;.01"," -0.29( 0.04),p&lt;.01"," -0.28( 0.05),p&lt;.01","--,p=  ----"," -0.20( 0.04),p&lt;.01"," -0.18( 0.04),p&lt;.01"," -0.18( 0.04),p&lt;.01"," -0.17( 0.06),p&lt;.01","--,p=  ----"," -0.27( 0.02),p&lt;.01"," -0.27( 0.02),p&lt;.01"," -0.27( 0.02),p&lt;.01"," -0.29( 0.03),p&lt;.01","--,p=  ----"," -0.15( 0.02),p&lt;.01"," -0.15( 0.02),p&lt;.01"," -0.15( 0.02),p&lt;.01"," -0.14( 0.03),p&lt;.01","--,p=  ----"," -1.00( 0.10),p&lt;.01"," -1.07( 0.11),p&lt;.01"," -1.04( 0.11),p&lt;.01"," -0.96( 0.11),p&lt;.01","--,p=  ----"," -1.37( 0.15),p&lt;.01"," -1.40( 0.16),p&lt;.01"," -1.45( 0.16),p&lt;.01"," -1.57( 0.20),p&lt;.01","--,p=  ----"," -0.85( 0.04),p&lt;.01"," -0.86( 0.04),p&lt;.01"," -0.86( 0.04),p&lt;.01"," -0.83( 0.06),p&lt;.01","--,p=  ----"," -0.96( 0.07),p&lt;.01"," -0.98( 0.07),p&lt;.01"," -0.98( 0.07),p&lt;.01"," -0.92( 0.09),p&lt;.01","--,p=  ----"," -0.11( 0.02),p&lt;.01"," -0.11( 0.02),p&lt;.01"," -0.11( 0.02),p&lt;.01"," -0.12( 0.02),p&lt;.01","--,p=  ----"," -0.11( 0.02),p&lt;.01"," -0.09( 0.02),p&lt;.01"," -0.09( 0.02),p&lt;.01"," -0.08( 0.04),p=.04"," -0.10( 0.02),p&lt;.01"," -0.10( 0.02),p&lt;.01"," -0.10( 0.02),p&lt;.01"," -0.12( 0.03),p&lt;.01"," -0.11( 0.03),p&lt;.01"," -0.11( 0.03),p&lt;.01"," -0.11( 0.03),p&lt;.01"," -0.11( 0.04),p&lt;.01"," -0.37( 0.03),p&lt;.01"," -0.41( 0.06),p&lt;.01"," -0.04( 0.01),p&lt;.01"," -0.05( 0.01),p&lt;.01"," -0.03( 0.01),p&lt;.01"," -0.02( 0.01),p=.08"," -0.53( 0.04),p&lt;.01"," -0.56( 0.04),p&lt;.01"," -0.56( 0.05),p&lt;.01"," -0.57( 0.06),p&lt;.01"," -0.58( 0.06),p&lt;.01"," -0.59( 0.06),p&lt;.01"," -0.31( 0.03),p&lt;.01"," -0.30( 0.04),p&lt;.01"," -0.30( 0.04),p&lt;.01"," -0.29( 0.05),p&lt;.01"," -0.20( 0.04),p&lt;.01"," -0.18( 0.04),p&lt;.01"," -0.19( 0.04),p&lt;.01"," -0.16( 0.06),p=.01"," -0.27( 0.02),p&lt;.01"," -0.27( 0.02),p&lt;.01"," -0.27( 0.02),p&lt;.01"," -0.29( 0.03),p&lt;.01"," -0.15( 0.02),p&lt;.01"," -0.15( 0.02),p&lt;.01"," -0.15( 0.02),p&lt;.01"," -0.14( 0.03),p&lt;.01"," -0.85( 0.04),p&lt;.01"," -0.86( 0.04),p&lt;.01"," -0.86( 0.04),p&lt;.01"," -0.82( 0.06),p&lt;.01"," -0.94( 0.06),p&lt;.01"," -0.95( 0.06),p&lt;.01"," -0.96( 0.06),p&lt;.01"," -0.89( 0.08),p&lt;.01"," -0.11( 0.02),p&lt;.01"," -0.11( 0.02),p&lt;.01"," -0.11( 0.02),p&lt;.01"," -0.13( 0.02),p&lt;.01"," -0.11( 0.02),p&lt;.01"," -0.09( 0.02),p&lt;.01"," -0.08( 0.02),p&lt;.01"," -0.07( 0.04),p=.05"]],"container":"<table class=\"cell-border stripe\">\n  <thead>\n    <tr>\n      <th> \u003c/th>\n      <th>study name\u003c/th>\n      <th>process a\u003c/th>\n      <th>process b\u003c/th>\n      <th>subgroup\u003c/th>\n      <th>model type\u003c/th>\n      <th>n\u003c/th>\n      <th>a gamma 00\u003c/th>\n      <th>a gamma 10\u003c/th>\n      <th>b gamma 00\u003c/th>\n      <th>b gamma 10\u003c/th>\n    \u003c/tr>\n  \u003c/thead>\n\u003c/table>","options":{"pageLength":6,"autoWidth":true,"order":[],"orderClasses":false,"columnDefs":[{"orderable":false,"targets":0}],"orderCellsTop":true,"lengthMenu":[6,10,25,50,100]},"callback":null,"caption":"<caption>Fixed Effects Growth Curve Model Solution\u003c/caption>","filter":"top","filterHTML":"<tr>\n  <td>\u003c/td>\n  <td data-type=\"factor\" style=\"vertical-align: top;\">\n    <div class=\"form-group has-feedback\" style=\"margin-bottom: auto;\">\n      <input type=\"search\" placeholder=\"All\" class=\"form-control\" style=\"width: 100%;\"/>\n      <span class=\"glyphicon glyphicon-remove-circle form-control-feedback\">\u003c/span>\n    \u003c/div>\n    <div style=\"width: 100%; display: none;\">\n      <select multiple=\"multiple\" style=\"width: 100%;\">\n        <option value=\"eas\">eas\u003c/option>\n        <option value=\"elsa\">elsa\u003c/option>\n        <option value=\"hrs\">hrs\u003c/option>\n        <option value=\"ilse\">ilse\u003c/option>\n        <option value=\"lasa\">lasa\u003c/option>\n        <option value=\"map\">map\u003c/option>\n        <option value=\"nuage\">nuage\u003c/option>\n        <option value=\"octo\">octo\u003c/option>\n        <option value=\"satsa\">satsa\u003c/option>\n      \u003c/select>\n    \u003c/div>\n  \u003c/td>\n  <td data-type=\"factor\" style=\"vertical-align: top;\">\n    <div class=\"form-group has-feedback\" style=\"margin-bottom: auto;\">\n      <input type=\"search\" placeholder=\"All\" class=\"form-control\" style=\"width: 100%;\"/>\n      <span class=\"glyphicon glyphicon-remove-circle form-control-feedback\">\u003c/span>\n    \u003c/div>\n    <div style=\"width: 100%; display: none;\">\n      <select multiple=\"multiple\" style=\"width: 100%;\">\n        <option value=\"fev\">fev\u003c/option>\n        <option value=\"fev100\">fev100\u003c/option>\n        <option value=\"gait\">gait\u003c/option>\n        <option value=\"grip\">grip\u003c/option>\n        <option value=\"pef\">pef\u003c/option>\n        <option value=\"tug\">tug\u003c/option>\n      \u003c/select>\n    \u003c/div>\n  \u003c/td>\n  <td data-type=\"factor\" style=\"vertical-align: top;\">\n    <div class=\"form-group has-feedback\" style=\"margin-bottom: auto;\">\n      <input type=\"search\" placeholder=\"All\" class=\"form-control\" style=\"width: 100%;\"/>\n      <span class=\"glyphicon glyphicon-remove-circle form-control-feedback\">\u003c/span>\n    \u003c/div>\n    <div style=\"width: 100%; display: none;\">\n      <select multiple=\"multiple\" style=\"width: 100%;\">\n        <option value=\"analogies\">analogies\u003c/option>\n        <option value=\"block\">block\u003c/option>\n        <option value=\"bnt\">bnt\u003c/option>\n        <option value=\"bstory_de\">bstory_de\u003c/option>\n        <option value=\"bstory_im\">bstory_im\u003c/option>\n        <option value=\"categories\">categories\u003c/option>\n        <option value=\"digit_b\">digit_b\u003c/option>\n        <option value=\"digit_f\">digit_f\u003c/option>\n        <option value=\"digit_o\">digit_o\u003c/option>\n        <option value=\"digit_tot\">digit_tot\u003c/option>\n        <option value=\"fas\">fas\u003c/option>\n        <option value=\"fig_id\">fig_id\u003c/option>\n        <option value=\"fig_logic\">fig_logic\u003c/option>\n        <option value=\"fig_mem\">fig_mem\u003c/option>\n        <option value=\"fluency\">fluency\u003c/option>\n        <option value=\"ideas\">ideas\u003c/option>\n        <option value=\"information\">information\u003c/option>\n        <option value=\"letter\">letter\u003c/option>\n        <option value=\"line\">line\u003c/option>\n        <option value=\"logic_de\">logic_de\u003c/option>\n        <option value=\"logic_im\">logic_im\u003c/option>\n        <option value=\"logic_tot\">logic_tot\u003c/option>\n        <option value=\"matrices\">matrices\u003c/option>\n        <option value=\"mir\">mir\u003c/option>\n        <option value=\"mmms\">mmms\u003c/option>\n        <option value=\"nart\">nart\u003c/option>\n        <option value=\"num_comp\">num_comp\u003c/option>\n        <option value=\"piccomp\">piccomp\u003c/option>\n        <option value=\"prose_im\">prose_im\u003c/option>\n        <option value=\"psif\">psif\u003c/option>\n        <option value=\"raven\">raven\u003c/option>\n        <option value=\"rotate\">rotate\u003c/option>\n        <option value=\"serial7\">serial7\u003c/option>\n        <option value=\"symbol\">symbol\u003c/option>\n        <option value=\"synonyms\">synonyms\u003c/option>\n        <option value=\"tics\">tics\u003c/option>\n        <option value=\"trailsb\">trailsb\u003c/option>\n        <option value=\"waisgeneral\">waisgeneral\u003c/option>\n        <option value=\"waisvocab\">waisvocab\u003c/option>\n        <option value=\"word_de\">word_de\u003c/option>\n        <option value=\"word_im\">word_im\u003c/option>\n        <option value=\"word_rec\">word_rec\u003c/option>\n      \u003c/select>\n    \u003c/div>\n  \u003c/td>\n  <td data-type=\"factor\" style=\"vertical-align: top;\">\n    <div class=\"form-group has-feedback\" style=\"margin-bottom: auto;\">\n      <input type=\"search\" placeholder=\"All\" class=\"form-control\" style=\"width: 100%;\"/>\n      <span class=\"glyphicon glyphicon-remove-circle form-control-feedback\">\u003c/span>\n    \u003c/div>\n    <div style=\"width: 100%; display: none;\">\n      <select multiple=\"multiple\" style=\"width: 100%;\">\n        <option value=\"female\">female\u003c/option>\n        <option value=\"male\">male\u003c/option>\n      \u003c/select>\n    \u003c/div>\n  \u003c/td>\n  <td data-type=\"factor\" style=\"vertical-align: top;\">\n    <div class=\"form-group has-feedback\" style=\"margin-bottom: auto;\">\n      <input type=\"search\" placeholder=\"All\" class=\"form-control\" style=\"width: 100%;\"/>\n      <span class=\"glyphicon glyphicon-remove-circle form-control-feedback\">\u003c/span>\n    \u003c/div>\n    <div style=\"width: 100%; display: none;\">\n      <select multiple=\"multiple\" style=\"width: 100%;\">\n        <option value=\"0\">0\u003c/option>\n        <option value=\"a\">a\u003c/option>\n        <option value=\"ae\">ae\u003c/option>\n        <option value=\"aeh\">aeh\u003c/option>\n        <option value=\"aehplus\">aehplus\u003c/option>\n        <option value=\"full\">full\u003c/option>\n      \u003c/select>\n    \u003c/div>\n  \u003c/td>\n  <td data-type=\"character\" style=\"vertical-align: top;\">\n    <div class=\"form-group has-feedback\" style=\"margin-bottom: auto;\">\n      <input type=\"search\" placeholder=\"All\" class=\"form-control\" style=\"width: 100%;\"/>\n      <span class=\"glyphicon glyphicon-remove-circle form-control-feedback\">\u003c/span>\n    \u003c/div>\n  \u003c/td>\n  <td data-type=\"character\" style=\"vertical-align: top;\">\n    <div class=\"form-group has-feedback\" style=\"margin-bottom: auto;\">\n      <input type=\"search\" placeholder=\"All\" class=\"form-control\" style=\"width: 100%;\"/>\n      <span class=\"glyphicon glyphicon-remove-circle form-control-feedback\">\u003c/span>\n    \u003c/div>\n  \u003c/td>\n  <td data-type=\"character\" style=\"vertical-align: top;\">\n    <div class=\"form-group has-feedback\" style=\"margin-bottom: auto;\">\n      <input type=\"search\" placeholder=\"All\" class=\"form-control\" style=\"width: 100%;\"/>\n      <span class=\"glyphicon glyphicon-remove-circle form-control-feedback\">\u003c/span>\n    \u003c/div>\n  \u003c/td>\n  <td data-type=\"character\" style=\"vertical-align: top;\">\n    <div class=\"form-group has-feedback\" style=\"margin-bottom: auto;\">\n      <input type=\"search\" placeholder=\"All\" class=\"form-control\" style=\"width: 100%;\"/>\n      <span class=\"glyphicon glyphicon-remove-circle form-control-feedback\">\u003c/span>\n    \u003c/div>\n  \u003c/td>\n  <td data-type=\"character\" style=\"vertical-align: top;\">\n    <div class=\"form-group has-feedback\" style=\"margin-bottom: auto;\">\n      <input type=\"search\" placeholder=\"All\" class=\"form-control\" style=\"width: 100%;\"/>\n      <span class=\"glyphicon glyphicon-remove-circle form-control-feedback\">\u003c/span>\n    \u003c/div>\n  \u003c/td>\n\u003c/tr>"},"evals":[],"jsHooks":[]}</script><!--/html_preserve-->

# Static Tables
The 'aehplus' model (with covariates *a*ge, *e*ducation, *h*ealth, and others) is shown for each combination of

* study,
* process, and
* gender.


##  eas 

<table>
 <thead>
  <tr>
   <th style="text-align:left;"> Processes </th>
   <th style="text-align:left;"> Gender </th>
   <th style="text-align:right;"> $n$ </th>
   <th style="text-align:right;"> $\gamma_{a,00}$ </th>
   <th style="text-align:right;"> $\gamma_{a,10}$ </th>
   <th style="text-align:right;"> $\gamma_{b,00}$ </th>
   <th style="text-align:right;"> $\gamma_{b,10}$ </th>
  </tr>
 </thead>
<tbody>
  <tr>
   <td style="text-align:left;"> gait--block </td>
   <td style="text-align:left;"> female </td>
   <td style="text-align:right;"> 150 </td>
   <td style="text-align:right;"> 110.4( 7.9),$p$&lt;.01 </td>
   <td style="text-align:right;"> -4.01( 2.39),$p$=.09 </td>
   <td style="text-align:right;"> 18.9( 2.3),$p$&lt;.01 </td>
   <td style="text-align:right;"> 0.81( 0.47),$p$=.09 </td>
  </tr>
  <tr>
   <td style="text-align:left;"> gait--block </td>
   <td style="text-align:left;"> male </td>
   <td style="text-align:right;"> 72 </td>
   <td style="text-align:right;"> 107.0(12.9),$p$&lt;.01 </td>
   <td style="text-align:right;"> -2.18( 4.47),$p$=.62 </td>
   <td style="text-align:right;"> 23.9( 7.1),$p$&lt;.01 </td>
   <td style="text-align:right;"> 1.75( 1.40),$p$=.21 </td>
  </tr>
  <tr>
   <td style="text-align:left;"> gait--bnt </td>
   <td style="text-align:left;"> female </td>
   <td style="text-align:right;"> 150 </td>
   <td style="text-align:right;"> 111.4( 8.2),$p$&lt;.01 </td>
   <td style="text-align:right;"> -4.45( 2.75),$p$=.10 </td>
   <td style="text-align:right;"> 10.8( 0.6),$p$&lt;.01 </td>
   <td style="text-align:right;"> -0.05( 0.16),$p$=.76 </td>
  </tr>
  <tr>
   <td style="text-align:left;"> gait--bnt </td>
   <td style="text-align:left;"> male </td>
   <td style="text-align:right;"> 72 </td>
   <td style="text-align:right;"> 105.4(17.0),$p$&lt;.01 </td>
   <td style="text-align:right;"> -1.28( 6.41),$p$=.84 </td>
   <td style="text-align:right;"> 11.0( 2.0),$p$&lt;.01 </td>
   <td style="text-align:right;"> 0.18( 0.52),$p$=.73 </td>
  </tr>
  <tr>
   <td style="text-align:left;"> gait--categories </td>
   <td style="text-align:left;"> female </td>
   <td style="text-align:right;"> 150 </td>
   <td style="text-align:right;"> 110.6( 8.0),$p$&lt;.01 </td>
   <td style="text-align:right;"> -3.98( 2.60),$p$=.13 </td>
   <td style="text-align:right;"> 38.7( 2.9),$p$&lt;.01 </td>
   <td style="text-align:right;"> -0.83( 0.78),$p$=.28 </td>
  </tr>
  <tr>
   <td style="text-align:left;"> gait--categories </td>
   <td style="text-align:left;"> male </td>
   <td style="text-align:right;"> 72 </td>
   <td style="text-align:right;"> 105.8(14.5),$p$&lt;.01 </td>
   <td style="text-align:right;"> -1.75( 4.93),$p$=.72 </td>
   <td style="text-align:right;"> 30.8( 7.7),$p$&lt;.01 </td>
   <td style="text-align:right;"> 1.13( 1.73),$p$=.52 </td>
  </tr>
  <tr>
   <td style="text-align:left;"> gait--digit_tot </td>
   <td style="text-align:left;"> female </td>
   <td style="text-align:right;"> 150 </td>
   <td style="text-align:right;"> 109.9( 7.9),$p$&lt;.01 </td>
   <td style="text-align:right;"> -3.29( 2.37),$p$=.16 </td>
   <td style="text-align:right;"> 13.5( 0.9),$p$&lt;.01 </td>
   <td style="text-align:right;"> 0.30( 0.18),$p$=.10 </td>
  </tr>
  <tr>
   <td style="text-align:left;"> gait--digit_tot </td>
   <td style="text-align:left;"> male </td>
   <td style="text-align:right;"> 72 </td>
   <td style="text-align:right;"> 105.9(13.2),$p$&lt;.01 </td>
   <td style="text-align:right;"> -1.81( 6.01),$p$=.76 </td>
   <td style="text-align:right;"> 14.5( 3.4),$p$&lt;.01 </td>
   <td style="text-align:right;"> -0.18( 0.59),$p$=.76 </td>
  </tr>
  <tr>
   <td style="text-align:left;"> gait--fas </td>
   <td style="text-align:left;"> female </td>
   <td style="text-align:right;"> 150 </td>
   <td style="text-align:right;"> 109.6( 8.3),$p$&lt;.01 </td>
   <td style="text-align:right;"> -3.10( 2.44),$p$=.20 </td>
   <td style="text-align:right;"> 30.5( 3.5),$p$&lt;.01 </td>
   <td style="text-align:right;"> 0.42( 0.71),$p$=.56 </td>
  </tr>
  <tr>
   <td style="text-align:left;"> gait--fas </td>
   <td style="text-align:left;"> male </td>
   <td style="text-align:right;"> 72 </td>
   <td style="text-align:right;"> 107.0(13.9),$p$&lt;.01 </td>
   <td style="text-align:right;"> -2.31( 4.48),$p$=.60 </td>
   <td style="text-align:right;"> 29.1( 7.5),$p$&lt;.01 </td>
   <td style="text-align:right;"> 1.34( 1.26),$p$=.29 </td>
  </tr>
  <tr>
   <td style="text-align:left;"> gait--information </td>
   <td style="text-align:left;"> female </td>
   <td style="text-align:right;"> 130 </td>
   <td style="text-align:right;"> 109.8( 8.6),$p$&lt;.01 </td>
   <td style="text-align:right;"> -3.18( 2.65),$p$=.23 </td>
   <td style="text-align:right;"> 13.2( 2.1),$p$&lt;.01 </td>
   <td style="text-align:right;"> 0.24( 0.58),$p$=.67 </td>
  </tr>
  <tr>
   <td style="text-align:left;"> gait--information </td>
   <td style="text-align:left;"> male </td>
   <td style="text-align:right;"> 70 </td>
   <td style="text-align:right;"> 104.2(15.2),$p$&lt;.01 </td>
   <td style="text-align:right;"> -0.88( 5.47),$p$=.87 </td>
   <td style="text-align:right;"> 18.3( 3.9),$p$&lt;.01 </td>
   <td style="text-align:right;"> -0.69( 1.12),$p$=.54 </td>
  </tr>
  <tr>
   <td style="text-align:left;"> gait--logic_tot </td>
   <td style="text-align:left;"> female </td>
   <td style="text-align:right;"> 150 </td>
   <td style="text-align:right;"> 110.3( 8.7),$p$&lt;.01 </td>
   <td style="text-align:right;"> -3.65( 2.58),$p$=.16 </td>
   <td style="text-align:right;"> 18.3( 2.1),$p$&lt;.01 </td>
   <td style="text-align:right;"> -0.09( 0.44),$p$=.83 </td>
  </tr>
  <tr>
   <td style="text-align:left;"> gait--logic_tot </td>
   <td style="text-align:left;"> male </td>
   <td style="text-align:right;"> 72 </td>
   <td style="text-align:right;"> 106.5(13.1),$p$&lt;.01 </td>
   <td style="text-align:right;"> -1.98( 4.91),$p$=.69 </td>
   <td style="text-align:right;"> 14.7( 5.2),$p$=.01 </td>
   <td style="text-align:right;"> 1.79( 1.07),$p$=.10 </td>
  </tr>
  <tr>
   <td style="text-align:left;"> gait--mmms </td>
   <td style="text-align:left;"> female </td>
   <td style="text-align:right;"> 72 </td>
   <td style="text-align:right;"> 105.7(13.0),$p$&lt;.01 </td>
   <td style="text-align:right;"> -1.64( 5.96),$p$=.78 </td>
   <td style="text-align:right;"> 26.7( 0.9),$p$&lt;.01 </td>
   <td style="text-align:right;"> -0.06( 0.29),$p$=.84 </td>
  </tr>
  <tr>
   <td style="text-align:left;"> gait--mmms </td>
   <td style="text-align:left;"> male </td>
   <td style="text-align:right;"> 72 </td>
   <td style="text-align:right;"> 105.7(13.0),$p$&lt;.01 </td>
   <td style="text-align:right;"> -1.64( 5.96),$p$=.78 </td>
   <td style="text-align:right;"> 26.7( 0.9),$p$&lt;.01 </td>
   <td style="text-align:right;"> -0.06( 0.29),$p$=.84 </td>
  </tr>
  <tr>
   <td style="text-align:left;"> gait--symbol </td>
   <td style="text-align:left;"> female </td>
   <td style="text-align:right;"> 150 </td>
   <td style="text-align:right;"> 109.4( 8.4),$p$&lt;.01 </td>
   <td style="text-align:right;"> -3.04( 2.84),$p$=.28 </td>
   <td style="text-align:right;"> 41.2( 3.3),$p$&lt;.01 </td>
   <td style="text-align:right;"> 0.32( 0.62),$p$=.60 </td>
  </tr>
  <tr>
   <td style="text-align:left;"> gait--symbol </td>
   <td style="text-align:left;"> male </td>
   <td style="text-align:right;"> 72 </td>
   <td style="text-align:right;"> 106.3(13.4),$p$&lt;.01 </td>
   <td style="text-align:right;"> -1.81( 4.79),$p$=.71 </td>
   <td style="text-align:right;"> 39.1(11.0),$p$&lt;.01 </td>
   <td style="text-align:right;"> 0.66( 2.43),$p$=.79 </td>
  </tr>
  <tr>
   <td style="text-align:left;"> gait--trailsb </td>
   <td style="text-align:left;"> female </td>
   <td style="text-align:right;"> 150 </td>
   <td style="text-align:right;"> 110.0( 8.3),$p$&lt;.01 </td>
   <td style="text-align:right;"> -3.51( 2.53),$p$=.17 </td>
   <td style="text-align:right;"> 162.5(17.9),$p$&lt;.01 </td>
   <td style="text-align:right;"> 3.44( 5.01),$p$=.49 </td>
  </tr>
  <tr>
   <td style="text-align:left;"> gait--trailsb </td>
   <td style="text-align:left;"> male </td>
   <td style="text-align:right;"> 72 </td>
   <td style="text-align:right;"> 107.0(17.0),$p$&lt;.01 </td>
   <td style="text-align:right;"> -2.18( 5.62),$p$=.70 </td>
   <td style="text-align:right;"> 163.4(43.6),$p$&lt;.01 </td>
   <td style="text-align:right;"> -2.91(10.20),$p$=.78 </td>
  </tr>
  <tr>
   <td style="text-align:left;"> gait--waisvocab </td>
   <td style="text-align:left;"> female </td>
   <td style="text-align:right;"> 150 </td>
   <td style="text-align:right;"> 109.8( 8.4),$p$&lt;.01 </td>
   <td style="text-align:right;"> -3.23( 2.68),$p$=.23 </td>
   <td style="text-align:right;"> 34.8( 3.2),$p$&lt;.01 </td>
   <td style="text-align:right;"> 0.33( 0.72),$p$=.65 </td>
  </tr>
  <tr>
   <td style="text-align:left;"> gait--waisvocab </td>
   <td style="text-align:left;"> male </td>
   <td style="text-align:right;"> 72 </td>
   <td style="text-align:right;"> 106.4(15.4),$p$&lt;.01 </td>
   <td style="text-align:right;"> -1.97( 5.80),$p$=.73 </td>
   <td style="text-align:right;"> 34.0( 6.7),$p$&lt;.01 </td>
   <td style="text-align:right;"> 1.61( 2.17),$p$=.46 </td>
  </tr>
  <tr>
   <td style="text-align:left;"> grip--block </td>
   <td style="text-align:left;"> female </td>
   <td style="text-align:right;"> 150 </td>
   <td style="text-align:right;"> 18.5( 1.7),$p$&lt;.01 </td>
   <td style="text-align:right;"> -2.35( 0.42),$p$&lt;.01 </td>
   <td style="text-align:right;"> 18.9( 2.4),$p$&lt;.01 </td>
   <td style="text-align:right;"> 0.81( 0.44),$p$=.07 </td>
  </tr>
  <tr>
   <td style="text-align:left;"> grip--block </td>
   <td style="text-align:left;"> male </td>
   <td style="text-align:right;"> 72 </td>
   <td style="text-align:right;"> 36.2( 5.1),$p$&lt;.01 </td>
   <td style="text-align:right;"> -2.33( 1.36),$p$=.09 </td>
   <td style="text-align:right;"> 24.1( 7.1),$p$&lt;.01 </td>
   <td style="text-align:right;"> 1.46( 1.58),$p$=.36 </td>
  </tr>
  <tr>
   <td style="text-align:left;"> grip--bnt </td>
   <td style="text-align:left;"> female </td>
   <td style="text-align:right;"> 150 </td>
   <td style="text-align:right;"> 18.6( 1.8),$p$&lt;.01 </td>
   <td style="text-align:right;"> -2.35( 0.47),$p$&lt;.01 </td>
   <td style="text-align:right;"> 10.8( 0.7),$p$&lt;.01 </td>
   <td style="text-align:right;"> -0.08( 0.17),$p$=.63 </td>
  </tr>
  <tr>
   <td style="text-align:left;"> grip--bnt </td>
   <td style="text-align:left;"> male </td>
   <td style="text-align:right;"> 72 </td>
   <td style="text-align:right;"> 36.5( 5.6),$p$&lt;.01 </td>
   <td style="text-align:right;"> -2.46( 1.47),$p$=.09 </td>
   <td style="text-align:right;"> 11.2( 1.8),$p$&lt;.01 </td>
   <td style="text-align:right;"> 0.20( 0.35),$p$=.56 </td>
  </tr>
  <tr>
   <td style="text-align:left;"> grip--categories </td>
   <td style="text-align:left;"> female </td>
   <td style="text-align:right;"> 150 </td>
   <td style="text-align:right;"> 18.7( 1.6),$p$&lt;.01 </td>
   <td style="text-align:right;"> -2.41( 0.47),$p$&lt;.01 </td>
   <td style="text-align:right;"> 38.5( 2.7),$p$&lt;.01 </td>
   <td style="text-align:right;"> -0.73( 0.67),$p$=.28 </td>
  </tr>
  <tr>
   <td style="text-align:left;"> grip--categories </td>
   <td style="text-align:left;"> male </td>
   <td style="text-align:right;"> 72 </td>
   <td style="text-align:right;"> 36.5( 6.0),$p$&lt;.01 </td>
   <td style="text-align:right;"> -2.52( 1.52),$p$=.10 </td>
   <td style="text-align:right;"> 30.0( 8.3),$p$&lt;.01 </td>
   <td style="text-align:right;"> 0.66( 1.78),$p$=.71 </td>
  </tr>
  <tr>
   <td style="text-align:left;"> grip--digit_tot </td>
   <td style="text-align:left;"> female </td>
   <td style="text-align:right;"> 150 </td>
   <td style="text-align:right;"> 18.6( 1.6),$p$&lt;.01 </td>
   <td style="text-align:right;"> -2.35( 0.48),$p$&lt;.01 </td>
   <td style="text-align:right;"> 13.7( 0.9),$p$&lt;.01 </td>
   <td style="text-align:right;"> 0.21( 0.20),$p$=.30 </td>
  </tr>
  <tr>
   <td style="text-align:left;"> grip--digit_tot </td>
   <td style="text-align:left;"> male </td>
   <td style="text-align:right;"> 72 </td>
   <td style="text-align:right;"> 36.4( 5.2),$p$&lt;.01 </td>
   <td style="text-align:right;"> -2.38( 1.39),$p$=.09 </td>
   <td style="text-align:right;"> 12.9( 3.5),$p$&lt;.01 </td>
   <td style="text-align:right;"> -0.08( 0.56),$p$=.89 </td>
  </tr>
  <tr>
   <td style="text-align:left;"> grip--fas </td>
   <td style="text-align:left;"> female </td>
   <td style="text-align:right;"> 150 </td>
   <td style="text-align:right;"> 18.6( 1.7),$p$&lt;.01 </td>
   <td style="text-align:right;"> -2.39( 0.42),$p$&lt;.01 </td>
   <td style="text-align:right;"> 30.4( 3.8),$p$&lt;.01 </td>
   <td style="text-align:right;"> 0.46( 0.69),$p$=.50 </td>
  </tr>
  <tr>
   <td style="text-align:left;"> grip--fas </td>
   <td style="text-align:left;"> male </td>
   <td style="text-align:right;"> 72 </td>
   <td style="text-align:right;"> 36.4( 5.0),$p$&lt;.01 </td>
   <td style="text-align:right;"> -2.39( 1.47),$p$=.10 </td>
   <td style="text-align:right;"> 25.4( 7.5),$p$&lt;.01 </td>
   <td style="text-align:right;"> 1.25( 1.26),$p$=.33 </td>
  </tr>
  <tr>
   <td style="text-align:left;"> grip--information </td>
   <td style="text-align:left;"> female </td>
   <td style="text-align:right;"> 145 </td>
   <td style="text-align:right;"> 18.5( 1.6),$p$&lt;.01 </td>
   <td style="text-align:right;"> -2.28( 0.48),$p$&lt;.01 </td>
   <td style="text-align:right;"> 13.1( 2.0),$p$&lt;.01 </td>
   <td style="text-align:right;"> 0.30( 0.61),$p$=.62 </td>
  </tr>
  <tr>
   <td style="text-align:left;"> grip--information </td>
   <td style="text-align:left;"> male </td>
   <td style="text-align:right;"> 72 </td>
   <td style="text-align:right;"> 36.2( 5.5),$p$&lt;.01 </td>
   <td style="text-align:right;"> -2.35( 1.78),$p$=.19 </td>
   <td style="text-align:right;"> 17.4( 3.8),$p$&lt;.01 </td>
   <td style="text-align:right;"> -0.62( 1.16),$p$=.59 </td>
  </tr>
  <tr>
   <td style="text-align:left;"> grip--logic_tot </td>
   <td style="text-align:left;"> female </td>
   <td style="text-align:right;"> 150 </td>
   <td style="text-align:right;"> 18.6( 1.6),$p$&lt;.01 </td>
   <td style="text-align:right;"> -2.36( 0.47),$p$&lt;.01 </td>
   <td style="text-align:right;"> 18.2( 2.1),$p$&lt;.01 </td>
   <td style="text-align:right;"> -0.02( 0.44),$p$=.96 </td>
  </tr>
  <tr>
   <td style="text-align:left;"> grip--logic_tot </td>
   <td style="text-align:left;"> male </td>
   <td style="text-align:right;"> 72 </td>
   <td style="text-align:right;"> 36.5( 5.6),$p$&lt;.01 </td>
   <td style="text-align:right;"> -2.46( 1.45),$p$=.09 </td>
   <td style="text-align:right;"> 15.8( 5.2),$p$&lt;.01 </td>
   <td style="text-align:right;"> 1.55( 0.99),$p$=.12 </td>
  </tr>
  <tr>
   <td style="text-align:left;"> grip--mmms </td>
   <td style="text-align:left;"> female </td>
   <td style="text-align:right;"> 150 </td>
   <td style="text-align:right;"> 18.5( 1.6),$p$&lt;.01 </td>
   <td style="text-align:right;"> -2.29( 0.51),$p$&lt;.01 </td>
   <td style="text-align:right;"> 26.0( 0.4),$p$&lt;.01 </td>
   <td style="text-align:right;"> 0.10( 0.09),$p$=.29 </td>
  </tr>
  <tr>
   <td style="text-align:left;"> grip--mmms </td>
   <td style="text-align:left;"> male </td>
   <td style="text-align:right;"> 72 </td>
   <td style="text-align:right;"> 36.6( 5.3),$p$&lt;.01 </td>
   <td style="text-align:right;"> -2.54( 1.75),$p$=.15 </td>
   <td style="text-align:right;"> 26.7( 0.7),$p$&lt;.01 </td>
   <td style="text-align:right;"> -0.06( 0.29),$p$=.83 </td>
  </tr>
  <tr>
   <td style="text-align:left;"> grip--symbol </td>
   <td style="text-align:left;"> female </td>
   <td style="text-align:right;"> 150 </td>
   <td style="text-align:right;"> 18.8( 1.7),$p$&lt;.01 </td>
   <td style="text-align:right;"> -2.51( 0.47),$p$&lt;.01 </td>
   <td style="text-align:right;"> 41.4( 3.1),$p$&lt;.01 </td>
   <td style="text-align:right;"> 0.24( 0.57),$p$=.68 </td>
  </tr>
  <tr>
   <td style="text-align:left;"> grip--symbol </td>
   <td style="text-align:left;"> male </td>
   <td style="text-align:right;"> 72 </td>
   <td style="text-align:right;"> 36.3( 4.6),$p$&lt;.01 </td>
   <td style="text-align:right;"> -2.34( 1.55),$p$=.13 </td>
   <td style="text-align:right;"> 40.2(10.3),$p$&lt;.01 </td>
   <td style="text-align:right;"> 0.86( 1.81),$p$=.64 </td>
  </tr>
  <tr>
   <td style="text-align:left;"> grip--trailsb </td>
   <td style="text-align:left;"> female </td>
   <td style="text-align:right;"> 150 </td>
   <td style="text-align:right;"> 18.7( 1.7),$p$&lt;.01 </td>
   <td style="text-align:right;"> -2.51( 0.45),$p$&lt;.01 </td>
   <td style="text-align:right;"> 161.2(19.4),$p$&lt;.01 </td>
   <td style="text-align:right;"> 4.41( 5.71),$p$=.44 </td>
  </tr>
  <tr>
   <td style="text-align:left;"> grip--trailsb </td>
   <td style="text-align:left;"> male </td>
   <td style="text-align:right;"> 72 </td>
   <td style="text-align:right;"> 36.4( 5.6),$p$&lt;.01 </td>
   <td style="text-align:right;"> -2.42( 1.24),$p$=.05 </td>
   <td style="text-align:right;"> 154.7(49.7),$p$&lt;.01 </td>
   <td style="text-align:right;"> 2.76(11.68),$p$=.81 </td>
  </tr>
  <tr>
   <td style="text-align:left;"> grip--waisvocab </td>
   <td style="text-align:left;"> female </td>
   <td style="text-align:right;"> 150 </td>
   <td style="text-align:right;"> 18.4( 1.8),$p$&lt;.01 </td>
   <td style="text-align:right;"> -2.24( 0.48),$p$&lt;.01 </td>
   <td style="text-align:right;"> 34.9( 3.3),$p$&lt;.01 </td>
   <td style="text-align:right;"> 0.24( 0.75),$p$=.75 </td>
  </tr>
  <tr>
   <td style="text-align:left;"> grip--waisvocab </td>
   <td style="text-align:left;"> male </td>
   <td style="text-align:right;"> 72 </td>
   <td style="text-align:right;"> 36.2( 5.5),$p$&lt;.01 </td>
   <td style="text-align:right;"> -2.29( 1.84),$p$=.21 </td>
   <td style="text-align:right;"> 34.0( 6.2),$p$&lt;.01 </td>
   <td style="text-align:right;"> 1.45( 2.12),$p$=.49 </td>
  </tr>
  <tr>
   <td style="text-align:left;"> pef--block </td>
   <td style="text-align:left;"> female </td>
   <td style="text-align:right;"> 150 </td>
   <td style="text-align:right;"> 345.3(25.9),$p$&lt;.01 </td>
   <td style="text-align:right;"> -28.93( 6.91),$p$&lt;.01 </td>
   <td style="text-align:right;"> 19.0( 2.5),$p$&lt;.01 </td>
   <td style="text-align:right;"> 0.78( 0.47),$p$=.10 </td>
  </tr>
  <tr>
   <td style="text-align:left;"> pef--block </td>
   <td style="text-align:left;"> male </td>
   <td style="text-align:right;"> 72 </td>
   <td style="text-align:right;"> 454.5(91.2),$p$&lt;.01 </td>
   <td style="text-align:right;"> -34.23(25.43),$p$=.18 </td>
   <td style="text-align:right;"> 24.2( 8.0),$p$&lt;.01 </td>
   <td style="text-align:right;"> 1.40( 1.75),$p$=.42 </td>
  </tr>
  <tr>
   <td style="text-align:left;"> pef--digit_tot </td>
   <td style="text-align:left;"> female </td>
   <td style="text-align:right;"> 150 </td>
   <td style="text-align:right;"> 347.9(25.1),$p$&lt;.01 </td>
   <td style="text-align:right;"> -30.34( 5.91),$p$&lt;.01 </td>
   <td style="text-align:right;"> 13.6( 1.0),$p$&lt;.01 </td>
   <td style="text-align:right;"> 0.24( 0.19),$p$=.19 </td>
  </tr>
  <tr>
   <td style="text-align:left;"> pef--digit_tot </td>
   <td style="text-align:left;"> male </td>
   <td style="text-align:right;"> 72 </td>
   <td style="text-align:right;"> 454.8(89.9),$p$&lt;.01 </td>
   <td style="text-align:right;"> -37.40(32.26),$p$=.25 </td>
   <td style="text-align:right;"> 12.9( 3.5),$p$&lt;.01 </td>
   <td style="text-align:right;"> -0.10( 0.67),$p$=.89 </td>
  </tr>
  <tr>
   <td style="text-align:left;"> pef--symbol </td>
   <td style="text-align:left;"> female </td>
   <td style="text-align:right;"> 150 </td>
   <td style="text-align:right;"> 338.9(25.8),$p$&lt;.01 </td>
   <td style="text-align:right;"> -25.21( 8.42),$p$&lt;.01 </td>
   <td style="text-align:right;"> 40.6( 3.4),$p$&lt;.01 </td>
   <td style="text-align:right;"> 0.60( 0.68),$p$=.38 </td>
  </tr>
  <tr>
   <td style="text-align:left;"> pef--symbol </td>
   <td style="text-align:left;"> male </td>
   <td style="text-align:right;"> 72 </td>
   <td style="text-align:right;"> 442.7(90.7),$p$&lt;.01 </td>
   <td style="text-align:right;"> -27.75(39.85),$p$=.49 </td>
   <td style="text-align:right;"> 40.9( 7.8),$p$&lt;.01 </td>
   <td style="text-align:right;"> 0.48( 2.24),$p$=.83 </td>
  </tr>
  <tr>
   <td style="text-align:left;"> pef--trailsb </td>
   <td style="text-align:left;"> female </td>
   <td style="text-align:right;"> 150 </td>
   <td style="text-align:right;"> 344.5(26.0),$p$&lt;.01 </td>
   <td style="text-align:right;"> -28.33( 7.03),$p$&lt;.01 </td>
   <td style="text-align:right;"> 163.1(21.4),$p$&lt;.01 </td>
   <td style="text-align:right;"> 2.91( 6.20),$p$=.64 </td>
  </tr>
  <tr>
   <td style="text-align:left;"> pef--trailsb </td>
   <td style="text-align:left;"> male </td>
   <td style="text-align:right;"> 72 </td>
   <td style="text-align:right;"> 445.4(93.9),$p$&lt;.01 </td>
   <td style="text-align:right;"> -29.81(37.75),$p$=.43 </td>
   <td style="text-align:right;"> 153.9(58.3),$p$=.01 </td>
   <td style="text-align:right;"> 3.49(13.75),$p$=.80 </td>
  </tr>
</tbody>
</table>


##  elsa 

<table>
 <thead>
  <tr>
   <th style="text-align:left;"> Processes </th>
   <th style="text-align:left;"> Gender </th>
   <th style="text-align:right;"> $n$ </th>
   <th style="text-align:right;"> $\gamma_{a,00}$ </th>
   <th style="text-align:right;"> $\gamma_{a,10}$ </th>
   <th style="text-align:right;"> $\gamma_{b,00}$ </th>
   <th style="text-align:right;"> $\gamma_{b,10}$ </th>
  </tr>
 </thead>
<tbody>
  <tr>
   <td style="text-align:left;"> fev--word_de </td>
   <td style="text-align:left;"> female </td>
   <td style="text-align:right;"> 3,511 </td>
   <td style="text-align:right;"> 1.9( 0.0),$p$&lt;.01 </td>
   <td style="text-align:right;"> -0.02( 0.00),$p$&lt;.01 </td>
   <td style="text-align:right;"> 3.9( 0.1),$p$&lt;.01 </td>
   <td style="text-align:right;"> -0.04( 0.01),$p$&lt;.01 </td>
  </tr>
  <tr>
   <td style="text-align:left;"> fev--word_de </td>
   <td style="text-align:left;"> male </td>
   <td style="text-align:right;"> 3,091 </td>
   <td style="text-align:right;"> 2.6( 0.0),$p$&lt;.01 </td>
   <td style="text-align:right;"> -0.02( 0.00),$p$&lt;.01 </td>
   <td style="text-align:right;"> 3.3( 0.1),$p$&lt;.01 </td>
   <td style="text-align:right;"> 0.01( 0.01),$p$=.61 </td>
  </tr>
  <tr>
   <td style="text-align:left;"> fev--word_im </td>
   <td style="text-align:left;"> female </td>
   <td style="text-align:right;"> 3,511 </td>
   <td style="text-align:right;"> 1.9( 0.0),$p$&lt;.01 </td>
   <td style="text-align:right;"> -0.02( 0.00),$p$&lt;.01 </td>
   <td style="text-align:right;"> 5.3( 0.1),$p$&lt;.01 </td>
   <td style="text-align:right;"> -0.04( 0.01),$p$&lt;.01 </td>
  </tr>
  <tr>
   <td style="text-align:left;"> fev--word_im </td>
   <td style="text-align:left;"> male </td>
   <td style="text-align:right;"> 3,091 </td>
   <td style="text-align:right;"> 2.6( 0.0),$p$&lt;.01 </td>
   <td style="text-align:right;"> -0.02( 0.00),$p$&lt;.01 </td>
   <td style="text-align:right;"> 4.9( 0.1),$p$&lt;.01 </td>
   <td style="text-align:right;"> -0.03( 0.01),$p$&lt;.01 </td>
  </tr>
  <tr>
   <td style="text-align:left;"> fev100--word_de </td>
   <td style="text-align:left;"> female </td>
   <td style="text-align:right;"> 3,511 </td>
   <td style="text-align:right;"> 188.5( 1.7),$p$&lt;.01 </td>
   <td style="text-align:right;"> -2.12( 0.19),$p$&lt;.01 </td>
   <td style="text-align:right;"> 3.9( 0.1),$p$&lt;.01 </td>
   <td style="text-align:right;"> -0.04( 0.01),$p$&lt;.01 </td>
  </tr>
  <tr>
   <td style="text-align:left;"> fev100--word_de </td>
   <td style="text-align:left;"> male </td>
   <td style="text-align:right;"> 3,091 </td>
   <td style="text-align:right;"> 262.6( 3.2),$p$&lt;.01 </td>
   <td style="text-align:right;"> -2.22( 0.44),$p$&lt;.01 </td>
   <td style="text-align:right;"> 3.3( 0.1),$p$&lt;.01 </td>
   <td style="text-align:right;"> 0.01( 0.01),$p$=.61 </td>
  </tr>
  <tr>
   <td style="text-align:left;"> fev100--word_im </td>
   <td style="text-align:left;"> female </td>
   <td style="text-align:right;"> 3,511 </td>
   <td style="text-align:right;"> 188.5( 1.7),$p$&lt;.01 </td>
   <td style="text-align:right;"> -2.13( 0.19),$p$&lt;.01 </td>
   <td style="text-align:right;"> 5.3( 0.1),$p$&lt;.01 </td>
   <td style="text-align:right;"> -0.04( 0.01),$p$&lt;.01 </td>
  </tr>
  <tr>
   <td style="text-align:left;"> fev100--word_im </td>
   <td style="text-align:left;"> male </td>
   <td style="text-align:right;"> 3,091 </td>
   <td style="text-align:right;"> 262.6( 3.2),$p$&lt;.01 </td>
   <td style="text-align:right;"> -2.20( 0.44),$p$&lt;.01 </td>
   <td style="text-align:right;"> 4.9( 0.1),$p$&lt;.01 </td>
   <td style="text-align:right;"> -0.03( 0.01),$p$&lt;.01 </td>
  </tr>
  <tr>
   <td style="text-align:left;"> gait--fluency </td>
   <td style="text-align:left;"> female </td>
   <td style="text-align:right;"> 3,510 </td>
   <td style="text-align:right;"> 0.8( 0.0),$p$&lt;.01 </td>
   <td style="text-align:right;"> -0.01( 0.00),$p$&lt;.01 </td>
   <td style="text-align:right;"> 17.6( 0.2),$p$&lt;.01 </td>
   <td style="text-align:right;"> -0.08( 0.03),$p$&lt;.01 </td>
  </tr>
  <tr>
   <td style="text-align:left;"> gait--fluency </td>
   <td style="text-align:left;"> male </td>
   <td style="text-align:right;"> 3,090 </td>
   <td style="text-align:right;"> 0.9( 0.0),$p$&lt;.01 </td>
   <td style="text-align:right;"> -0.01( 0.00),$p$&lt;.01 </td>
   <td style="text-align:right;"> 18.3( 0.3),$p$&lt;.01 </td>
   <td style="text-align:right;"> -0.07( 0.04),$p$=.06 </td>
  </tr>
  <tr>
   <td style="text-align:left;"> gait--word_de </td>
   <td style="text-align:left;"> female </td>
   <td style="text-align:right;"> 3,510 </td>
   <td style="text-align:right;"> 0.8( 0.0),$p$&lt;.01 </td>
   <td style="text-align:right;"> -0.01( 0.00),$p$&lt;.01 </td>
   <td style="text-align:right;"> 3.9( 0.1),$p$&lt;.01 </td>
   <td style="text-align:right;"> -0.06( 0.01),$p$&lt;.01 </td>
  </tr>
  <tr>
   <td style="text-align:left;"> gait--word_de </td>
   <td style="text-align:left;"> male </td>
   <td style="text-align:right;"> 3,090 </td>
   <td style="text-align:right;"> 0.9( 0.0),$p$&lt;.01 </td>
   <td style="text-align:right;"> -0.01( 0.00),$p$&lt;.01 </td>
   <td style="text-align:right;"> 3.4( 0.1),$p$&lt;.01 </td>
   <td style="text-align:right;"> -0.02( 0.01),$p$=.11 </td>
  </tr>
  <tr>
   <td style="text-align:left;"> gait--word_im </td>
   <td style="text-align:left;"> female </td>
   <td style="text-align:right;"> 3,510 </td>
   <td style="text-align:right;"> 0.8( 0.0),$p$&lt;.01 </td>
   <td style="text-align:right;"> -0.01( 0.00),$p$&lt;.01 </td>
   <td style="text-align:right;"> 5.3( 0.1),$p$&lt;.01 </td>
   <td style="text-align:right;"> -0.05( 0.01),$p$&lt;.01 </td>
  </tr>
  <tr>
   <td style="text-align:left;"> gait--word_im </td>
   <td style="text-align:left;"> male </td>
   <td style="text-align:right;"> 3,088 </td>
   <td style="text-align:right;"> 0.9( 0.0),$p$&lt;.01 </td>
   <td style="text-align:right;"> -0.01( 0.00),$p$&lt;.01 </td>
   <td style="text-align:right;"> 4.9( 0.1),$p$&lt;.01 </td>
   <td style="text-align:right;"> -0.03( 0.01),$p$=.01 </td>
  </tr>
  <tr>
   <td style="text-align:left;"> grip--word_de </td>
   <td style="text-align:left;"> female </td>
   <td style="text-align:right;"> 3,511 </td>
   <td style="text-align:right;"> 20.3( 0.2),$p$&lt;.01 </td>
   <td style="text-align:right;"> -0.29( 0.02),$p$&lt;.01 </td>
   <td style="text-align:right;"> 3.9( 0.1),$p$&lt;.01 </td>
   <td style="text-align:right;"> -0.04( 0.01),$p$&lt;.01 </td>
  </tr>
  <tr>
   <td style="text-align:left;"> grip--word_de </td>
   <td style="text-align:left;"> male </td>
   <td style="text-align:right;"> 3,091 </td>
   <td style="text-align:right;"> 34.3( 0.3),$p$&lt;.01 </td>
   <td style="text-align:right;"> -0.45( 0.04),$p$&lt;.01 </td>
   <td style="text-align:right;"> 3.3( 0.1),$p$&lt;.01 </td>
   <td style="text-align:right;"> 0.01( 0.01),$p$=.64 </td>
  </tr>
  <tr>
   <td style="text-align:left;"> grip--word_im </td>
   <td style="text-align:left;"> female </td>
   <td style="text-align:right;"> 3,511 </td>
   <td style="text-align:right;"> 20.3( 0.2),$p$&lt;.01 </td>
   <td style="text-align:right;"> -0.29( 0.02),$p$&lt;.01 </td>
   <td style="text-align:right;"> 5.3( 0.1),$p$&lt;.01 </td>
   <td style="text-align:right;"> -0.04( 0.01),$p$&lt;.01 </td>
  </tr>
  <tr>
   <td style="text-align:left;"> grip--word_im </td>
   <td style="text-align:left;"> male </td>
   <td style="text-align:right;"> 3,091 </td>
   <td style="text-align:right;"> 34.3( 0.3),$p$&lt;.01 </td>
   <td style="text-align:right;"> -0.45( 0.04),$p$&lt;.01 </td>
   <td style="text-align:right;"> 4.9( 0.1),$p$&lt;.01 </td>
   <td style="text-align:right;"> -0.03( 0.01),$p$&lt;.01 </td>
  </tr>
</tbody>
</table>


##  hrs 

<table>
 <thead>
  <tr>
   <th style="text-align:left;"> Processes </th>
   <th style="text-align:left;"> Gender </th>
   <th style="text-align:right;"> $n$ </th>
   <th style="text-align:right;"> $\gamma_{a,00}$ </th>
   <th style="text-align:right;"> $\gamma_{a,10}$ </th>
   <th style="text-align:right;"> $\gamma_{b,00}$ </th>
   <th style="text-align:right;"> $\gamma_{b,10}$ </th>
  </tr>
 </thead>
<tbody>
  <tr>
   <td style="text-align:left;"> gait--serial7 </td>
   <td style="text-align:left;"> female </td>
   <td style="text-align:right;"> 370 </td>
   <td style="text-align:right;"> 0.8( 0.0),$p$&lt;.01 </td>
   <td style="text-align:right;"> -0.03( 0.01),$p$&lt;.01 </td>
   <td style="text-align:right;"> 2.3( 0.2),$p$&lt;.01 </td>
   <td style="text-align:right;"> -0.04( 0.03),$p$=.23 </td>
  </tr>
  <tr>
   <td style="text-align:left;"> gait--serial7 </td>
   <td style="text-align:left;"> male </td>
   <td style="text-align:right;"> 318 </td>
   <td style="text-align:right;"> 0.9( 0.0),$p$&lt;.01 </td>
   <td style="text-align:right;"> -0.03( 0.01),$p$=.01 </td>
   <td style="text-align:right;"> 3.1( 0.3),$p$&lt;.01 </td>
   <td style="text-align:right;"> -0.11( 0.05),$p$=.02 </td>
  </tr>
  <tr>
   <td style="text-align:left;"> gait--tics </td>
   <td style="text-align:left;"> female </td>
   <td style="text-align:right;"> 370 </td>
   <td style="text-align:right;"> 0.8( 0.0),$p$&lt;.01 </td>
   <td style="text-align:right;"> -0.03( 0.01),$p$&lt;.01 </td>
   <td style="text-align:right;"> 9.0( 0.1),$p$&lt;.01 </td>
   <td style="text-align:right;"> -0.07( 0.03),$p$=.01 </td>
  </tr>
  <tr>
   <td style="text-align:left;"> gait--tics </td>
   <td style="text-align:left;"> male </td>
   <td style="text-align:right;"> 318 </td>
   <td style="text-align:right;"> 0.9( 0.0),$p$&lt;.01 </td>
   <td style="text-align:right;"> -0.02( 0.01),$p$=.02 </td>
   <td style="text-align:right;"> 9.3( 0.2),$p$&lt;.01 </td>
   <td style="text-align:right;"> -0.12( 0.03),$p$&lt;.01 </td>
  </tr>
  <tr>
   <td style="text-align:left;"> gait--word_de </td>
   <td style="text-align:left;"> female </td>
   <td style="text-align:right;"> 370 </td>
   <td style="text-align:right;"> 0.8( 0.0),$p$&lt;.01 </td>
   <td style="text-align:right;"> -0.03( 0.01),$p$&lt;.01 </td>
   <td style="text-align:right;"> 3.9( 0.2),$p$&lt;.01 </td>
   <td style="text-align:right;"> -0.01( 0.03),$p$=.87 </td>
  </tr>
  <tr>
   <td style="text-align:left;"> gait--word_de </td>
   <td style="text-align:left;"> male </td>
   <td style="text-align:right;"> 318 </td>
   <td style="text-align:right;"> 0.9( 0.0),$p$&lt;.01 </td>
   <td style="text-align:right;"> -0.02( 0.01),$p$=.03 </td>
   <td style="text-align:right;"> 3.4( 0.3),$p$&lt;.01 </td>
   <td style="text-align:right;"> -0.10( 0.04),$p$=.01 </td>
  </tr>
  <tr>
   <td style="text-align:left;"> gait--word_im </td>
   <td style="text-align:left;"> female </td>
   <td style="text-align:right;"> 370 </td>
   <td style="text-align:right;"> 0.8( 0.0),$p$&lt;.01 </td>
   <td style="text-align:right;"> -0.03( 0.01),$p$&lt;.01 </td>
   <td style="text-align:right;"> 5.1( 0.2),$p$&lt;.01 </td>
   <td style="text-align:right;"> -0.06( 0.03),$p$=.03 </td>
  </tr>
  <tr>
   <td style="text-align:left;"> gait--word_im </td>
   <td style="text-align:left;"> male </td>
   <td style="text-align:right;"> 318 </td>
   <td style="text-align:right;"> 0.9( 0.0),$p$&lt;.01 </td>
   <td style="text-align:right;"> -0.02( 0.01),$p$=.03 </td>
   <td style="text-align:right;"> 4.4( 0.2),$p$&lt;.01 </td>
   <td style="text-align:right;"> -0.07( 0.04),$p$=.09 </td>
  </tr>
  <tr>
   <td style="text-align:left;"> grip--serial7 </td>
   <td style="text-align:left;"> female </td>
   <td style="text-align:right;"> 641 </td>
   <td style="text-align:right;"> 23.6( 0.9),$p$&lt;.01 </td>
   <td style="text-align:right;"> -0.25( 0.19),$p$=.19 </td>
   <td style="text-align:right;"> 2.2( 0.2),$p$&lt;.01 </td>
   <td style="text-align:right;"> -0.07( 0.02),$p$&lt;.01 </td>
  </tr>
  <tr>
   <td style="text-align:left;"> grip--serial7 </td>
   <td style="text-align:left;"> male </td>
   <td style="text-align:right;"> 507 </td>
   <td style="text-align:right;"> 35.3( 1.1),$p$&lt;.01 </td>
   <td style="text-align:right;"> -0.57( 0.24),$p$=.02 </td>
   <td style="text-align:right;"> 3.3( 0.2),$p$&lt;.01 </td>
   <td style="text-align:right;"> -0.20( 0.04),$p$&lt;.01 </td>
  </tr>
  <tr>
   <td style="text-align:left;"> grip--tics </td>
   <td style="text-align:left;"> female </td>
   <td style="text-align:right;"> 641 </td>
   <td style="text-align:right;"> 23.7( 0.9),$p$&lt;.01 </td>
   <td style="text-align:right;"> -0.27( 0.18),$p$=.14 </td>
   <td style="text-align:right;"> 8.0( 0.3),$p$&lt;.01 </td>
   <td style="text-align:right;"> -0.08( 0.05),$p$=.11 </td>
  </tr>
  <tr>
   <td style="text-align:left;"> grip--tics </td>
   <td style="text-align:left;"> male </td>
   <td style="text-align:right;"> 507 </td>
   <td style="text-align:right;"> 35.3( 1.1),$p$&lt;.01 </td>
   <td style="text-align:right;"> -0.59( 0.23),$p$=.01 </td>
   <td style="text-align:right;"> 8.7( 0.2),$p$&lt;.01 </td>
   <td style="text-align:right;"> -0.19( 0.05),$p$&lt;.01 </td>
  </tr>
  <tr>
   <td style="text-align:left;"> grip--word_de </td>
   <td style="text-align:left;"> female </td>
   <td style="text-align:right;"> 641 </td>
   <td style="text-align:right;"> 23.6( 0.9),$p$&lt;.01 </td>
   <td style="text-align:right;"> -0.25( 0.19),$p$=.19 </td>
   <td style="text-align:right;"> 3.7( 0.1),$p$&lt;.01 </td>
   <td style="text-align:right;"> -0.03( 0.03),$p$=.17 </td>
  </tr>
  <tr>
   <td style="text-align:left;"> grip--word_de </td>
   <td style="text-align:left;"> male </td>
   <td style="text-align:right;"> 507 </td>
   <td style="text-align:right;"> 35.2( 1.1),$p$&lt;.01 </td>
   <td style="text-align:right;"> -0.51( 0.23),$p$=.03 </td>
   <td style="text-align:right;"> 3.0( 0.2),$p$&lt;.01 </td>
   <td style="text-align:right;"> -0.07( 0.03),$p$=.03 </td>
  </tr>
  <tr>
   <td style="text-align:left;"> grip--word_im </td>
   <td style="text-align:left;"> female </td>
   <td style="text-align:right;"> 641 </td>
   <td style="text-align:right;"> 23.6( 0.9),$p$&lt;.01 </td>
   <td style="text-align:right;"> -0.25( 0.19),$p$=.19 </td>
   <td style="text-align:right;"> 4.8( 0.1),$p$&lt;.01 </td>
   <td style="text-align:right;"> -0.08( 0.02),$p$&lt;.01 </td>
  </tr>
  <tr>
   <td style="text-align:left;"> grip--word_im </td>
   <td style="text-align:left;"> male </td>
   <td style="text-align:right;"> 507 </td>
   <td style="text-align:right;"> 35.2( 1.1),$p$&lt;.01 </td>
   <td style="text-align:right;"> -0.55( 0.23),$p$=.01 </td>
   <td style="text-align:right;"> 4.3( 0.2),$p$&lt;.01 </td>
   <td style="text-align:right;"> -0.12( 0.03),$p$&lt;.01 </td>
  </tr>
  <tr>
   <td style="text-align:left;"> pef--serial7 </td>
   <td style="text-align:left;"> female </td>
   <td style="text-align:right;"> 715 </td>
   <td style="text-align:right;"> 256.8( 6.2),$p$&lt;.01 </td>
   <td style="text-align:right;"> -2.16( 1.29),$p$=.09 </td>
   <td style="text-align:right;"> 2.2( 0.1),$p$&lt;.01 </td>
   <td style="text-align:right;"> -0.08( 0.02),$p$&lt;.01 </td>
  </tr>
  <tr>
   <td style="text-align:left;"> pef--serial7 </td>
   <td style="text-align:left;"> male </td>
   <td style="text-align:right;"> 535 </td>
   <td style="text-align:right;"> 339.4(14.5),$p$&lt;.01 </td>
   <td style="text-align:right;"> -6.00( 2.75),$p$=.03 </td>
   <td style="text-align:right;"> 3.1( 0.2),$p$&lt;.01 </td>
   <td style="text-align:right;"> -0.18( 0.04),$p$&lt;.01 </td>
  </tr>
  <tr>
   <td style="text-align:left;"> pef--tics </td>
   <td style="text-align:left;"> female </td>
   <td style="text-align:right;"> 715 </td>
   <td style="text-align:right;"> 257.0( 6.2),$p$&lt;.01 </td>
   <td style="text-align:right;"> -2.34( 1.28),$p$=.07 </td>
   <td style="text-align:right;"> 8.1( 0.2),$p$&lt;.01 </td>
   <td style="text-align:right;"> -0.12( 0.04),$p$=.01 </td>
  </tr>
  <tr>
   <td style="text-align:left;"> pef--tics </td>
   <td style="text-align:left;"> male </td>
   <td style="text-align:right;"> 535 </td>
   <td style="text-align:right;"> 339.4(14.5),$p$&lt;.01 </td>
   <td style="text-align:right;"> -5.94( 2.66),$p$=.03 </td>
   <td style="text-align:right;"> 8.6( 0.2),$p$&lt;.01 </td>
   <td style="text-align:right;"> -0.18( 0.05),$p$&lt;.01 </td>
  </tr>
  <tr>
   <td style="text-align:left;"> pef--word_de </td>
   <td style="text-align:left;"> female </td>
   <td style="text-align:right;"> 715 </td>
   <td style="text-align:right;"> 256.7( 6.2),$p$&lt;.01 </td>
   <td style="text-align:right;"> -2.11( 1.28),$p$=.10 </td>
   <td style="text-align:right;"> 3.6( 0.1),$p$&lt;.01 </td>
   <td style="text-align:right;"> -0.04( 0.02),$p$=.09 </td>
  </tr>
  <tr>
   <td style="text-align:left;"> pef--word_de </td>
   <td style="text-align:left;"> male </td>
   <td style="text-align:right;"> 535 </td>
   <td style="text-align:right;"> 339.2(14.5),$p$&lt;.01 </td>
   <td style="text-align:right;"> -5.64( 2.64),$p$=.03 </td>
   <td style="text-align:right;"> 2.9( 0.2),$p$&lt;.01 </td>
   <td style="text-align:right;"> -0.06( 0.03),$p$=.05 </td>
  </tr>
  <tr>
   <td style="text-align:left;"> pef--word_im </td>
   <td style="text-align:left;"> female </td>
   <td style="text-align:right;"> 715 </td>
   <td style="text-align:right;"> 256.7( 6.2),$p$&lt;.01 </td>
   <td style="text-align:right;"> -2.10( 1.28),$p$=.10 </td>
   <td style="text-align:right;"> 4.8( 0.1),$p$&lt;.01 </td>
   <td style="text-align:right;"> -0.08( 0.02),$p$&lt;.01 </td>
  </tr>
  <tr>
   <td style="text-align:left;"> pef--word_im </td>
   <td style="text-align:left;"> male </td>
   <td style="text-align:right;"> 535 </td>
   <td style="text-align:right;"> 339.3(14.5),$p$&lt;.01 </td>
   <td style="text-align:right;"> -5.61( 2.65),$p$=.04 </td>
   <td style="text-align:right;"> 4.2( 0.2),$p$&lt;.01 </td>
   <td style="text-align:right;"> -0.10( 0.03),$p$&lt;.01 </td>
  </tr>
</tbody>
</table>


##  ilse 

<table>
 <thead>
  <tr>
   <th style="text-align:left;"> Processes </th>
   <th style="text-align:left;"> Gender </th>
   <th style="text-align:right;"> $n$ </th>
   <th style="text-align:right;"> $\gamma_{a,00}$ </th>
   <th style="text-align:right;"> $\gamma_{a,10}$ </th>
   <th style="text-align:right;"> $\gamma_{b,00}$ </th>
   <th style="text-align:right;"> $\gamma_{b,10}$ </th>
  </tr>
 </thead>
<tbody>
  <tr>
   <td style="text-align:left;"> grip--fluency </td>
   <td style="text-align:left;"> female </td>
   <td style="text-align:right;"> 225 </td>
   <td style="text-align:right;"> 88.6(13.4),$p$&lt;.01 </td>
   <td style="text-align:right;"> -7.09( 2.24),$p$&lt;.01 </td>
   <td style="text-align:right;"> 24.1( 5.1),$p$&lt;.01 </td>
   <td style="text-align:right;"> -0.17( 0.49),$p$=.72 </td>
  </tr>
  <tr>
   <td style="text-align:left;"> grip--fluency </td>
   <td style="text-align:left;"> male </td>
   <td style="text-align:right;"> 252 </td>
   <td style="text-align:right;"> 95.0(12.8),$p$&lt;.01 </td>
   <td style="text-align:right;"> -2.83( 1.54),$p$=.07 </td>
   <td style="text-align:right;"> 23.8( 4.7),$p$&lt;.01 </td>
   <td style="text-align:right;"> -0.08( 0.46),$p$=.87 </td>
  </tr>
  <tr>
   <td style="text-align:left;"> grip--piccomp </td>
   <td style="text-align:left;"> female </td>
   <td style="text-align:right;"> 225 </td>
   <td style="text-align:right;"> 87.4(13.9),$p$&lt;.01 </td>
   <td style="text-align:right;"> -6.39( 2.31),$p$=.01 </td>
   <td style="text-align:right;"> 10.2( 3.0),$p$&lt;.01 </td>
   <td style="text-align:right;"> 0.20( 0.29),$p$=.53 </td>
  </tr>
  <tr>
   <td style="text-align:left;"> grip--piccomp </td>
   <td style="text-align:left;"> male </td>
   <td style="text-align:right;"> 252 </td>
   <td style="text-align:right;"> 94.7(12.5),$p$&lt;.01 </td>
   <td style="text-align:right;"> -2.76( 1.57),$p$=.08 </td>
   <td style="text-align:right;"> 16.6( 2.5),$p$&lt;.01 </td>
   <td style="text-align:right;"> -0.36( 0.27),$p$=.45 </td>
  </tr>
  <tr>
   <td style="text-align:left;"> grip--symbol </td>
   <td style="text-align:left;"> female </td>
   <td style="text-align:right;"> 225 </td>
   <td style="text-align:right;"> 87.5(13.5),$p$&lt;.01 </td>
   <td style="text-align:right;"> -6.55( 2.21),$p$&lt;.01 </td>
   <td style="text-align:right;"> 38.2( 6.5),$p$&lt;.01 </td>
   <td style="text-align:right;"> 0.02( 0.37),$p$=.96 </td>
  </tr>
  <tr>
   <td style="text-align:left;"> grip--symbol </td>
   <td style="text-align:left;"> male </td>
   <td style="text-align:right;"> 252 </td>
   <td style="text-align:right;"> 94.6(12.7),$p$&lt;.01 </td>
   <td style="text-align:right;"> -2.82( 1.59),$p$=.08 </td>
   <td style="text-align:right;"> 37.5( 5.6),$p$&lt;.01 </td>
   <td style="text-align:right;"> 0.02( 0.52),$p$=.98 </td>
  </tr>
  <tr>
   <td style="text-align:left;"> grip--waisgeneral </td>
   <td style="text-align:left;"> female </td>
   <td style="text-align:right;"> 225 </td>
   <td style="text-align:right;"> 87.8(14.2),$p$&lt;.01 </td>
   <td style="text-align:right;"> -6.77( 2.33),$p$&lt;.01 </td>
   <td style="text-align:right;"> 12.0( 2.2),$p$&lt;.01 </td>
   <td style="text-align:right;"> 0.34( 0.17),$p$=.05 </td>
  </tr>
  <tr>
   <td style="text-align:left;"> grip--waisgeneral </td>
   <td style="text-align:left;"> male </td>
   <td style="text-align:right;"> 252 </td>
   <td style="text-align:right;"> 94.6(13.2),$p$&lt;.01 </td>
   <td style="text-align:right;"> -2.64( 1.61),$p$=.10 </td>
   <td style="text-align:right;"> 14.3( 2.1),$p$&lt;.01 </td>
   <td style="text-align:right;"> 0.04( 0.18),$p$=.85 </td>
  </tr>
  <tr>
   <td style="text-align:left;"> tug--block </td>
   <td style="text-align:left;"> female </td>
   <td style="text-align:right;"> 225 </td>
   <td style="text-align:right;"> 4.8( 1.6),$p$&lt;.01 </td>
   <td style="text-align:right;"> 0.21( 0.20),$p$=.30 </td>
   <td style="text-align:right;"> 19.5( 4.8),$p$&lt;.01 </td>
   <td style="text-align:right;"> -0.17( 0.44),$p$=.70 </td>
  </tr>
  <tr>
   <td style="text-align:left;"> tug--block </td>
   <td style="text-align:left;"> male </td>
   <td style="text-align:right;"> 252 </td>
   <td style="text-align:right;"> 4.7( 1.1),$p$&lt;.01 </td>
   <td style="text-align:right;"> 0.28( 0.18),$p$=.11 </td>
   <td style="text-align:right;"> 22.7( 3.9),$p$&lt;.01 </td>
   <td style="text-align:right;"> -0.75( 0.45),$p$=.10 </td>
  </tr>
  <tr>
   <td style="text-align:left;"> tug--fluency </td>
   <td style="text-align:left;"> female </td>
   <td style="text-align:right;"> 225 </td>
   <td style="text-align:right;"> 4.8( 1.6),$p$&lt;.01 </td>
   <td style="text-align:right;"> 0.21( 0.20),$p$=.29 </td>
   <td style="text-align:right;"> 24.1( 5.4),$p$&lt;.01 </td>
   <td style="text-align:right;"> -0.18( 0.54),$p$=.74 </td>
  </tr>
  <tr>
   <td style="text-align:left;"> tug--piccomp </td>
   <td style="text-align:left;"> female </td>
   <td style="text-align:right;"> 225 </td>
   <td style="text-align:right;"> 4.8( 1.6),$p$&lt;.01 </td>
   <td style="text-align:right;"> 0.21( 0.20),$p$=.30 </td>
   <td style="text-align:right;"> 10.2( 3.0),$p$&lt;.01 </td>
   <td style="text-align:right;"> 0.20( 0.29),$p$=.55 </td>
  </tr>
  <tr>
   <td style="text-align:left;"> tug--piccomp </td>
   <td style="text-align:left;"> male </td>
   <td style="text-align:right;"> 252 </td>
   <td style="text-align:right;"> 4.8( 1.1),$p$&lt;.01 </td>
   <td style="text-align:right;"> 0.29( 0.18),$p$=.11 </td>
   <td style="text-align:right;"> 16.5( 2.5),$p$&lt;.01 </td>
   <td style="text-align:right;"> -0.34( 0.29),$p$=.43 </td>
  </tr>
  <tr>
   <td style="text-align:left;"> tug--symbol </td>
   <td style="text-align:left;"> female </td>
   <td style="text-align:right;"> 225 </td>
   <td style="text-align:right;"> 4.9( 1.5),$p$&lt;.01 </td>
   <td style="text-align:right;"> 0.19( 0.19),$p$=.33 </td>
   <td style="text-align:right;"> 38.1( 6.7),$p$&lt;.01 </td>
   <td style="text-align:right;"> 0.03( 0.39),$p$=.93 </td>
  </tr>
  <tr>
   <td style="text-align:left;"> tug--symbol </td>
   <td style="text-align:left;"> male </td>
   <td style="text-align:right;"> 252 </td>
   <td style="text-align:right;"> 4.9( 1.1),$p$&lt;.01 </td>
   <td style="text-align:right;"> 0.27( 0.18),$p$=.13 </td>
   <td style="text-align:right;"> 37.5( 5.5),$p$&lt;.01 </td>
   <td style="text-align:right;"> 0.04( 0.50),$p$=.94 </td>
  </tr>
  <tr>
   <td style="text-align:left;"> tug--waisgeneral </td>
   <td style="text-align:left;"> female </td>
   <td style="text-align:right;"> 225 </td>
   <td style="text-align:right;"> 4.8( 1.5),$p$&lt;.01 </td>
   <td style="text-align:right;"> 0.21( 0.19),$p$=.27 </td>
   <td style="text-align:right;"> 12.0( 2.2),$p$&lt;.01 </td>
   <td style="text-align:right;"> 0.35( 0.16),$p$=.03 </td>
  </tr>
  <tr>
   <td style="text-align:left;"> tug--waisgeneral </td>
   <td style="text-align:left;"> male </td>
   <td style="text-align:right;"> 252 </td>
   <td style="text-align:right;"> 4.9( 1.1),$p$&lt;.01 </td>
   <td style="text-align:right;"> 0.26( 0.19),$p$=.16 </td>
   <td style="text-align:right;"> 14.3( 2.1),$p$&lt;.01 </td>
   <td style="text-align:right;"> 0.04( 0.19),$p$=.84 </td>
  </tr>
</tbody>
</table>


##  lasa 

<table>
 <thead>
  <tr>
   <th style="text-align:left;"> Processes </th>
   <th style="text-align:left;"> Gender </th>
   <th style="text-align:right;"> $n$ </th>
   <th style="text-align:right;"> $\gamma_{a,00}$ </th>
   <th style="text-align:right;"> $\gamma_{a,10}$ </th>
   <th style="text-align:right;"> $\gamma_{b,00}$ </th>
   <th style="text-align:right;"> $\gamma_{b,10}$ </th>
  </tr>
 </thead>
<tbody>
  <tr>
   <td style="text-align:left;"> gait--letter </td>
   <td style="text-align:left;"> female </td>
   <td style="text-align:right;"> 782 </td>
   <td style="text-align:right;"> 7.8( 0.2),$p$&lt;.01 </td>
   <td style="text-align:right;"> 0.42( 0.05),$p$&lt;.01 </td>
   <td style="text-align:right;"> 24.3( 0.4),$p$&lt;.01 </td>
   <td style="text-align:right;"> -0.35( 0.02),$p$&lt;.01 </td>
  </tr>
  <tr>
   <td style="text-align:left;"> gait--letter </td>
   <td style="text-align:left;"> male </td>
   <td style="text-align:right;"> 800 </td>
   <td style="text-align:right;"> 7.2( 0.1),$p$&lt;.01 </td>
   <td style="text-align:right;"> 0.42( 0.06),$p$&lt;.01 </td>
   <td style="text-align:right;"> 22.8( 0.4),$p$&lt;.01 </td>
   <td style="text-align:right;"> -0.38( 0.03),$p$&lt;.01 </td>
  </tr>
  <tr>
   <td style="text-align:left;"> gait--raven </td>
   <td style="text-align:left;"> female </td>
   <td style="text-align:right;"> 782 </td>
   <td style="text-align:right;"> 7.8( 0.2),$p$&lt;.01 </td>
   <td style="text-align:right;"> 0.42( 0.05),$p$&lt;.01 </td>
   <td style="text-align:right;"> 17.8( 0.2),$p$&lt;.01 </td>
   <td style="text-align:right;"> -0.16( 0.02),$p$&lt;.01 </td>
  </tr>
  <tr>
   <td style="text-align:left;"> gait--raven </td>
   <td style="text-align:left;"> male </td>
   <td style="text-align:right;"> 800 </td>
   <td style="text-align:right;"> 7.2( 0.1),$p$&lt;.01 </td>
   <td style="text-align:right;"> 0.42( 0.06),$p$&lt;.01 </td>
   <td style="text-align:right;"> 17.6( 0.2),$p$&lt;.01 </td>
   <td style="text-align:right;"> -0.17( 0.02),$p$&lt;.01 </td>
  </tr>
  <tr>
   <td style="text-align:left;"> gait--word_im </td>
   <td style="text-align:left;"> female </td>
   <td style="text-align:right;"> 782 </td>
   <td style="text-align:right;"> 7.8( 0.2),$p$&lt;.01 </td>
   <td style="text-align:right;"> 0.42( 0.05),$p$&lt;.01 </td>
   <td style="text-align:right;"> 21.1( 0.3),$p$&lt;.01 </td>
   <td style="text-align:right;"> -0.31( 0.03),$p$&lt;.01 </td>
  </tr>
  <tr>
   <td style="text-align:left;"> gait--word_im </td>
   <td style="text-align:left;"> male </td>
   <td style="text-align:right;"> 800 </td>
   <td style="text-align:right;"> 7.2( 0.1),$p$&lt;.01 </td>
   <td style="text-align:right;"> 0.42( 0.06),$p$&lt;.01 </td>
   <td style="text-align:right;"> 17.7( 0.3),$p$&lt;.01 </td>
   <td style="text-align:right;"> -0.22( 0.03),$p$&lt;.01 </td>
  </tr>
  <tr>
   <td style="text-align:left;"> grip--letter </td>
   <td style="text-align:left;"> female </td>
   <td style="text-align:right;"> 782 </td>
   <td style="text-align:right;"> 19.4( 0.3),$p$&lt;.01 </td>
   <td style="text-align:right;"> -0.29( 0.03),$p$&lt;.01 </td>
   <td style="text-align:right;"> 23.5( 0.4),$p$&lt;.01 </td>
   <td style="text-align:right;"> -0.38( 0.03),$p$&lt;.01 </td>
  </tr>
  <tr>
   <td style="text-align:left;"> grip--letter </td>
   <td style="text-align:left;"> male </td>
   <td style="text-align:right;"> 800 </td>
   <td style="text-align:right;"> 34.0( 0.5),$p$&lt;.01 </td>
   <td style="text-align:right;"> -0.61( 0.06),$p$&lt;.01 </td>
   <td style="text-align:right;"> 21.9( 0.4),$p$&lt;.01 </td>
   <td style="text-align:right;"> -0.39( 0.04),$p$&lt;.01 </td>
  </tr>
  <tr>
   <td style="text-align:left;"> grip--raven </td>
   <td style="text-align:left;"> female </td>
   <td style="text-align:right;"> 782 </td>
   <td style="text-align:right;"> 19.4( 0.3),$p$&lt;.01 </td>
   <td style="text-align:right;"> -0.28( 0.03),$p$&lt;.01 </td>
   <td style="text-align:right;"> 17.3( 0.2),$p$&lt;.01 </td>
   <td style="text-align:right;"> -0.16( 0.02),$p$&lt;.01 </td>
  </tr>
  <tr>
   <td style="text-align:left;"> grip--raven </td>
   <td style="text-align:left;"> male </td>
   <td style="text-align:right;"> 800 </td>
   <td style="text-align:right;"> 34.0( 0.5),$p$&lt;.01 </td>
   <td style="text-align:right;"> -0.59( 0.06),$p$&lt;.01 </td>
   <td style="text-align:right;"> 17.2( 0.2),$p$&lt;.01 </td>
   <td style="text-align:right;"> -0.16( 0.03),$p$&lt;.01 </td>
  </tr>
  <tr>
   <td style="text-align:left;"> grip--word_im </td>
   <td style="text-align:left;"> female </td>
   <td style="text-align:right;"> 782 </td>
   <td style="text-align:right;"> 19.4( 0.3),$p$&lt;.01 </td>
   <td style="text-align:right;"> -0.28( 0.03),$p$&lt;.01 </td>
   <td style="text-align:right;"> 21.4( 0.3),$p$&lt;.01 </td>
   <td style="text-align:right;"> -0.48( 0.04),$p$&lt;.01 </td>
  </tr>
  <tr>
   <td style="text-align:left;"> grip--word_im </td>
   <td style="text-align:left;"> male </td>
   <td style="text-align:right;"> 800 </td>
   <td style="text-align:right;"> 34.0( 0.5),$p$&lt;.01 </td>
   <td style="text-align:right;"> -0.61( 0.06),$p$&lt;.01 </td>
   <td style="text-align:right;"> 17.9( 0.3),$p$&lt;.01 </td>
   <td style="text-align:right;"> -0.32( 0.04),$p$&lt;.01 </td>
  </tr>
  <tr>
   <td style="text-align:left;"> pef--letter </td>
   <td style="text-align:left;"> female </td>
   <td style="text-align:right;"> 782 </td>
   <td style="text-align:right;"> 352.1( 4.5),$p$&lt;.01 </td>
   <td style="text-align:right;"> -3.80( 0.36),$p$&lt;.01 </td>
   <td style="text-align:right;"> 24.3( 0.4),$p$&lt;.01 </td>
   <td style="text-align:right;"> -0.34( 0.02),$p$&lt;.01 </td>
  </tr>
  <tr>
   <td style="text-align:left;"> pef--letter </td>
   <td style="text-align:left;"> male </td>
   <td style="text-align:right;"> 800 </td>
   <td style="text-align:right;"> 468.6( 6.5),$p$&lt;.01 </td>
   <td style="text-align:right;"> -5.40( 0.55),$p$&lt;.01 </td>
   <td style="text-align:right;"> 22.8( 0.4),$p$&lt;.01 </td>
   <td style="text-align:right;"> -0.37( 0.03),$p$&lt;.01 </td>
  </tr>
  <tr>
   <td style="text-align:left;"> pef--raven </td>
   <td style="text-align:left;"> female </td>
   <td style="text-align:right;"> 782 </td>
   <td style="text-align:right;"> 352.1( 4.5),$p$&lt;.01 </td>
   <td style="text-align:right;"> -3.79( 0.36),$p$&lt;.01 </td>
   <td style="text-align:right;"> 17.8( 0.2),$p$&lt;.01 </td>
   <td style="text-align:right;"> -0.17( 0.02),$p$&lt;.01 </td>
  </tr>
  <tr>
   <td style="text-align:left;"> pef--raven </td>
   <td style="text-align:left;"> male </td>
   <td style="text-align:right;"> 800 </td>
   <td style="text-align:right;"> 468.3( 6.5),$p$&lt;.01 </td>
   <td style="text-align:right;"> -5.30( 0.56),$p$&lt;.01 </td>
   <td style="text-align:right;"> 17.6( 0.2),$p$&lt;.01 </td>
   <td style="text-align:right;"> -0.17( 0.02),$p$&lt;.01 </td>
  </tr>
  <tr>
   <td style="text-align:left;"> pef--word_im </td>
   <td style="text-align:left;"> female </td>
   <td style="text-align:right;"> 782 </td>
   <td style="text-align:right;"> 352.0( 4.5),$p$&lt;.01 </td>
   <td style="text-align:right;"> -3.77( 0.36),$p$&lt;.01 </td>
   <td style="text-align:right;"> 21.0( 0.3),$p$&lt;.01 </td>
   <td style="text-align:right;"> -0.29( 0.03),$p$&lt;.01 </td>
  </tr>
  <tr>
   <td style="text-align:left;"> pef--word_im </td>
   <td style="text-align:left;"> male </td>
   <td style="text-align:right;"> 800 </td>
   <td style="text-align:right;"> 468.4( 6.5),$p$&lt;.01 </td>
   <td style="text-align:right;"> -5.31( 0.55),$p$&lt;.01 </td>
   <td style="text-align:right;"> 17.6( 0.3),$p$&lt;.01 </td>
   <td style="text-align:right;"> -0.20( 0.03),$p$&lt;.01 </td>
  </tr>
</tbody>
</table>


##  map 

<table>
 <thead>
  <tr>
   <th style="text-align:left;"> Processes </th>
   <th style="text-align:left;"> Gender </th>
   <th style="text-align:right;"> $n$ </th>
   <th style="text-align:right;"> $\gamma_{a,00}$ </th>
   <th style="text-align:right;"> $\gamma_{a,10}$ </th>
   <th style="text-align:right;"> $\gamma_{b,00}$ </th>
   <th style="text-align:right;"> $\gamma_{b,10}$ </th>
  </tr>
 </thead>
<tbody>
  <tr>
   <td style="text-align:left;"> fev--bnt </td>
   <td style="text-align:left;"> female </td>
   <td style="text-align:right;"> 1,010 </td>
   <td style="text-align:right;"> 1.7( 0.0),$p$&lt;.01 </td>
   <td style="text-align:right;"> -0.04( 0.01),$p$&lt;.01 </td>
   <td style="text-align:right;"> 13.5( 0.2),$p$&lt;.01 </td>
   <td style="text-align:right;"> 0.09( 0.04),$p$=.02 </td>
  </tr>
  <tr>
   <td style="text-align:left;"> fev--bnt </td>
   <td style="text-align:left;"> male </td>
   <td style="text-align:right;"> 351 </td>
   <td style="text-align:right;"> 2.4( 0.1),$p$&lt;.01 </td>
   <td style="text-align:right;"> -0.08( 0.02),$p$&lt;.01 </td>
   <td style="text-align:right;"> 13.8( 0.3),$p$&lt;.01 </td>
   <td style="text-align:right;"> 0.06( 0.05),$p$=.24 </td>
  </tr>
  <tr>
   <td style="text-align:left;"> fev--bstory_de </td>
   <td style="text-align:left;"> female </td>
   <td style="text-align:right;"> 1,010 </td>
   <td style="text-align:right;"> 1.7( 0.0),$p$&lt;.01 </td>
   <td style="text-align:right;"> -0.04( 0.01),$p$&lt;.01 </td>
   <td style="text-align:right;"> 9.0( 0.2),$p$&lt;.01 </td>
   <td style="text-align:right;"> 0.07( 0.06),$p$=.31 </td>
  </tr>
  <tr>
   <td style="text-align:left;"> fev--bstory_de </td>
   <td style="text-align:left;"> male </td>
   <td style="text-align:right;"> 351 </td>
   <td style="text-align:right;"> 2.4( 0.1),$p$&lt;.01 </td>
   <td style="text-align:right;"> -0.08( 0.02),$p$&lt;.01 </td>
   <td style="text-align:right;"> 8.9( 0.3),$p$&lt;.01 </td>
   <td style="text-align:right;"> -0.08( 0.12),$p$=.49 </td>
  </tr>
  <tr>
   <td style="text-align:left;"> fev--bstory_im </td>
   <td style="text-align:left;"> female </td>
   <td style="text-align:right;"> 1,010 </td>
   <td style="text-align:right;"> 1.7( 0.0),$p$&lt;.01 </td>
   <td style="text-align:right;"> -0.04( 0.01),$p$&lt;.01 </td>
   <td style="text-align:right;"> 9.4( 0.2),$p$&lt;.01 </td>
   <td style="text-align:right;"> -0.03( 0.06),$p$=.59 </td>
  </tr>
  <tr>
   <td style="text-align:left;"> fev--bstory_im </td>
   <td style="text-align:left;"> male </td>
   <td style="text-align:right;"> 351 </td>
   <td style="text-align:right;"> 2.4( 0.1),$p$&lt;.01 </td>
   <td style="text-align:right;"> -0.08( 0.02),$p$&lt;.01 </td>
   <td style="text-align:right;"> 9.4( 0.3),$p$&lt;.01 </td>
   <td style="text-align:right;"> -0.07( 0.10),$p$=.51 </td>
  </tr>
  <tr>
   <td style="text-align:left;"> fev--categories </td>
   <td style="text-align:left;"> female </td>
   <td style="text-align:right;"> 1,010 </td>
   <td style="text-align:right;"> 1.7( 0.0),$p$&lt;.01 </td>
   <td style="text-align:right;"> -0.04( 0.01),$p$&lt;.01 </td>
   <td style="text-align:right;"> 32.9( 0.8),$p$&lt;.01 </td>
   <td style="text-align:right;"> -0.05( 0.21),$p$=.80 </td>
  </tr>
  <tr>
   <td style="text-align:left;"> fev--categories </td>
   <td style="text-align:left;"> male </td>
   <td style="text-align:right;"> 351 </td>
   <td style="text-align:right;"> 2.4( 0.1),$p$&lt;.01 </td>
   <td style="text-align:right;"> -0.08( 0.02),$p$&lt;.01 </td>
   <td style="text-align:right;"> 31.3( 1.3),$p$&lt;.01 </td>
   <td style="text-align:right;"> 0.38( 0.35),$p$=.29 </td>
  </tr>
  <tr>
   <td style="text-align:left;"> fev--digit_b </td>
   <td style="text-align:left;"> female </td>
   <td style="text-align:right;"> 1,010 </td>
   <td style="text-align:right;"> 1.7( 0.0),$p$&lt;.01 </td>
   <td style="text-align:right;"> -0.04( 0.01),$p$&lt;.01 </td>
   <td style="text-align:right;"> 5.2( 0.2),$p$&lt;.01 </td>
   <td style="text-align:right;"> -0.01( 0.05),$p$=.90 </td>
  </tr>
  <tr>
   <td style="text-align:left;"> fev--digit_b </td>
   <td style="text-align:left;"> male </td>
   <td style="text-align:right;"> 351 </td>
   <td style="text-align:right;"> 2.4( 0.1),$p$&lt;.01 </td>
   <td style="text-align:right;"> -0.08( 0.02),$p$&lt;.01 </td>
   <td style="text-align:right;"> 5.0( 0.3),$p$&lt;.01 </td>
   <td style="text-align:right;"> 0.04( 0.10),$p$=.68 </td>
  </tr>
  <tr>
   <td style="text-align:left;"> fev--digit_f </td>
   <td style="text-align:left;"> female </td>
   <td style="text-align:right;"> 1,010 </td>
   <td style="text-align:right;"> 1.7( 0.0),$p$&lt;.01 </td>
   <td style="text-align:right;"> -0.04( 0.01),$p$&lt;.01 </td>
   <td style="text-align:right;"> 7.3( 0.2),$p$&lt;.01 </td>
   <td style="text-align:right;"> 0.04( 0.06),$p$=.46 </td>
  </tr>
  <tr>
   <td style="text-align:left;"> fev--digit_f </td>
   <td style="text-align:left;"> male </td>
   <td style="text-align:right;"> 351 </td>
   <td style="text-align:right;"> 2.4( 0.1),$p$&lt;.01 </td>
   <td style="text-align:right;"> -0.08( 0.02),$p$&lt;.01 </td>
   <td style="text-align:right;"> 7.2( 0.3),$p$&lt;.01 </td>
   <td style="text-align:right;"> 0.01( 0.09),$p$=.95 </td>
  </tr>
  <tr>
   <td style="text-align:left;"> fev--digit_o </td>
   <td style="text-align:left;"> female </td>
   <td style="text-align:right;"> 1,010 </td>
   <td style="text-align:right;"> 1.7( 0.0),$p$&lt;.01 </td>
   <td style="text-align:right;"> -0.04( 0.01),$p$&lt;.01 </td>
   <td style="text-align:right;"> 6.5( 0.2),$p$&lt;.01 </td>
   <td style="text-align:right;"> 0.07( 0.05),$p$=.16 </td>
  </tr>
  <tr>
   <td style="text-align:left;"> fev--digit_o </td>
   <td style="text-align:left;"> male </td>
   <td style="text-align:right;"> 351 </td>
   <td style="text-align:right;"> 2.4( 0.1),$p$&lt;.01 </td>
   <td style="text-align:right;"> -0.08( 0.02),$p$&lt;.01 </td>
   <td style="text-align:right;"> 6.9( 0.2),$p$&lt;.01 </td>
   <td style="text-align:right;"> -0.10( 0.08),$p$=.21 </td>
  </tr>
  <tr>
   <td style="text-align:left;"> fev--ideas </td>
   <td style="text-align:left;"> female </td>
   <td style="text-align:right;"> 1,010 </td>
   <td style="text-align:right;"> 1.7( 0.0),$p$&lt;.01 </td>
   <td style="text-align:right;"> -0.04( 0.01),$p$&lt;.01 </td>
   <td style="text-align:right;"> 7.6( 0.1),$p$&lt;.01 </td>
   <td style="text-align:right;"> 0.02( 0.02),$p$=.34 </td>
  </tr>
  <tr>
   <td style="text-align:left;"> fev--ideas </td>
   <td style="text-align:left;"> male </td>
   <td style="text-align:right;"> 351 </td>
   <td style="text-align:right;"> 2.4( 0.1),$p$&lt;.01 </td>
   <td style="text-align:right;"> -0.08( 0.02),$p$&lt;.01 </td>
   <td style="text-align:right;"> 7.8( 0.1),$p$&lt;.01 </td>
   <td style="text-align:right;"> -0.04( 0.05),$p$=.43 </td>
  </tr>
  <tr>
   <td style="text-align:left;"> fev--line </td>
   <td style="text-align:left;"> female </td>
   <td style="text-align:right;"> 1,010 </td>
   <td style="text-align:right;"> 1.7( 0.0),$p$&lt;.01 </td>
   <td style="text-align:right;"> -0.04( 0.01),$p$&lt;.01 </td>
   <td style="text-align:right;"> 8.2( 0.3),$p$&lt;.01 </td>
   <td style="text-align:right;"> -0.04( 0.08),$p$=.64 </td>
  </tr>
  <tr>
   <td style="text-align:left;"> fev--line </td>
   <td style="text-align:left;"> male </td>
   <td style="text-align:right;"> 351 </td>
   <td style="text-align:right;"> 2.4( 0.1),$p$&lt;.01 </td>
   <td style="text-align:right;"> -0.08( 0.02),$p$&lt;.01 </td>
   <td style="text-align:right;"> 10.3( 0.5),$p$&lt;.01 </td>
   <td style="text-align:right;"> -0.13( 0.15),$p$=.38 </td>
  </tr>
  <tr>
   <td style="text-align:left;"> fev--logic_de </td>
   <td style="text-align:left;"> female </td>
   <td style="text-align:right;"> 1,010 </td>
   <td style="text-align:right;"> 1.7( 0.0),$p$&lt;.01 </td>
   <td style="text-align:right;"> -0.04( 0.01),$p$&lt;.01 </td>
   <td style="text-align:right;"> 8.5( 0.4),$p$&lt;.01 </td>
   <td style="text-align:right;"> 0.27( 0.12),$p$=.03 </td>
  </tr>
  <tr>
   <td style="text-align:left;"> fev--logic_de </td>
   <td style="text-align:left;"> male </td>
   <td style="text-align:right;"> 351 </td>
   <td style="text-align:right;"> 2.4( 0.1),$p$&lt;.01 </td>
   <td style="text-align:right;"> -0.08( 0.02),$p$&lt;.01 </td>
   <td style="text-align:right;"> 7.9( 0.7),$p$&lt;.01 </td>
   <td style="text-align:right;"> 0.22( 0.24),$p$=.35 </td>
  </tr>
  <tr>
   <td style="text-align:left;"> fev--logic_im </td>
   <td style="text-align:left;"> female </td>
   <td style="text-align:right;"> 1,010 </td>
   <td style="text-align:right;"> 1.7( 0.0),$p$&lt;.01 </td>
   <td style="text-align:right;"> -0.04( 0.01),$p$&lt;.01 </td>
   <td style="text-align:right;"> 10.2( 0.4),$p$&lt;.01 </td>
   <td style="text-align:right;"> 0.26( 0.12),$p$=.03 </td>
  </tr>
  <tr>
   <td style="text-align:left;"> fev--logic_im </td>
   <td style="text-align:left;"> male </td>
   <td style="text-align:right;"> 351 </td>
   <td style="text-align:right;"> 2.4( 0.1),$p$&lt;.01 </td>
   <td style="text-align:right;"> -0.08( 0.02),$p$&lt;.01 </td>
   <td style="text-align:right;"> 9.5( 0.7),$p$&lt;.01 </td>
   <td style="text-align:right;"> 0.14( 0.21),$p$=.52 </td>
  </tr>
  <tr>
   <td style="text-align:left;"> fev--matrices </td>
   <td style="text-align:left;"> female </td>
   <td style="text-align:right;"> 1,010 </td>
   <td style="text-align:right;"> 1.7( 0.0),$p$&lt;.01 </td>
   <td style="text-align:right;"> -0.04( 0.01),$p$&lt;.01 </td>
   <td style="text-align:right;"> 9.8( 0.3),$p$&lt;.01 </td>
   <td style="text-align:right;"> 0.03( 0.09),$p$=.71 </td>
  </tr>
  <tr>
   <td style="text-align:left;"> fev--matrices </td>
   <td style="text-align:left;"> male </td>
   <td style="text-align:right;"> 351 </td>
   <td style="text-align:right;"> 2.4( 0.1),$p$&lt;.01 </td>
   <td style="text-align:right;"> -0.08( 0.02),$p$&lt;.01 </td>
   <td style="text-align:right;"> 10.9( 0.5),$p$&lt;.01 </td>
   <td style="text-align:right;"> 0.05( 0.14),$p$=.74 </td>
  </tr>
  <tr>
   <td style="text-align:left;"> fev--mmms </td>
   <td style="text-align:left;"> female </td>
   <td style="text-align:right;"> 1,010 </td>
   <td style="text-align:right;"> 1.7( 0.0),$p$&lt;.01 </td>
   <td style="text-align:right;"> -0.04( 0.01),$p$&lt;.01 </td>
   <td style="text-align:right;"> 27.7( 0.2),$p$&lt;.01 </td>
   <td style="text-align:right;"> 0.05( 0.07),$p$=.49 </td>
  </tr>
  <tr>
   <td style="text-align:left;"> fev--mmms </td>
   <td style="text-align:left;"> male </td>
   <td style="text-align:right;"> 351 </td>
   <td style="text-align:right;"> 2.4( 0.1),$p$&lt;.01 </td>
   <td style="text-align:right;"> -0.08( 0.02),$p$&lt;.01 </td>
   <td style="text-align:right;"> 27.3( 0.3),$p$&lt;.01 </td>
   <td style="text-align:right;"> 0.01( 0.13),$p$=.92 </td>
  </tr>
  <tr>
   <td style="text-align:left;"> fev--nart </td>
   <td style="text-align:left;"> female </td>
   <td style="text-align:right;"> 1,010 </td>
   <td style="text-align:right;"> 1.7( 0.0),$p$&lt;.01 </td>
   <td style="text-align:right;"> -0.04( 0.01),$p$&lt;.01 </td>
   <td style="text-align:right;"> 5.0( 0.2),$p$&lt;.01 </td>
   <td style="text-align:right;"> 0.04( 0.04),$p$=.38 </td>
  </tr>
  <tr>
   <td style="text-align:left;"> fev--nart </td>
   <td style="text-align:left;"> male </td>
   <td style="text-align:right;"> 351 </td>
   <td style="text-align:right;"> 2.4( 0.1),$p$&lt;.01 </td>
   <td style="text-align:right;"> -0.08( 0.02),$p$&lt;.01 </td>
   <td style="text-align:right;"> 4.9( 0.4),$p$&lt;.01 </td>
   <td style="text-align:right;"> 0.07( 0.08),$p$=.35 </td>
  </tr>
  <tr>
   <td style="text-align:left;"> fev--num_comp </td>
   <td style="text-align:left;"> female </td>
   <td style="text-align:right;"> 1,010 </td>
   <td style="text-align:right;"> 1.7( 0.0),$p$&lt;.01 </td>
   <td style="text-align:right;"> -0.04( 0.01),$p$&lt;.01 </td>
   <td style="text-align:right;"> 23.1( 0.8),$p$&lt;.01 </td>
   <td style="text-align:right;"> 0.28( 0.16),$p$=.09 </td>
  </tr>
  <tr>
   <td style="text-align:left;"> fev--num_comp </td>
   <td style="text-align:left;"> male </td>
   <td style="text-align:right;"> 351 </td>
   <td style="text-align:right;"> 2.4( 0.1),$p$&lt;.01 </td>
   <td style="text-align:right;"> -0.08( 0.02),$p$&lt;.01 </td>
   <td style="text-align:right;"> 20.3( 1.2),$p$&lt;.01 </td>
   <td style="text-align:right;"> 0.29( 0.31),$p$=.35 </td>
  </tr>
  <tr>
   <td style="text-align:left;"> fev--symbol </td>
   <td style="text-align:left;"> female </td>
   <td style="text-align:right;"> 1,010 </td>
   <td style="text-align:right;"> 1.7( 0.0),$p$&lt;.01 </td>
   <td style="text-align:right;"> -0.04( 0.01),$p$&lt;.01 </td>
   <td style="text-align:right;"> 35.5( 1.0),$p$&lt;.01 </td>
   <td style="text-align:right;"> 0.50( 0.22),$p$=.02 </td>
  </tr>
  <tr>
   <td style="text-align:left;"> fev--symbol </td>
   <td style="text-align:left;"> male </td>
   <td style="text-align:right;"> 351 </td>
   <td style="text-align:right;"> 2.4( 0.1),$p$&lt;.01 </td>
   <td style="text-align:right;"> -0.08( 0.02),$p$&lt;.01 </td>
   <td style="text-align:right;"> 36.0( 1.7),$p$&lt;.01 </td>
   <td style="text-align:right;"> -0.07( 0.42),$p$=.86 </td>
  </tr>
  <tr>
   <td style="text-align:left;"> fev--word_de </td>
   <td style="text-align:left;"> female </td>
   <td style="text-align:right;"> 1,010 </td>
   <td style="text-align:right;"> 1.7( 0.0),$p$&lt;.01 </td>
   <td style="text-align:right;"> -0.04( 0.01),$p$&lt;.01 </td>
   <td style="text-align:right;"> 5.6( 0.2),$p$&lt;.01 </td>
   <td style="text-align:right;"> 0.12( 0.06),$p$=.03 </td>
  </tr>
  <tr>
   <td style="text-align:left;"> fev--word_de </td>
   <td style="text-align:left;"> male </td>
   <td style="text-align:right;"> 351 </td>
   <td style="text-align:right;"> 2.4( 0.1),$p$&lt;.01 </td>
   <td style="text-align:right;"> -0.08( 0.02),$p$&lt;.01 </td>
   <td style="text-align:right;"> 5.0( 0.3),$p$&lt;.01 </td>
   <td style="text-align:right;"> 0.07( 0.11),$p$=.52 </td>
  </tr>
  <tr>
   <td style="text-align:left;"> fev--word_im </td>
   <td style="text-align:left;"> female </td>
   <td style="text-align:right;"> 1,010 </td>
   <td style="text-align:right;"> 1.7( 0.0),$p$&lt;.01 </td>
   <td style="text-align:right;"> -0.04( 0.01),$p$&lt;.01 </td>
   <td style="text-align:right;"> 16.8( 0.4),$p$&lt;.01 </td>
   <td style="text-align:right;"> 0.40( 0.12),$p$&lt;.01 </td>
  </tr>
  <tr>
   <td style="text-align:left;"> fev--word_im </td>
   <td style="text-align:left;"> male </td>
   <td style="text-align:right;"> 351 </td>
   <td style="text-align:right;"> 2.4( 0.1),$p$&lt;.01 </td>
   <td style="text-align:right;"> -0.08( 0.02),$p$&lt;.01 </td>
   <td style="text-align:right;"> 15.4( 0.6),$p$&lt;.01 </td>
   <td style="text-align:right;"> 0.27( 0.20),$p$=.18 </td>
  </tr>
  <tr>
   <td style="text-align:left;"> fev--word_rec </td>
   <td style="text-align:left;"> female </td>
   <td style="text-align:right;"> 1,010 </td>
   <td style="text-align:right;"> 1.7( 0.0),$p$&lt;.01 </td>
   <td style="text-align:right;"> -0.04( 0.01),$p$&lt;.01 </td>
   <td style="text-align:right;"> 9.8( 0.1),$p$&lt;.01 </td>
   <td style="text-align:right;"> 0.01( 0.03),$p$=.81 </td>
  </tr>
  <tr>
   <td style="text-align:left;"> fev--word_rec </td>
   <td style="text-align:left;"> male </td>
   <td style="text-align:right;"> 351 </td>
   <td style="text-align:right;"> 2.4( 0.1),$p$&lt;.01 </td>
   <td style="text-align:right;"> -0.08( 0.02),$p$&lt;.01 </td>
   <td style="text-align:right;"> 9.6( 0.2),$p$&lt;.01 </td>
   <td style="text-align:right;"> 0.09( 0.06),$p$=.14 </td>
  </tr>
  <tr>
   <td style="text-align:left;"> grip--bnt </td>
   <td style="text-align:left;"> female </td>
   <td style="text-align:right;"> 1,010 </td>
   <td style="text-align:right;"> 43.7( 1.3),$p$&lt;.01 </td>
   <td style="text-align:right;"> -0.42( 0.32),$p$=.19 </td>
   <td style="text-align:right;"> 13.5( 0.2),$p$&lt;.01 </td>
   <td style="text-align:right;"> 0.09( 0.04),$p$=.01 </td>
  </tr>
  <tr>
   <td style="text-align:left;"> grip--bnt </td>
   <td style="text-align:left;"> male </td>
   <td style="text-align:right;"> 351 </td>
   <td style="text-align:right;"> 79.7( 3.0),$p$&lt;.01 </td>
   <td style="text-align:right;"> -2.48( 0.90),$p$=.01 </td>
   <td style="text-align:right;"> 13.8( 0.3),$p$&lt;.01 </td>
   <td style="text-align:right;"> 0.05( 0.05),$p$=.27 </td>
  </tr>
  <tr>
   <td style="text-align:left;"> grip--bstory_de </td>
   <td style="text-align:left;"> female </td>
   <td style="text-align:right;"> 1,010 </td>
   <td style="text-align:right;"> 43.7( 1.3),$p$&lt;.01 </td>
   <td style="text-align:right;"> -0.41( 0.32),$p$=.19 </td>
   <td style="text-align:right;"> 9.0( 0.2),$p$&lt;.01 </td>
   <td style="text-align:right;"> 0.07( 0.07),$p$=.29 </td>
  </tr>
  <tr>
   <td style="text-align:left;"> grip--bstory_de </td>
   <td style="text-align:left;"> male </td>
   <td style="text-align:right;"> 351 </td>
   <td style="text-align:right;"> 79.5( 3.1),$p$&lt;.01 </td>
   <td style="text-align:right;"> -2.47( 0.90),$p$=.01 </td>
   <td style="text-align:right;"> 8.9( 0.3),$p$&lt;.01 </td>
   <td style="text-align:right;"> -0.08( 0.11),$p$=.49 </td>
  </tr>
  <tr>
   <td style="text-align:left;"> grip--bstory_im </td>
   <td style="text-align:left;"> female </td>
   <td style="text-align:right;"> 1,010 </td>
   <td style="text-align:right;"> 1.7( 0.0),$p$&lt;.01 </td>
   <td style="text-align:right;"> -0.04( 0.01),$p$&lt;.01 </td>
   <td style="text-align:right;"> 9.4( 0.2),$p$&lt;.01 </td>
   <td style="text-align:right;"> -0.03( 0.06),$p$=.59 </td>
  </tr>
  <tr>
   <td style="text-align:left;"> grip--bstory_im </td>
   <td style="text-align:left;"> male </td>
   <td style="text-align:right;"> 351 </td>
   <td style="text-align:right;"> 79.5( 3.1),$p$&lt;.01 </td>
   <td style="text-align:right;"> -2.47( 0.90),$p$=.01 </td>
   <td style="text-align:right;"> 9.4( 0.3),$p$&lt;.01 </td>
   <td style="text-align:right;"> -0.07( 0.10),$p$=.54 </td>
  </tr>
  <tr>
   <td style="text-align:left;"> grip--categories </td>
   <td style="text-align:left;"> female </td>
   <td style="text-align:right;"> 1,010 </td>
   <td style="text-align:right;"> 43.7( 1.3),$p$&lt;.01 </td>
   <td style="text-align:right;"> -0.40( 0.32),$p$=.20 </td>
   <td style="text-align:right;"> 32.9( 0.8),$p$&lt;.01 </td>
   <td style="text-align:right;"> -0.04( 0.21),$p$=.86 </td>
  </tr>
  <tr>
   <td style="text-align:left;"> grip--categories </td>
   <td style="text-align:left;"> male </td>
   <td style="text-align:right;"> 351 </td>
   <td style="text-align:right;"> 79.5( 3.0),$p$&lt;.01 </td>
   <td style="text-align:right;"> -2.44( 0.88),$p$=.01 </td>
   <td style="text-align:right;"> 31.4( 1.3),$p$&lt;.01 </td>
   <td style="text-align:right;"> 0.37( 0.35),$p$=.29 </td>
  </tr>
  <tr>
   <td style="text-align:left;"> grip--digit_b </td>
   <td style="text-align:left;"> female </td>
   <td style="text-align:right;"> 1,010 </td>
   <td style="text-align:right;"> 1.7( 0.0),$p$&lt;.01 </td>
   <td style="text-align:right;"> -0.04( 0.01),$p$&lt;.01 </td>
   <td style="text-align:right;"> 5.2( 0.2),$p$&lt;.01 </td>
   <td style="text-align:right;"> -0.01( 0.05),$p$=.90 </td>
  </tr>
  <tr>
   <td style="text-align:left;"> grip--digit_b </td>
   <td style="text-align:left;"> male </td>
   <td style="text-align:right;"> 351 </td>
   <td style="text-align:right;"> 79.6( 3.0),$p$&lt;.01 </td>
   <td style="text-align:right;"> -2.41( 0.87),$p$=.01 </td>
   <td style="text-align:right;"> 5.0( 0.3),$p$&lt;.01 </td>
   <td style="text-align:right;"> 0.04( 0.10),$p$=.69 </td>
  </tr>
  <tr>
   <td style="text-align:left;"> grip--digit_f </td>
   <td style="text-align:left;"> female </td>
   <td style="text-align:right;"> 1,010 </td>
   <td style="text-align:right;"> 43.7( 1.3),$p$&lt;.01 </td>
   <td style="text-align:right;"> -0.41( 0.31),$p$=.19 </td>
   <td style="text-align:right;"> 7.3( 0.2),$p$&lt;.01 </td>
   <td style="text-align:right;"> 0.04( 0.06),$p$=.45 </td>
  </tr>
  <tr>
   <td style="text-align:left;"> grip--digit_f </td>
   <td style="text-align:left;"> male </td>
   <td style="text-align:right;"> 351 </td>
   <td style="text-align:right;"> 79.6( 3.0),$p$&lt;.01 </td>
   <td style="text-align:right;"> -2.45( 0.89),$p$=.01 </td>
   <td style="text-align:right;"> 7.2( 0.3),$p$&lt;.01 </td>
   <td style="text-align:right;"> 0.01( 0.10),$p$=.91 </td>
  </tr>
  <tr>
   <td style="text-align:left;"> grip--digit_o </td>
   <td style="text-align:left;"> female </td>
   <td style="text-align:right;"> 1,010 </td>
   <td style="text-align:right;"> 43.7( 1.3),$p$&lt;.01 </td>
   <td style="text-align:right;"> -0.41( 0.32),$p$=.20 </td>
   <td style="text-align:right;"> 6.5( 0.2),$p$&lt;.01 </td>
   <td style="text-align:right;"> 0.07( 0.05),$p$=.15 </td>
  </tr>
  <tr>
   <td style="text-align:left;"> grip--digit_o </td>
   <td style="text-align:left;"> male </td>
   <td style="text-align:right;"> 351 </td>
   <td style="text-align:right;"> 79.6( 3.0),$p$&lt;.01 </td>
   <td style="text-align:right;"> -2.47( 0.89),$p$=.01 </td>
   <td style="text-align:right;"> 6.9( 0.2),$p$&lt;.01 </td>
   <td style="text-align:right;"> -0.10( 0.08),$p$=.21 </td>
  </tr>
  <tr>
   <td style="text-align:left;"> grip--ideas </td>
   <td style="text-align:left;"> female </td>
   <td style="text-align:right;"> 1,010 </td>
   <td style="text-align:right;"> 43.7( 1.3),$p$&lt;.01 </td>
   <td style="text-align:right;"> -0.39( 0.32),$p$=.21 </td>
   <td style="text-align:right;"> 7.6( 0.1),$p$&lt;.01 </td>
   <td style="text-align:right;"> 0.02( 0.02),$p$=.33 </td>
  </tr>
  <tr>
   <td style="text-align:left;"> grip--ideas </td>
   <td style="text-align:left;"> male </td>
   <td style="text-align:right;"> 351 </td>
   <td style="text-align:right;"> 79.4( 3.0),$p$&lt;.01 </td>
   <td style="text-align:right;"> -2.39( 0.89),$p$=.01 </td>
   <td style="text-align:right;"> 7.8( 0.1),$p$&lt;.01 </td>
   <td style="text-align:right;"> -0.04( 0.05),$p$=.41 </td>
  </tr>
  <tr>
   <td style="text-align:left;"> grip--line </td>
   <td style="text-align:left;"> female </td>
   <td style="text-align:right;"> 1,010 </td>
   <td style="text-align:right;"> 43.7( 1.3),$p$&lt;.01 </td>
   <td style="text-align:right;"> -0.40( 0.32),$p$=.21 </td>
   <td style="text-align:right;"> 8.2( 0.3),$p$&lt;.01 </td>
   <td style="text-align:right;"> -0.04( 0.08),$p$=.65 </td>
  </tr>
  <tr>
   <td style="text-align:left;"> grip--line </td>
   <td style="text-align:left;"> male </td>
   <td style="text-align:right;"> 351 </td>
   <td style="text-align:right;"> 79.7( 3.0),$p$&lt;.01 </td>
   <td style="text-align:right;"> -2.46( 0.90),$p$=.01 </td>
   <td style="text-align:right;"> 10.3( 0.5),$p$&lt;.01 </td>
   <td style="text-align:right;"> -0.12( 0.15),$p$=.42 </td>
  </tr>
  <tr>
   <td style="text-align:left;"> grip--logic_de </td>
   <td style="text-align:left;"> female </td>
   <td style="text-align:right;"> 1,010 </td>
   <td style="text-align:right;"> 43.7( 1.3),$p$&lt;.01 </td>
   <td style="text-align:right;"> -0.41( 0.32),$p$=.20 </td>
   <td style="text-align:right;"> 8.5( 0.4),$p$&lt;.01 </td>
   <td style="text-align:right;"> 0.28( 0.12),$p$=.02 </td>
  </tr>
  <tr>
   <td style="text-align:left;"> grip--logic_de </td>
   <td style="text-align:left;"> male </td>
   <td style="text-align:right;"> 351 </td>
   <td style="text-align:right;"> 79.5( 3.0),$p$&lt;.01 </td>
   <td style="text-align:right;"> -2.48( 0.89),$p$=.01 </td>
   <td style="text-align:right;"> 8.0( 0.7),$p$&lt;.01 </td>
   <td style="text-align:right;"> 0.20( 0.23),$p$=.39 </td>
  </tr>
  <tr>
   <td style="text-align:left;"> grip--logic_im </td>
   <td style="text-align:left;"> female </td>
   <td style="text-align:right;"> 1,010 </td>
   <td style="text-align:right;"> 43.7( 1.3),$p$&lt;.01 </td>
   <td style="text-align:right;"> -0.40( 0.32),$p$=.20 </td>
   <td style="text-align:right;"> 10.2( 0.4),$p$&lt;.01 </td>
   <td style="text-align:right;"> 0.27( 0.12),$p$=.02 </td>
  </tr>
  <tr>
   <td style="text-align:left;"> grip--logic_im </td>
   <td style="text-align:left;"> male </td>
   <td style="text-align:right;"> 351 </td>
   <td style="text-align:right;"> 79.5( 3.0),$p$&lt;.01 </td>
   <td style="text-align:right;"> -2.46( 0.89),$p$=.01 </td>
   <td style="text-align:right;"> 9.5( 0.7),$p$&lt;.01 </td>
   <td style="text-align:right;"> 0.12( 0.21),$p$=.55 </td>
  </tr>
  <tr>
   <td style="text-align:left;"> grip--matrices </td>
   <td style="text-align:left;"> female </td>
   <td style="text-align:right;"> 1,010 </td>
   <td style="text-align:right;"> 43.7( 1.3),$p$&lt;.01 </td>
   <td style="text-align:right;"> -0.39( 0.32),$p$=.22 </td>
   <td style="text-align:right;"> 9.8( 0.3),$p$&lt;.01 </td>
   <td style="text-align:right;"> 0.04( 0.09),$p$=.69 </td>
  </tr>
  <tr>
   <td style="text-align:left;"> grip--matrices </td>
   <td style="text-align:left;"> male </td>
   <td style="text-align:right;"> 351 </td>
   <td style="text-align:right;"> 79.6( 3.0),$p$&lt;.01 </td>
   <td style="text-align:right;"> -2.47( 0.91),$p$=.01 </td>
   <td style="text-align:right;"> 11.0( 0.5),$p$&lt;.01 </td>
   <td style="text-align:right;"> 0.04( 0.14),$p$=.76 </td>
  </tr>
  <tr>
   <td style="text-align:left;"> grip--mmms </td>
   <td style="text-align:left;"> female </td>
   <td style="text-align:right;"> 1,010 </td>
   <td style="text-align:right;"> 43.7( 1.3),$p$&lt;.01 </td>
   <td style="text-align:right;"> -0.51( 0.32),$p$=.11 </td>
   <td style="text-align:right;"> 27.7( 0.2),$p$&lt;.01 </td>
   <td style="text-align:right;"> 0.06( 0.07),$p$=.42 </td>
  </tr>
  <tr>
   <td style="text-align:left;"> grip--mmms </td>
   <td style="text-align:left;"> male </td>
   <td style="text-align:right;"> 351 </td>
   <td style="text-align:right;"> 79.3( 3.0),$p$&lt;.01 </td>
   <td style="text-align:right;"> -2.45( 0.91),$p$=.01 </td>
   <td style="text-align:right;"> 27.3( 0.3),$p$&lt;.01 </td>
   <td style="text-align:right;"> 0.01( 0.13),$p$=.94 </td>
  </tr>
  <tr>
   <td style="text-align:left;"> grip--nart </td>
   <td style="text-align:left;"> female </td>
   <td style="text-align:right;"> 1,010 </td>
   <td style="text-align:right;"> 43.7( 1.3),$p$&lt;.01 </td>
   <td style="text-align:right;"> -0.37( 0.32),$p$=.24 </td>
   <td style="text-align:right;"> 5.0( 0.2),$p$&lt;.01 </td>
   <td style="text-align:right;"> 0.04( 0.04),$p$=.36 </td>
  </tr>
  <tr>
   <td style="text-align:left;"> grip--nart </td>
   <td style="text-align:left;"> male </td>
   <td style="text-align:right;"> 351 </td>
   <td style="text-align:right;"> 79.5( 3.1),$p$&lt;.01 </td>
   <td style="text-align:right;"> -2.48( 0.90),$p$=.01 </td>
   <td style="text-align:right;"> 4.9( 0.4),$p$&lt;.01 </td>
   <td style="text-align:right;"> 0.07( 0.08),$p$=.36 </td>
  </tr>
  <tr>
   <td style="text-align:left;"> grip--num_comp </td>
   <td style="text-align:left;"> female </td>
   <td style="text-align:right;"> 1,010 </td>
   <td style="text-align:right;"> 43.7( 1.3),$p$&lt;.01 </td>
   <td style="text-align:right;"> -0.41( 0.32),$p$=.20 </td>
   <td style="text-align:right;"> 23.1( 0.8),$p$&lt;.01 </td>
   <td style="text-align:right;"> 0.28( 0.16),$p$=.09 </td>
  </tr>
  <tr>
   <td style="text-align:left;"> grip--num_comp </td>
   <td style="text-align:left;"> male </td>
   <td style="text-align:right;"> 351 </td>
   <td style="text-align:right;"> 79.5( 3.1),$p$&lt;.01 </td>
   <td style="text-align:right;"> -2.52( 0.90),$p$=.01 </td>
   <td style="text-align:right;"> 20.4( 1.2),$p$&lt;.01 </td>
   <td style="text-align:right;"> 0.26( 0.31),$p$=.39 </td>
  </tr>
  <tr>
   <td style="text-align:left;"> grip--symbol </td>
   <td style="text-align:left;"> female </td>
   <td style="text-align:right;"> 1,010 </td>
   <td style="text-align:right;"> 43.7( 1.3),$p$&lt;.01 </td>
   <td style="text-align:right;"> -0.41( 0.32),$p$=.20 </td>
   <td style="text-align:right;"> 35.4( 1.1),$p$&lt;.01 </td>
   <td style="text-align:right;"> 0.52( 0.22),$p$=.02 </td>
  </tr>
  <tr>
   <td style="text-align:left;"> grip--symbol </td>
   <td style="text-align:left;"> male </td>
   <td style="text-align:right;"> 351 </td>
   <td style="text-align:right;"> 79.5( 3.1),$p$&lt;.01 </td>
   <td style="text-align:right;"> -2.58( 0.89),$p$&lt;.01 </td>
   <td style="text-align:right;"> 36.0( 1.7),$p$&lt;.01 </td>
   <td style="text-align:right;"> -0.10( 0.41),$p$=.80 </td>
  </tr>
  <tr>
   <td style="text-align:left;"> grip--word_de </td>
   <td style="text-align:left;"> female </td>
   <td style="text-align:right;"> 1,010 </td>
   <td style="text-align:right;"> 43.7( 1.3),$p$&lt;.01 </td>
   <td style="text-align:right;"> -0.41( 0.32),$p$=.20 </td>
   <td style="text-align:right;"> 5.6( 0.2),$p$&lt;.01 </td>
   <td style="text-align:right;"> 0.13( 0.06),$p$=.03 </td>
  </tr>
  <tr>
   <td style="text-align:left;"> grip--word_de </td>
   <td style="text-align:left;"> male </td>
   <td style="text-align:right;"> 351 </td>
   <td style="text-align:right;"> 79.6( 3.1),$p$&lt;.01 </td>
   <td style="text-align:right;"> -2.50( 0.90),$p$=.01 </td>
   <td style="text-align:right;"> 5.0( 0.3),$p$&lt;.01 </td>
   <td style="text-align:right;"> 0.07( 0.11),$p$=.54 </td>
  </tr>
  <tr>
   <td style="text-align:left;"> grip--word_im </td>
   <td style="text-align:left;"> female </td>
   <td style="text-align:right;"> 1,010 </td>
   <td style="text-align:right;"> 43.7( 1.3),$p$&lt;.01 </td>
   <td style="text-align:right;"> -0.39( 0.32),$p$=.21 </td>
   <td style="text-align:right;"> 16.8( 0.4),$p$&lt;.01 </td>
   <td style="text-align:right;"> 0.41( 0.12),$p$&lt;.01 </td>
  </tr>
  <tr>
   <td style="text-align:left;"> grip--word_im </td>
   <td style="text-align:left;"> male </td>
   <td style="text-align:right;"> 351 </td>
   <td style="text-align:right;"> 79.5( 3.0),$p$&lt;.01 </td>
   <td style="text-align:right;"> -2.43( 0.90),$p$=.01 </td>
   <td style="text-align:right;"> 15.4( 0.6),$p$&lt;.01 </td>
   <td style="text-align:right;"> 0.26( 0.20),$p$=.20 </td>
  </tr>
  <tr>
   <td style="text-align:left;"> grip--word_rec </td>
   <td style="text-align:left;"> male </td>
   <td style="text-align:right;"> 351 </td>
   <td style="text-align:right;"> 79.7( 3.1),$p$&lt;.01 </td>
   <td style="text-align:right;"> -2.56( 0.90),$p$&lt;.01 </td>
   <td style="text-align:right;"> 9.6( 0.2),$p$&lt;.01 </td>
   <td style="text-align:right;"> 0.08( 0.06),$p$=.16 </td>
  </tr>
</tbody>
</table>


##  nuage 

<table>
 <thead>
  <tr>
   <th style="text-align:left;"> Processes </th>
   <th style="text-align:left;"> Gender </th>
   <th style="text-align:right;"> $n$ </th>
   <th style="text-align:right;"> $\gamma_{a,00}$ </th>
   <th style="text-align:right;"> $\gamma_{a,10}$ </th>
   <th style="text-align:right;"> $\gamma_{b,00}$ </th>
   <th style="text-align:right;"> $\gamma_{b,10}$ </th>
  </tr>
 </thead>
<tbody>
  <tr>
   <td style="text-align:left;"> grip--mmms </td>
   <td style="text-align:left;"> female </td>
   <td style="text-align:right;"> 934 </td>
   <td style="text-align:right;"> 60.6( 1.1),$p$&lt;.01 </td>
   <td style="text-align:right;"> -2.18( 0.28),$p$&lt;.01 </td>
   <td style="text-align:right;"> 61.1( 0.2),$p$&lt;.01 </td>
   <td style="text-align:right;"> -0.27( 0.09),$p$=.01 </td>
  </tr>
  <tr>
   <td style="text-align:left;"> grip--mmms </td>
   <td style="text-align:left;"> male </td>
   <td style="text-align:right;"> 847 </td>
   <td style="text-align:right;"> 80.7( 1.4),$p$&lt;.01 </td>
   <td style="text-align:right;"> -2.36( 0.29),$p$&lt;.01 </td>
   <td style="text-align:right;"> 59.5( 0.2),$p$&lt;.01 </td>
   <td style="text-align:right;"> -0.37( 0.11),$p$&lt;.01 </td>
  </tr>
</tbody>
</table>


##  octo 

<table>
 <thead>
  <tr>
   <th style="text-align:left;"> Processes </th>
   <th style="text-align:left;"> Gender </th>
   <th style="text-align:right;"> $n$ </th>
   <th style="text-align:right;"> $\gamma_{a,00}$ </th>
   <th style="text-align:right;"> $\gamma_{a,10}$ </th>
   <th style="text-align:right;"> $\gamma_{b,00}$ </th>
   <th style="text-align:right;"> $\gamma_{b,10}$ </th>
  </tr>
 </thead>
<tbody>
  <tr>
   <td style="text-align:left;"> gait--block </td>
   <td style="text-align:left;"> female </td>
   <td style="text-align:right;"> 272 </td>
   <td style="text-align:right;"> 10.3( 0.4),$p$&lt;.01 </td>
   <td style="text-align:right;"> 0.53( 0.36),$p$=.15 </td>
   <td style="text-align:right;"> 14.7( 0.8),$p$&lt;.01 </td>
   <td style="text-align:right;"> -0.22( 0.12),$p$=.07 </td>
  </tr>
  <tr>
   <td style="text-align:left;"> gait--block </td>
   <td style="text-align:left;"> male </td>
   <td style="text-align:right;"> 137 </td>
   <td style="text-align:right;"> 9.2( 0.6),$p$&lt;.01 </td>
   <td style="text-align:right;"> 0.18( 0.18),$p$=.31 </td>
   <td style="text-align:right;"> 14.9( 1.8),$p$&lt;.01 </td>
   <td style="text-align:right;"> -0.36( 0.22),$p$=.10 </td>
  </tr>
  <tr>
   <td style="text-align:left;"> gait--digit_b </td>
   <td style="text-align:left;"> female </td>
   <td style="text-align:right;"> 275 </td>
   <td style="text-align:right;"> 10.3( 0.4),$p$&lt;.01 </td>
   <td style="text-align:right;"> 0.55( 0.43),$p$=.20 </td>
   <td style="text-align:right;"> 3.9( 0.1),$p$&lt;.01 </td>
   <td style="text-align:right;"> -0.09( 0.03),$p$&lt;.01 </td>
  </tr>
  <tr>
   <td style="text-align:left;"> gait--digit_b </td>
   <td style="text-align:left;"> male </td>
   <td style="text-align:right;"> 139 </td>
   <td style="text-align:right;"> 9.1( 0.6),$p$&lt;.01 </td>
   <td style="text-align:right;"> 0.20( 0.19),$p$=.29 </td>
   <td style="text-align:right;"> 3.9( 0.3),$p$&lt;.01 </td>
   <td style="text-align:right;"> -0.15( 0.09),$p$=.10 </td>
  </tr>
  <tr>
   <td style="text-align:left;"> gait--digit_f </td>
   <td style="text-align:left;"> female </td>
   <td style="text-align:right;"> 275 </td>
   <td style="text-align:right;"> 10.3( 0.5),$p$&lt;.01 </td>
   <td style="text-align:right;"> 0.53( 0.40),$p$=.19 </td>
   <td style="text-align:right;"> 5.7( 0.1),$p$&lt;.01 </td>
   <td style="text-align:right;"> -0.08( 0.02),$p$&lt;.01 </td>
  </tr>
  <tr>
   <td style="text-align:left;"> gait--digit_f </td>
   <td style="text-align:left;"> male </td>
   <td style="text-align:right;"> 139 </td>
   <td style="text-align:right;"> 9.0( 0.6),$p$&lt;.01 </td>
   <td style="text-align:right;"> 0.22( 0.18),$p$=.21 </td>
   <td style="text-align:right;"> 5.9( 0.3),$p$&lt;.01 </td>
   <td style="text-align:right;"> -0.06( 0.06),$p$=.39 </td>
  </tr>
  <tr>
   <td style="text-align:left;"> gait--prose_im </td>
   <td style="text-align:left;"> female </td>
   <td style="text-align:right;"> 268 </td>
   <td style="text-align:right;"> 10.3( 0.5),$p$&lt;.01 </td>
   <td style="text-align:right;"> 0.56( 0.36),$p$=.12 </td>
   <td style="text-align:right;"> 11.1( 0.4),$p$&lt;.01 </td>
   <td style="text-align:right;"> -0.04( 0.07),$p$=.55 </td>
  </tr>
  <tr>
   <td style="text-align:left;"> gait--symbol </td>
   <td style="text-align:left;"> female </td>
   <td style="text-align:right;"> 265 </td>
   <td style="text-align:right;"> 10.3( 0.5),$p$&lt;.01 </td>
   <td style="text-align:right;"> 0.51( 0.28),$p$=.07 </td>
   <td style="text-align:right;"> 28.2( 1.2),$p$&lt;.01 </td>
   <td style="text-align:right;"> -0.13( 0.20),$p$=.50 </td>
  </tr>
  <tr>
   <td style="text-align:left;"> gait--symbol </td>
   <td style="text-align:left;"> male </td>
   <td style="text-align:right;"> 134 </td>
   <td style="text-align:right;"> 9.2( 0.6),$p$&lt;.01 </td>
   <td style="text-align:right;"> 0.21( 0.18),$p$=.24 </td>
   <td style="text-align:right;"> 28.8( 2.7),$p$&lt;.01 </td>
   <td style="text-align:right;"> -0.37( 0.41),$p$=.37 </td>
  </tr>
  <tr>
   <td style="text-align:left;"> grip--block </td>
   <td style="text-align:left;"> female </td>
   <td style="text-align:right;"> 274 </td>
   <td style="text-align:right;"> 9.2( 0.2),$p$&lt;.01 </td>
   <td style="text-align:right;"> -0.34( 0.03),$p$&lt;.01 </td>
   <td style="text-align:right;"> 15.0( 0.7),$p$&lt;.01 </td>
   <td style="text-align:right;"> -0.32( 0.10),$p$&lt;.01 </td>
  </tr>
  <tr>
   <td style="text-align:left;"> grip--block </td>
   <td style="text-align:left;"> male </td>
   <td style="text-align:right;"> 139 </td>
   <td style="text-align:right;"> 12.1( 0.4),$p$&lt;.01 </td>
   <td style="text-align:right;"> -0.37( 0.08),$p$&lt;.01 </td>
   <td style="text-align:right;"> 16.6( 1.5),$p$&lt;.01 </td>
   <td style="text-align:right;"> -0.57( 0.16),$p$&lt;.01 </td>
  </tr>
  <tr>
   <td style="text-align:left;"> grip--digit_b </td>
   <td style="text-align:left;"> female </td>
   <td style="text-align:right;"> 275 </td>
   <td style="text-align:right;"> 9.2( 0.2),$p$&lt;.01 </td>
   <td style="text-align:right;"> -0.34( 0.04),$p$&lt;.01 </td>
   <td style="text-align:right;"> 3.9( 0.1),$p$&lt;.01 </td>
   <td style="text-align:right;"> -0.09( 0.03),$p$&lt;.01 </td>
  </tr>
  <tr>
   <td style="text-align:left;"> grip--digit_b </td>
   <td style="text-align:left;"> male </td>
   <td style="text-align:right;"> 139 </td>
   <td style="text-align:right;"> 12.1( 0.4),$p$&lt;.01 </td>
   <td style="text-align:right;"> -0.35( 0.07),$p$&lt;.01 </td>
   <td style="text-align:right;"> 3.7( 0.3),$p$&lt;.01 </td>
   <td style="text-align:right;"> -0.02( 0.08),$p$=.80 </td>
  </tr>
  <tr>
   <td style="text-align:left;"> grip--digit_f </td>
   <td style="text-align:left;"> female </td>
   <td style="text-align:right;"> 275 </td>
   <td style="text-align:right;"> 9.2( 0.2),$p$&lt;.01 </td>
   <td style="text-align:right;"> -0.34( 0.03),$p$&lt;.01 </td>
   <td style="text-align:right;"> 5.7( 0.1),$p$&lt;.01 </td>
   <td style="text-align:right;"> -0.07( 0.02),$p$&lt;.01 </td>
  </tr>
  <tr>
   <td style="text-align:left;"> grip--digit_f </td>
   <td style="text-align:left;"> male </td>
   <td style="text-align:right;"> 139 </td>
   <td style="text-align:right;"> 12.1( 0.4),$p$&lt;.01 </td>
   <td style="text-align:right;"> -0.34( 0.07),$p$&lt;.01 </td>
   <td style="text-align:right;"> 5.9( 0.2),$p$&lt;.01 </td>
   <td style="text-align:right;"> -0.10( 0.05),$p$=.05 </td>
  </tr>
  <tr>
   <td style="text-align:left;"> grip--fig_logic </td>
   <td style="text-align:left;"> female </td>
   <td style="text-align:right;"> 273 </td>
   <td style="text-align:right;"> 9.2( 0.2),$p$&lt;.01 </td>
   <td style="text-align:right;"> -0.34( 0.04),$p$&lt;.01 </td>
   <td style="text-align:right;"> 17.1( 0.4),$p$&lt;.01 </td>
   <td style="text-align:right;"> -0.15( 0.07),$p$=.05 </td>
  </tr>
  <tr>
   <td style="text-align:left;"> grip--fig_logic </td>
   <td style="text-align:left;"> male </td>
   <td style="text-align:right;"> 138 </td>
   <td style="text-align:right;"> 12.1( 0.4),$p$&lt;.01 </td>
   <td style="text-align:right;"> -0.33( 0.07),$p$&lt;.01 </td>
   <td style="text-align:right;"> 17.6( 0.7),$p$&lt;.01 </td>
   <td style="text-align:right;"> 0.08( 0.19),$p$=.68 </td>
  </tr>
  <tr>
   <td style="text-align:left;"> grip--mir </td>
   <td style="text-align:left;"> female </td>
   <td style="text-align:right;"> 272 </td>
   <td style="text-align:right;"> 9.2( 0.2),$p$&lt;.01 </td>
   <td style="text-align:right;"> -0.34( 0.03),$p$&lt;.01 </td>
   <td style="text-align:right;"> 7.8( 0.2),$p$&lt;.01 </td>
   <td style="text-align:right;"> -0.05( 0.05),$p$=.30 </td>
  </tr>
  <tr>
   <td style="text-align:left;"> grip--mir </td>
   <td style="text-align:left;"> male </td>
   <td style="text-align:right;"> 139 </td>
   <td style="text-align:right;"> 12.1( 0.4),$p$&lt;.01 </td>
   <td style="text-align:right;"> -0.35( 0.08),$p$&lt;.01 </td>
   <td style="text-align:right;"> 7.2( 0.4),$p$&lt;.01 </td>
   <td style="text-align:right;"> 0.02( 0.09),$p$=.83 </td>
  </tr>
  <tr>
   <td style="text-align:left;"> grip--prose_im </td>
   <td style="text-align:left;"> female </td>
   <td style="text-align:right;"> 272 </td>
   <td style="text-align:right;"> 9.2( 0.2),$p$&lt;.01 </td>
   <td style="text-align:right;"> -0.34( 0.04),$p$&lt;.01 </td>
   <td style="text-align:right;"> 11.2( 0.4),$p$&lt;.01 </td>
   <td style="text-align:right;"> -0.07( 0.06),$p$=.33 </td>
  </tr>
  <tr>
   <td style="text-align:left;"> grip--prose_im </td>
   <td style="text-align:left;"> male </td>
   <td style="text-align:right;"> 139 </td>
   <td style="text-align:right;"> 11.4( 0.5),$p$&lt;.01 </td>
   <td style="text-align:right;"> -0.23( 0.09),$p$=.11 </td>
   <td style="text-align:right;"> 10.6( 0.9),$p$&lt;.01 </td>
   <td style="text-align:right;"> 0.04( 0.19),$p$=.84 </td>
  </tr>
  <tr>
   <td style="text-align:left;"> grip--symbol </td>
   <td style="text-align:left;"> female </td>
   <td style="text-align:right;"> 271 </td>
   <td style="text-align:right;"> 9.2( 0.2),$p$&lt;.01 </td>
   <td style="text-align:right;"> -0.34( 0.03),$p$&lt;.01 </td>
   <td style="text-align:right;"> 29.1( 1.2),$p$&lt;.01 </td>
   <td style="text-align:right;"> -0.48( 0.17),$p$&lt;.01 </td>
  </tr>
  <tr>
   <td style="text-align:left;"> grip--symbol </td>
   <td style="text-align:left;"> male </td>
   <td style="text-align:right;"> 138 </td>
   <td style="text-align:right;"> 12.1( 0.4),$p$&lt;.01 </td>
   <td style="text-align:right;"> -0.36( 0.08),$p$&lt;.01 </td>
   <td style="text-align:right;"> 30.5( 2.3),$p$&lt;.01 </td>
   <td style="text-align:right;"> -0.60( 0.30),$p$=.04 </td>
  </tr>
  <tr>
   <td style="text-align:left;"> pef--block </td>
   <td style="text-align:left;"> female </td>
   <td style="text-align:right;"> 271 </td>
   <td style="text-align:right;"> 328.2( 8.7),$p$&lt;.01 </td>
   <td style="text-align:right;"> -7.21( 1.41),$p$&lt;.01 </td>
   <td style="text-align:right;"> 14.8( 0.8),$p$&lt;.01 </td>
   <td style="text-align:right;"> -0.19( 0.10),$p$=.07 </td>
  </tr>
  <tr>
   <td style="text-align:left;"> pef--block </td>
   <td style="text-align:left;"> male </td>
   <td style="text-align:right;"> 136 </td>
   <td style="text-align:right;"> 464.6(23.3),$p$&lt;.01 </td>
   <td style="text-align:right;"> -3.65( 3.42),$p$=.29 </td>
   <td style="text-align:right;"> 16.8( 1.5),$p$&lt;.01 </td>
   <td style="text-align:right;"> -0.42( 0.17),$p$=.01 </td>
  </tr>
  <tr>
   <td style="text-align:left;"> pef--digit_b </td>
   <td style="text-align:left;"> female </td>
   <td style="text-align:right;"> 275 </td>
   <td style="text-align:right;"> 327.6( 8.8),$p$&lt;.01 </td>
   <td style="text-align:right;"> -7.04( 1.42),$p$&lt;.01 </td>
   <td style="text-align:right;"> 3.9( 0.1),$p$&lt;.01 </td>
   <td style="text-align:right;"> -0.09( 0.03),$p$&lt;.01 </td>
  </tr>
  <tr>
   <td style="text-align:left;"> pef--digit_b </td>
   <td style="text-align:left;"> male </td>
   <td style="text-align:right;"> 138 </td>
   <td style="text-align:right;"> 466.6(23.6),$p$&lt;.01 </td>
   <td style="text-align:right;"> -3.18( 3.63),$p$=.38 </td>
   <td style="text-align:right;"> 4.0( 0.3),$p$&lt;.01 </td>
   <td style="text-align:right;"> -0.06( 0.09),$p$=.47 </td>
  </tr>
  <tr>
   <td style="text-align:left;"> pef--digit_f </td>
   <td style="text-align:left;"> female </td>
   <td style="text-align:right;"> 275 </td>
   <td style="text-align:right;"> 327.4( 8.8),$p$&lt;.01 </td>
   <td style="text-align:right;"> -7.01( 1.42),$p$&lt;.01 </td>
   <td style="text-align:right;"> 5.7( 0.1),$p$&lt;.01 </td>
   <td style="text-align:right;"> -0.07( 0.02),$p$&lt;.01 </td>
  </tr>
  <tr>
   <td style="text-align:left;"> pef--digit_f </td>
   <td style="text-align:left;"> male </td>
   <td style="text-align:right;"> 138 </td>
   <td style="text-align:right;"> 469.4(23.6),$p$&lt;.01 </td>
   <td style="text-align:right;"> -4.53( 3.48),$p$=.19 </td>
   <td style="text-align:right;"> 6.0( 0.3),$p$&lt;.01 </td>
   <td style="text-align:right;"> -0.10( 0.06),$p$=.08 </td>
  </tr>
  <tr>
   <td style="text-align:left;"> pef--prose_im </td>
   <td style="text-align:left;"> female </td>
   <td style="text-align:right;"> 267 </td>
   <td style="text-align:right;"> 327.4( 8.8),$p$&lt;.01 </td>
   <td style="text-align:right;"> -7.03( 1.41),$p$&lt;.01 </td>
   <td style="text-align:right;"> 11.2( 0.4),$p$&lt;.01 </td>
   <td style="text-align:right;"> -0.04( 0.07),$p$=.53 </td>
  </tr>
  <tr>
   <td style="text-align:left;"> pef--prose_im </td>
   <td style="text-align:left;"> male </td>
   <td style="text-align:right;"> 136 </td>
   <td style="text-align:right;"> 465.6(23.6),$p$&lt;.01 </td>
   <td style="text-align:right;"> -3.29( 3.71),$p$=.38 </td>
   <td style="text-align:right;"> 11.0( 0.8),$p$&lt;.01 </td>
   <td style="text-align:right;"> 0.13( 0.16),$p$=.41 </td>
  </tr>
  <tr>
   <td style="text-align:left;"> pef--symbol </td>
   <td style="text-align:left;"> female </td>
   <td style="text-align:right;"> 263 </td>
   <td style="text-align:right;"> 327.7( 8.8),$p$&lt;.01 </td>
   <td style="text-align:right;"> -7.13( 1.40),$p$&lt;.01 </td>
   <td style="text-align:right;"> 28.5( 1.2),$p$&lt;.01 </td>
   <td style="text-align:right;"> -0.10( 0.19),$p$=.62 </td>
  </tr>
  <tr>
   <td style="text-align:left;"> pef--symbol </td>
   <td style="text-align:left;"> male </td>
   <td style="text-align:right;"> 133 </td>
   <td style="text-align:right;"> 463.7(23.4),$p$&lt;.01 </td>
   <td style="text-align:right;"> -3.27( 3.62),$p$=.37 </td>
   <td style="text-align:right;"> 31.5( 2.4),$p$&lt;.01 </td>
   <td style="text-align:right;"> -0.54( 0.33),$p$=.10 </td>
  </tr>
</tbody>
</table>


##  satsa 

<table>
 <thead>
  <tr>
   <th style="text-align:left;"> Processes </th>
   <th style="text-align:left;"> Gender </th>
   <th style="text-align:right;"> $n$ </th>
   <th style="text-align:right;"> $\gamma_{a,00}$ </th>
   <th style="text-align:right;"> $\gamma_{a,10}$ </th>
   <th style="text-align:right;"> $\gamma_{b,00}$ </th>
   <th style="text-align:right;"> $\gamma_{b,10}$ </th>
  </tr>
 </thead>
<tbody>
  <tr>
   <td style="text-align:left;"> fev--analogies </td>
   <td style="text-align:left;"> female </td>
   <td style="text-align:right;"> 408 </td>
   <td style="text-align:right;"> 1.8( 0.0),$p$&lt;.01 </td>
   <td style="text-align:right;"> -0.03( 0.00),$p$&lt;.01 </td>
   <td style="text-align:right;"> 13.1( 0.3),$p$&lt;.01 </td>
   <td style="text-align:right;"> -0.12( 0.03),$p$&lt;.01 </td>
  </tr>
  <tr>
   <td style="text-align:left;"> fev--analogies </td>
   <td style="text-align:left;"> male </td>
   <td style="text-align:right;"> 300 </td>
   <td style="text-align:right;"> 2.6( 0.1),$p$&lt;.01 </td>
   <td style="text-align:right;"> -0.05( 0.01),$p$&lt;.01 </td>
   <td style="text-align:right;"> 13.2( 0.5),$p$&lt;.01 </td>
   <td style="text-align:right;"> -0.14( 0.04),$p$&lt;.01 </td>
  </tr>
  <tr>
   <td style="text-align:left;"> fev--block </td>
   <td style="text-align:left;"> female </td>
   <td style="text-align:right;"> 408 </td>
   <td style="text-align:right;"> 1.8( 0.0),$p$&lt;.01 </td>
   <td style="text-align:right;"> -0.03( 0.00),$p$&lt;.01 </td>
   <td style="text-align:right;"> 16.5( 0.5),$p$&lt;.01 </td>
   <td style="text-align:right;"> -0.36( 0.04),$p$&lt;.01 </td>
  </tr>
  <tr>
   <td style="text-align:left;"> fev--block </td>
   <td style="text-align:left;"> male </td>
   <td style="text-align:right;"> 299 </td>
   <td style="text-align:right;"> 2.5( 0.1),$p$&lt;.01 </td>
   <td style="text-align:right;"> -0.04( 0.01),$p$&lt;.01 </td>
   <td style="text-align:right;"> 16.0( 0.8),$p$&lt;.01 </td>
   <td style="text-align:right;"> -0.42( 0.07),$p$&lt;.01 </td>
  </tr>
  <tr>
   <td style="text-align:left;"> fev--digit_b </td>
   <td style="text-align:left;"> female </td>
   <td style="text-align:right;"> 409 </td>
   <td style="text-align:right;"> 1.8( 0.0),$p$&lt;.01 </td>
   <td style="text-align:right;"> -0.03( 0.00),$p$&lt;.01 </td>
   <td style="text-align:right;"> 3.7( 0.1),$p$&lt;.01 </td>
   <td style="text-align:right;"> -0.04( 0.01),$p$&lt;.01 </td>
  </tr>
  <tr>
   <td style="text-align:left;"> fev--digit_b </td>
   <td style="text-align:left;"> female </td>
   <td style="text-align:right;"> 410 </td>
   <td style="text-align:right;"> 1.8( 0.0),$p$&lt;.01 </td>
   <td style="text-align:right;"> -0.03( 0.00),$p$&lt;.01 </td>
   <td style="text-align:right;"> 3.7( 0.1),$p$&lt;.01 </td>
   <td style="text-align:right;"> -0.04( 0.01),$p$&lt;.01 </td>
  </tr>
  <tr>
   <td style="text-align:left;"> fev--digit_b </td>
   <td style="text-align:left;"> male </td>
   <td style="text-align:right;"> 299 </td>
   <td style="text-align:right;"> 2.6( 0.1),$p$&lt;.01 </td>
   <td style="text-align:right;"> -0.05( 0.01),$p$&lt;.01 </td>
   <td style="text-align:right;"> 3.8( 0.2),$p$&lt;.01 </td>
   <td style="text-align:right;"> -0.05( 0.01),$p$&lt;.01 </td>
  </tr>
  <tr>
   <td style="text-align:left;"> fev--digit_b </td>
   <td style="text-align:left;"> male </td>
   <td style="text-align:right;"> 300 </td>
   <td style="text-align:right;"> 2.6( 0.1),$p$&lt;.01 </td>
   <td style="text-align:right;"> -0.05( 0.01),$p$&lt;.01 </td>
   <td style="text-align:right;"> 3.9( 0.2),$p$&lt;.01 </td>
   <td style="text-align:right;"> -0.05( 0.01),$p$&lt;.01 </td>
  </tr>
  <tr>
   <td style="text-align:left;"> fev--digit_f </td>
   <td style="text-align:left;"> female </td>
   <td style="text-align:right;"> 409 </td>
   <td style="text-align:right;"> 1.8( 0.0),$p$&lt;.01 </td>
   <td style="text-align:right;"> -0.03( 0.00),$p$&lt;.01 </td>
   <td style="text-align:right;"> 5.5( 0.1),$p$&lt;.01 </td>
   <td style="text-align:right;"> -0.03( 0.01),$p$&lt;.01 </td>
  </tr>
  <tr>
   <td style="text-align:left;"> fev--digit_f </td>
   <td style="text-align:left;"> female </td>
   <td style="text-align:right;"> 410 </td>
   <td style="text-align:right;"> 1.8( 0.0),$p$&lt;.01 </td>
   <td style="text-align:right;"> -0.03( 0.00),$p$&lt;.01 </td>
   <td style="text-align:right;"> 5.6( 0.1),$p$&lt;.01 </td>
   <td style="text-align:right;"> -0.03( 0.01),$p$&lt;.01 </td>
  </tr>
  <tr>
   <td style="text-align:left;"> fev--digit_f </td>
   <td style="text-align:left;"> male </td>
   <td style="text-align:right;"> 299 </td>
   <td style="text-align:right;"> 2.5( 0.1),$p$&lt;.01 </td>
   <td style="text-align:right;"> -0.05( 0.01),$p$&lt;.01 </td>
   <td style="text-align:right;"> 5.4( 0.1),$p$&lt;.01 </td>
   <td style="text-align:right;"> -0.03( 0.01),$p$=.06 </td>
  </tr>
  <tr>
   <td style="text-align:left;"> fev--digit_f </td>
   <td style="text-align:left;"> male </td>
   <td style="text-align:right;"> 300 </td>
   <td style="text-align:right;"> 2.6( 0.1),$p$&lt;.01 </td>
   <td style="text-align:right;"> -0.05( 0.01),$p$&lt;.01 </td>
   <td style="text-align:right;"> 5.3( 0.1),$p$&lt;.01 </td>
   <td style="text-align:right;"> -0.03( 0.01),$p$=.06 </td>
  </tr>
  <tr>
   <td style="text-align:left;"> fev--fig_mem </td>
   <td style="text-align:left;"> female </td>
   <td style="text-align:right;"> 410 </td>
   <td style="text-align:right;"> 1.8( 0.0),$p$&lt;.01 </td>
   <td style="text-align:right;"> -0.03( 0.00),$p$&lt;.01 </td>
   <td style="text-align:right;"> 20.5( 0.3),$p$&lt;.01 </td>
   <td style="text-align:right;"> -0.18( 0.03),$p$&lt;.01 </td>
  </tr>
  <tr>
   <td style="text-align:left;"> fev--fig_mem </td>
   <td style="text-align:left;"> male </td>
   <td style="text-align:right;"> 299 </td>
   <td style="text-align:right;"> 2.6( 0.1),$p$&lt;.01 </td>
   <td style="text-align:right;"> -0.05( 0.01),$p$&lt;.01 </td>
   <td style="text-align:right;"> 18.5( 0.5),$p$&lt;.01 </td>
   <td style="text-align:right;"> -0.16( 0.04),$p$&lt;.01 </td>
  </tr>
  <tr>
   <td style="text-align:left;"> fev--information </td>
   <td style="text-align:left;"> female </td>
   <td style="text-align:right;"> 411 </td>
   <td style="text-align:right;"> 1.8( 0.0),$p$&lt;.01 </td>
   <td style="text-align:right;"> -0.03( 0.00),$p$&lt;.01 </td>
   <td style="text-align:right;"> 27.9( 0.6),$p$&lt;.01 </td>
   <td style="text-align:right;"> -0.28( 0.05),$p$&lt;.01 </td>
  </tr>
  <tr>
   <td style="text-align:left;"> fev--information </td>
   <td style="text-align:left;"> male </td>
   <td style="text-align:right;"> 300 </td>
   <td style="text-align:right;"> 2.5( 0.1),$p$&lt;.01 </td>
   <td style="text-align:right;"> -0.04( 0.01),$p$&lt;.01 </td>
   <td style="text-align:right;"> 30.7( 0.8),$p$&lt;.01 </td>
   <td style="text-align:right;"> -0.17( 0.06),$p$&lt;.01 </td>
  </tr>
  <tr>
   <td style="text-align:left;"> fev--mmms </td>
   <td style="text-align:left;"> female </td>
   <td style="text-align:right;"> 412 </td>
   <td style="text-align:right;"> 1.8( 0.0),$p$&lt;.01 </td>
   <td style="text-align:right;"> -0.03( 0.00),$p$&lt;.01 </td>
   <td style="text-align:right;"> 28.1( 0.1),$p$&lt;.01 </td>
   <td style="text-align:right;"> -0.29( 0.03),$p$&lt;.01 </td>
  </tr>
  <tr>
   <td style="text-align:left;"> fev--mmms </td>
   <td style="text-align:left;"> male </td>
   <td style="text-align:right;"> 300 </td>
   <td style="text-align:right;"> 2.5( 0.1),$p$&lt;.01 </td>
   <td style="text-align:right;"> -0.04( 0.01),$p$&lt;.01 </td>
   <td style="text-align:right;"> 27.1( 0.2),$p$&lt;.01 </td>
   <td style="text-align:right;"> -0.14( 0.03),$p$&lt;.01 </td>
  </tr>
  <tr>
   <td style="text-align:left;"> fev--rotate </td>
   <td style="text-align:left;"> female </td>
   <td style="text-align:right;"> 408 </td>
   <td style="text-align:right;"> 1.8( 0.0),$p$&lt;.01 </td>
   <td style="text-align:right;"> -0.03( 0.00),$p$&lt;.01 </td>
   <td style="text-align:right;"> 41.5( 1.6),$p$&lt;.01 </td>
   <td style="text-align:right;"> -0.96( 0.11),$p$&lt;.01 </td>
  </tr>
  <tr>
   <td style="text-align:left;"> fev--rotate </td>
   <td style="text-align:left;"> male </td>
   <td style="text-align:right;"> 299 </td>
   <td style="text-align:right;"> 2.6( 0.1),$p$&lt;.01 </td>
   <td style="text-align:right;"> -0.05( 0.01),$p$&lt;.01 </td>
   <td style="text-align:right;"> 49.5( 2.7),$p$&lt;.01 </td>
   <td style="text-align:right;"> -1.57( 0.20),$p$&lt;.01 </td>
  </tr>
  <tr>
   <td style="text-align:left;"> fev--symbol </td>
   <td style="text-align:left;"> female </td>
   <td style="text-align:right;"> 408 </td>
   <td style="text-align:right;"> 1.8( 0.0),$p$&lt;.01 </td>
   <td style="text-align:right;"> -0.03( 0.00),$p$&lt;.01 </td>
   <td style="text-align:right;"> 34.5( 0.7),$p$&lt;.01 </td>
   <td style="text-align:right;"> -0.83( 0.06),$p$&lt;.01 </td>
  </tr>
  <tr>
   <td style="text-align:left;"> fev--symbol </td>
   <td style="text-align:left;"> male </td>
   <td style="text-align:right;"> 299 </td>
   <td style="text-align:right;"> 2.5( 0.1),$p$&lt;.01 </td>
   <td style="text-align:right;"> -0.05( 0.01),$p$&lt;.01 </td>
   <td style="text-align:right;"> 32.7( 1.1),$p$&lt;.01 </td>
   <td style="text-align:right;"> -0.92( 0.09),$p$&lt;.01 </td>
  </tr>
  <tr>
   <td style="text-align:left;"> fev--synonyms </td>
   <td style="text-align:left;"> female </td>
   <td style="text-align:right;"> 410 </td>
   <td style="text-align:right;"> 1.8( 0.0),$p$&lt;.01 </td>
   <td style="text-align:right;"> -0.03( 0.00),$p$&lt;.01 </td>
   <td style="text-align:right;"> 17.7( 0.3),$p$&lt;.01 </td>
   <td style="text-align:right;"> -0.12( 0.02),$p$&lt;.01 </td>
  </tr>
  <tr>
   <td style="text-align:left;"> fev--synonyms </td>
   <td style="text-align:left;"> male </td>
   <td style="text-align:right;"> 300 </td>
   <td style="text-align:right;"> 2.6( 0.1),$p$&lt;.01 </td>
   <td style="text-align:right;"> -0.05( 0.01),$p$&lt;.01 </td>
   <td style="text-align:right;"> 15.9( 0.6),$p$&lt;.01 </td>
   <td style="text-align:right;"> -0.08( 0.04),$p$=.04 </td>
  </tr>
  <tr>
   <td style="text-align:left;"> grip--analogies </td>
   <td style="text-align:left;"> female </td>
   <td style="text-align:right;"> 410 </td>
   <td style="text-align:right;"> 21.5( 0.4),$p$&lt;.01 </td>
   <td style="text-align:right;"> -0.57( 0.04),$p$&lt;.01 </td>
   <td style="text-align:right;"> 13.1( 0.3),$p$&lt;.01 </td>
   <td style="text-align:right;"> -0.12( 0.03),$p$&lt;.01 </td>
  </tr>
  <tr>
   <td style="text-align:left;"> grip--analogies </td>
   <td style="text-align:left;"> male </td>
   <td style="text-align:right;"> 300 </td>
   <td style="text-align:right;"> 37.7( 1.5),$p$&lt;.01 </td>
   <td style="text-align:right;"> -0.87( 0.20),$p$&lt;.01 </td>
   <td style="text-align:right;"> 13.1( 0.5),$p$&lt;.01 </td>
   <td style="text-align:right;"> -0.11( 0.04),$p$&lt;.01 </td>
  </tr>
  <tr>
   <td style="text-align:left;"> grip--block </td>
   <td style="text-align:left;"> female </td>
   <td style="text-align:right;"> 409 </td>
   <td style="text-align:right;"> 21.5( 0.5),$p$&lt;.01 </td>
   <td style="text-align:right;"> -0.57( 0.04),$p$&lt;.01 </td>
   <td style="text-align:right;"> 16.5( 0.5),$p$&lt;.01 </td>
   <td style="text-align:right;"> -0.37( 0.03),$p$&lt;.01 </td>
  </tr>
  <tr>
   <td style="text-align:left;"> grip--block </td>
   <td style="text-align:left;"> male </td>
   <td style="text-align:right;"> 298 </td>
   <td style="text-align:right;"> 36.9( 0.9),$p$&lt;.01 </td>
   <td style="text-align:right;"> -0.96( 0.08),$p$&lt;.01 </td>
   <td style="text-align:right;"> 16.0( 0.8),$p$&lt;.01 </td>
   <td style="text-align:right;"> -0.41( 0.06),$p$&lt;.01 </td>
  </tr>
  <tr>
   <td style="text-align:left;"> grip--digit_b </td>
   <td style="text-align:left;"> female </td>
   <td style="text-align:right;"> 409 </td>
   <td style="text-align:right;"> 21.5( 0.5),$p$&lt;.01 </td>
   <td style="text-align:right;"> -0.57( 0.04),$p$&lt;.01 </td>
   <td style="text-align:right;"> 3.7( 0.1),$p$&lt;.01 </td>
   <td style="text-align:right;"> -0.04( 0.01),$p$&lt;.01 </td>
  </tr>
  <tr>
   <td style="text-align:left;"> grip--digit_b </td>
   <td style="text-align:left;"> male </td>
   <td style="text-align:right;"> 299 </td>
   <td style="text-align:right;"> 36.9( 0.8),$p$&lt;.01 </td>
   <td style="text-align:right;"> -0.95( 0.08),$p$&lt;.01 </td>
   <td style="text-align:right;"> 3.8( 0.2),$p$&lt;.01 </td>
   <td style="text-align:right;"> -0.05( 0.01),$p$&lt;.01 </td>
  </tr>
  <tr>
   <td style="text-align:left;"> grip--digit_f </td>
   <td style="text-align:left;"> female </td>
   <td style="text-align:right;"> 409 </td>
   <td style="text-align:right;"> 21.5( 0.4),$p$&lt;.01 </td>
   <td style="text-align:right;"> -0.57( 0.04),$p$&lt;.01 </td>
   <td style="text-align:right;"> 5.5( 0.1),$p$&lt;.01 </td>
   <td style="text-align:right;"> -0.03( 0.01),$p$&lt;.01 </td>
  </tr>
  <tr>
   <td style="text-align:left;"> grip--digit_f </td>
   <td style="text-align:left;"> male </td>
   <td style="text-align:right;"> 299 </td>
   <td style="text-align:right;"> 36.8( 0.8),$p$&lt;.01 </td>
   <td style="text-align:right;"> -0.95( 0.08),$p$&lt;.01 </td>
   <td style="text-align:right;"> 5.3( 0.1),$p$&lt;.01 </td>
   <td style="text-align:right;"> -0.02( 0.01),$p$=.08 </td>
  </tr>
  <tr>
   <td style="text-align:left;"> grip--information </td>
   <td style="text-align:left;"> female </td>
   <td style="text-align:right;"> 411 </td>
   <td style="text-align:right;"> 21.5( 0.4),$p$&lt;.01 </td>
   <td style="text-align:right;"> -0.57( 0.04),$p$&lt;.01 </td>
   <td style="text-align:right;"> 27.9( 0.6),$p$&lt;.01 </td>
   <td style="text-align:right;"> -0.29( 0.05),$p$&lt;.01 </td>
  </tr>
  <tr>
   <td style="text-align:left;"> grip--information </td>
   <td style="text-align:left;"> male </td>
   <td style="text-align:right;"> 300 </td>
   <td style="text-align:right;"> 37.7( 1.5),$p$&lt;.01 </td>
   <td style="text-align:right;"> -0.87( 0.20),$p$&lt;.01 </td>
   <td style="text-align:right;"> 30.6( 0.8),$p$&lt;.01 </td>
   <td style="text-align:right;"> -0.16( 0.06),$p$=.01 </td>
  </tr>
  <tr>
   <td style="text-align:left;"> grip--mmms </td>
   <td style="text-align:left;"> female </td>
   <td style="text-align:right;"> 412 </td>
   <td style="text-align:right;"> 21.5( 0.5),$p$&lt;.01 </td>
   <td style="text-align:right;"> -0.57( 0.05),$p$&lt;.01 </td>
   <td style="text-align:right;"> 28.1( 0.1),$p$&lt;.01 </td>
   <td style="text-align:right;"> -0.29( 0.03),$p$&lt;.01 </td>
  </tr>
  <tr>
   <td style="text-align:left;"> grip--mmms </td>
   <td style="text-align:left;"> male </td>
   <td style="text-align:right;"> 300 </td>
   <td style="text-align:right;"> 37.6( 1.6),$p$&lt;.01 </td>
   <td style="text-align:right;"> -0.87( 0.22),$p$&lt;.01 </td>
   <td style="text-align:right;"> 27.1( 0.2),$p$&lt;.01 </td>
   <td style="text-align:right;"> -0.14( 0.03),$p$&lt;.01 </td>
  </tr>
  <tr>
   <td style="text-align:left;"> grip--symbol </td>
   <td style="text-align:left;"> female </td>
   <td style="text-align:right;"> 409 </td>
   <td style="text-align:right;"> 21.5( 0.5),$p$&lt;.01 </td>
   <td style="text-align:right;"> -0.57( 0.04),$p$&lt;.01 </td>
   <td style="text-align:right;"> 34.5( 0.7),$p$&lt;.01 </td>
   <td style="text-align:right;"> -0.82( 0.06),$p$&lt;.01 </td>
  </tr>
  <tr>
   <td style="text-align:left;"> grip--symbol </td>
   <td style="text-align:left;"> male </td>
   <td style="text-align:right;"> 299 </td>
   <td style="text-align:right;"> 36.8( 0.8),$p$&lt;.01 </td>
   <td style="text-align:right;"> -0.95( 0.08),$p$&lt;.01 </td>
   <td style="text-align:right;"> 32.6( 1.1),$p$&lt;.01 </td>
   <td style="text-align:right;"> -0.89( 0.08),$p$&lt;.01 </td>
  </tr>
  <tr>
   <td style="text-align:left;"> grip--synonyms </td>
   <td style="text-align:left;"> female </td>
   <td style="text-align:right;"> 410 </td>
   <td style="text-align:right;"> 21.5( 0.5),$p$&lt;.01 </td>
   <td style="text-align:right;"> -0.57( 0.04),$p$&lt;.01 </td>
   <td style="text-align:right;"> 17.7( 0.3),$p$&lt;.01 </td>
   <td style="text-align:right;"> -0.13( 0.02),$p$&lt;.01 </td>
  </tr>
  <tr>
   <td style="text-align:left;"> grip--synonyms </td>
   <td style="text-align:left;"> male </td>
   <td style="text-align:right;"> 300 </td>
   <td style="text-align:right;"> 37.7( 1.6),$p$&lt;.01 </td>
   <td style="text-align:right;"> -0.86( 0.20),$p$&lt;.01 </td>
   <td style="text-align:right;"> 15.9( 0.6),$p$&lt;.01 </td>
   <td style="text-align:right;"> -0.07( 0.04),$p$=.05 </td>
  </tr>
</tbody>
</table>

# Forest Plots
Forest plots of the 'aehplus' model are shown for each combination of physical & cognitive variable.


## Physical Variable:  fev 
![](figure-png/forest-1.png)<!-- -->![](figure-png/forest-2.png)<!-- -->![](figure-png/forest-3.png)<!-- -->![](figure-png/forest-4.png)<!-- -->![](figure-png/forest-5.png)<!-- -->![](figure-png/forest-6.png)<!-- -->![](figure-png/forest-7.png)<!-- -->![](figure-png/forest-8.png)<!-- -->![](figure-png/forest-9.png)<!-- -->![](figure-png/forest-10.png)<!-- -->![](figure-png/forest-11.png)<!-- -->![](figure-png/forest-12.png)<!-- -->![](figure-png/forest-13.png)<!-- -->![](figure-png/forest-14.png)<!-- -->![](figure-png/forest-15.png)<!-- -->![](figure-png/forest-16.png)<!-- -->![](figure-png/forest-17.png)<!-- -->![](figure-png/forest-18.png)<!-- -->![](figure-png/forest-19.png)<!-- -->![](figure-png/forest-20.png)<!-- -->![](figure-png/forest-21.png)<!-- -->![](figure-png/forest-22.png)<!-- -->![](figure-png/forest-23.png)<!-- -->![](figure-png/forest-24.png)<!-- -->![](figure-png/forest-25.png)<!-- -->

## Physical Variable:  fev100 
![](figure-png/forest-26.png)<!-- -->![](figure-png/forest-27.png)<!-- -->

## Physical Variable:  gait 
![](figure-png/forest-28.png)<!-- -->![](figure-png/forest-29.png)<!-- -->![](figure-png/forest-30.png)<!-- -->![](figure-png/forest-31.png)<!-- -->![](figure-png/forest-32.png)<!-- -->![](figure-png/forest-33.png)<!-- -->![](figure-png/forest-34.png)<!-- -->![](figure-png/forest-35.png)<!-- -->![](figure-png/forest-36.png)<!-- -->![](figure-png/forest-37.png)<!-- -->![](figure-png/forest-38.png)<!-- -->![](figure-png/forest-39.png)<!-- -->![](figure-png/forest-40.png)<!-- -->![](figure-png/forest-41.png)<!-- -->![](figure-png/forest-42.png)<!-- -->![](figure-png/forest-43.png)<!-- -->![](figure-png/forest-44.png)<!-- -->![](figure-png/forest-45.png)<!-- -->![](figure-png/forest-46.png)<!-- -->![](figure-png/forest-47.png)<!-- -->![](figure-png/forest-48.png)<!-- -->

## Physical Variable:  grip 
![](figure-png/forest-49.png)<!-- -->![](figure-png/forest-50.png)<!-- -->![](figure-png/forest-51.png)<!-- -->![](figure-png/forest-52.png)<!-- -->![](figure-png/forest-53.png)<!-- -->![](figure-png/forest-54.png)<!-- -->![](figure-png/forest-55.png)<!-- -->![](figure-png/forest-56.png)<!-- -->![](figure-png/forest-57.png)<!-- -->![](figure-png/forest-58.png)<!-- -->![](figure-png/forest-59.png)<!-- -->![](figure-png/forest-60.png)<!-- -->![](figure-png/forest-61.png)<!-- -->![](figure-png/forest-62.png)<!-- -->![](figure-png/forest-63.png)<!-- -->![](figure-png/forest-64.png)<!-- -->![](figure-png/forest-65.png)<!-- -->![](figure-png/forest-66.png)<!-- -->![](figure-png/forest-67.png)<!-- -->![](figure-png/forest-68.png)<!-- -->![](figure-png/forest-69.png)<!-- -->![](figure-png/forest-70.png)<!-- -->![](figure-png/forest-71.png)<!-- -->![](figure-png/forest-72.png)<!-- -->![](figure-png/forest-73.png)<!-- -->![](figure-png/forest-74.png)<!-- -->![](figure-png/forest-75.png)<!-- -->![](figure-png/forest-76.png)<!-- -->![](figure-png/forest-77.png)<!-- -->![](figure-png/forest-78.png)<!-- -->![](figure-png/forest-79.png)<!-- -->![](figure-png/forest-80.png)<!-- -->![](figure-png/forest-81.png)<!-- -->![](figure-png/forest-82.png)<!-- -->![](figure-png/forest-83.png)<!-- -->![](figure-png/forest-84.png)<!-- -->![](figure-png/forest-85.png)<!-- -->![](figure-png/forest-86.png)<!-- -->

## Physical Variable:  pef 
![](figure-png/forest-87.png)<!-- -->![](figure-png/forest-88.png)<!-- -->![](figure-png/forest-89.png)<!-- -->![](figure-png/forest-90.png)<!-- -->![](figure-png/forest-91.png)<!-- -->![](figure-png/forest-92.png)<!-- -->![](figure-png/forest-93.png)<!-- -->![](figure-png/forest-94.png)<!-- -->![](figure-png/forest-95.png)<!-- -->![](figure-png/forest-96.png)<!-- -->![](figure-png/forest-97.png)<!-- -->![](figure-png/forest-98.png)<!-- -->![](figure-png/forest-99.png)<!-- -->

## Physical Variable:  tug 
![](figure-png/forest-100.png)<!-- -->![](figure-png/forest-101.png)<!-- -->![](figure-png/forest-102.png)<!-- -->![](figure-png/forest-103.png)<!-- -->![](figure-png/forest-104.png)<!-- -->


# Session Information
For the sake of documentation and reproducibility, the current report was rendered on a system using the following software.


```
Report rendered by wibeasley at 2016-05-28, 14:49 -0700
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
[1] ggplot2_2.1.0 magrittr_1.5  knitr_1.13   

loaded via a namespace (and not attached):
 [1] Rcpp_0.12.5      munsell_0.4.3    colorspace_1.2-6 R6_2.1.2         highr_0.6        stringr_1.0.0   
 [7] plyr_1.8.3       dplyr_0.4.3      tools_3.3.0      parallel_3.3.0   DT_0.1           grid_3.3.0      
[13] gtable_0.2.0     DBI_0.4-1        htmltools_0.3.5  lazyeval_0.1.10  yaml_2.1.13      digest_0.6.9    
[19] assertthat_0.1   reshape2_1.4.1   formatR_1.4      tidyr_0.4.1      htmlwidgets_0.6  evaluate_0.9    
[25] rmarkdown_0.9.6  labeling_0.3     stringi_1.1.1    scales_0.4.0     jsonlite_0.9.20 
```
