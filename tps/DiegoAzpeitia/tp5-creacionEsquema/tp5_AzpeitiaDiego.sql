tp5 Azpeitia Diego

CREATE TABLE EMPLEADO (
       ID INTEGER PRIMARY KEY,
       razon_social VARCHAR(20),
       dni_cuil VARCHAR(20),
       fecha_alta DATE
);

CREATE TABLE PRODUCTO(
ID INTEGER PRIMARY KEY,
PRECIO_UNIT INTEGER,
STOCK_ACTUAL INTEGER
);


CREATE TABLE FACTURA(
       ID INTEGER PRIMARY KEY,
       NOMBRE VARCHAR(20),
       NUM_FACTURA VARCHAR(20),
       ID_CLIENTE INTEGER ,
       FOREIGN KEY (ID_CLIENTE) REFERENCES EMPLEADO(ID)
       );
       
CREATE TABLE FACTURA_PRODUCTO(
ID_FACTURA INTEGER ,
ID_PRODUCTO INTEGER ,
PRIMARY KEY (ID_FACTURA,ID_PRODUCTO),
CANTIDAD VARCHAR(20),
FOREIGN KEY (id_FACTURA) REFERENCES FACTURA(id),
FOREIGN KEY (id_PRODUCTO) REFERENCES PRODUCTO(ID)
);


INSERT INTO `EMPLEADO` (`razon_social`,`dni_cuil`,`fecha_alta`) VALUES ("Mauris Vestibulum Neque LLP",33562181,"Thu, 12th, 2015"),("Mauris LLP",23290040,"Mon, 3rd, 2015"),("Purus In LLP",32557711,"Tue, 24th, 2015"),("Nec Cursus A Industries",41095206,"Wed, 25th, 2015"),("In Faucibus LLC",28176384,"Mon, 14th, 2015"),("Nunc Limited",33287882,"Wed, 13th, 2015"),("Gravida Sagittis Company",26030664,"Tue, 12th, 2015"),("Rutrum Eu Ultrices Institute",23528136,"Thu, 19th, 2015"),("Interdum Enim Non Consulting",32627711,"Sat, 23rd, 2016"),("In Faucibus Orci Incorporated",39693690,"Sun, 5th, 2015");
INSERT INTO `EMPLEADO` (`razon_social`,`dni_cuil`,`fecha_alta`) VALUES ("Pulvinar Arcu Foundation",31509332,"Tue, 29th, 2015"),("Sem Eget LLP",27172312,"Wed, 11th, 2015"),("Eu Company",38999760,"Tue, 24th, 2015"),("Pretium Aliquet Metus Corporation",39608720,"Sun, 8th, 2016"),("A Tortor Nunc LLC",37790423,"Wed, 17th, 2014"),("Et Nunc Company",26882238,"Sun, 28th, 2014"),("Quis Pede Suspendisse LLC",39791030,"Tue, 19th, 2016"),("Lorem Ipsum Dolor Corporation",24655982,"Thu, 24th, 2015"),("Ut Tincidunt Vehicula Industries",30330184,"Sun, 8th, 2015"),("Volutpat Ornare Corporation",23214138,"Thu, 17th, 2014");
INSERT INTO `EMPLEADO` (`razon_social`,`dni_cuil`,`fecha_alta`) VALUES ("Viverra Maecenas Corporation",40034783,"Sat, 4th, 2016"),("Neque Consulting",30307452,"Wed, 22nd, 2015"),("Volutpat Nulla LLP",27135693,"Mon, 13th, 2015"),("Sed LLP",40314921,"Thu, 20th, 2014"),("Maecenas Libero LLP",40450823,"Thu, 10th, 2015"),("Vulputate Velit Company",36459406,"Tue, 26th, 2016"),("Fames Ac Turpis Foundation",36806023,"Fri, 6th, 2015"),("Non Limited",41055154,"Sat, 6th, 2015"),("Neque Tellus Imperdiet Ltd",26074648,"Mon, 5th, 2015"),("Dui Cum Ltd",34853574,"Wed, 27th, 2015");
INSERT INTO `EMPLEADO` (`razon_social`,`dni_cuil`,`fecha_alta`) VALUES ("Tristique Corporation",27418360,"Mon, 28th, 2015"),("Magna Limited",38931289,"Sat, 18th, 2016"),("Odio Institute",40856022,"Fri, 13th, 2015"),("Sem Ut Dolor Industries",25728448,"Sat, 4th, 2016"),("Eget Varius Associates",41753155,"Tue, 1st, 2016"),("Montes Nascetur Ridiculus PC",40739396,"Tue, 25th, 2015"),("Malesuada Vel Inc.",27247989,"Thu, 4th, 2014"),("Ultricies Ornare Company",37244594,"Tue, 10th, 2016"),("Diam Duis Mi Consulting",38555710,"Wed, 2nd, 2014"),("Vitae Risus LLC",29371688,"Sun, 31st, 2015");
INSERT INTO `EMPLEADO` (`razon_social`,`dni_cuil`,`fecha_alta`) VALUES ("Amet Risus Donec Incorporated",29174272,"Sun, 5th, 2015"),("Est Tempor Bibendum Inc.",38392496,"Thu, 4th, 2014"),("Enim Foundation",37356892,"Sat, 18th, 2015"),("Feugiat Nec Inc.",33043783,"Sun, 12th, 2014"),("Magna Praesent Institute",26384490,"Thu, 5th, 2015"),("Metus Vivamus LLP",25674408,"Tue, 17th, 2016"),("Nec Ligula Ltd",40530645,"Wed, 20th, 2016"),("A Neque Nullam Corp.",31103837,"Sun, 29th, 2014"),("Elit Pellentesque A LLC",38993241,"Tue, 11th, 2014"),("Dis Foundation",38967071,"Sun, 27th, 2016");
INSERT INTO `EMPLEADO` (`razon_social`,`dni_cuil`,`fecha_alta`) VALUES ("Dictum PC",40731438,"Sat, 18th, 2016"),("Semper Nam LLP",26384974,"Fri, 8th, 2014"),("Nulla Eget Ltd",40729851,"Sun, 4th, 2015"),("Nec Mauris Blandit Limited",29674918,"Sun, 19th, 2015"),("Feugiat Institute",30719113,"Mon, 8th, 2014"),("Ante Company",35271054,"Fri, 31st, 2015"),("Lorem Auctor Quis Foundation",33880981,"Sat, 9th, 2016"),("Sed Consequat Auctor Corporation",27653748,"Thu, 26th, 2015"),("Eget PC",33473896,"Sun, 22nd, 2015"),("Nonummy Ultricies LLC",24476611,"Fri, 12th, 2016");
INSERT INTO `EMPLEADO` (`razon_social`,`dni_cuil`,`fecha_alta`) VALUES ("Vestibulum Limited",30615186,"Tue, 16th, 2016"),("Molestie LLP",23406523,"Sun, 3rd, 2016"),("Laoreet Company",31950945,"Wed, 22nd, 2015"),("Volutpat Nulla Company",29642119,"Tue, 12th, 2014"),("Dolor Corp.",29118753,"Wed, 22nd, 2014"),("Aliquam Ultrices Associates",30251293,"Sat, 3rd, 2015"),("Mauris Ipsum Porta Inc.",25824013,"Sun, 26th, 2014"),("Auctor Odio A PC",37790190,"Sat, 1st, 2014"),("Vestibulum Company",31334021,"Wed, 19th, 2015"),("Nisi Dictum Incorporated",41903237,"Fri, 22nd, 2015");
INSERT INTO `EMPLEADO` (`razon_social`,`dni_cuil`,`fecha_alta`) VALUES ("Nascetur Ridiculus Mus Industries",29261298,"Sun, 27th, 2015"),("Sollicitudin Orci Sem Institute",35256389,"Wed, 2nd, 2015"),("Pretium Et Corporation",28822827,"Sat, 14th, 2015"),("Lobortis LLP",39901701,"Tue, 17th, 2015"),("Orci Lacus Vestibulum Inc.",31614696,"Sat, 27th, 2015"),("Non Institute",37821981,"Sun, 26th, 2015"),("Scelerisque Dui PC",23249541,"Sat, 11th, 2015"),("Eget Institute",35676277,"Tue, 29th, 2014"),("Laoreet Lectus Foundation",24631881,"Wed, 24th, 2014"),("Magna Nam Ligula Ltd",33584362,"Thu, 26th, 2015");
INSERT INTO `EMPLEADO` (`razon_social`,`dni_cuil`,`fecha_alta`) VALUES ("Phasellus LLC",40142091,"Wed, 15th, 2015"),("Leo Corporation",40497186,"Tue, 15th, 2015"),("Cursus Diam At Consulting",23683709,"Fri, 27th, 2015"),("Dolor Nonummy Ac Industries",36739334,"Wed, 18th, 2015"),("Et Ltd",25136813,"Fri, 9th, 2015"),("Lorem Limited",29555215,"Wed, 18th, 2015"),("Et Inc.",29375244,"Sun, 19th, 2015"),("Scelerisque Ltd",39832207,"Tue, 5th, 2016"),("Iaculis Foundation",29076570,"Mon, 23rd, 2015"),("Amet Lorem LLP",29506461,"Sun, 29th, 2016");
INSERT INTO `EMPLEADO` (`razon_social`,`dni_cuil`,`fecha_alta`) VALUES ("Eu Industries",31475912,"Fri, 12th, 2015"),("Mauris Associates",33243955,"Thu, 28th, 2016"),("Scelerisque Neque Nullam LLC",36484041,"Thu, 12th, 2015"),("Risus Corporation",28005742,"Fri, 29th, 2014"),("Feugiat Non Inc.",27334207,"Wed, 6th, 2015"),("Mauris Blandit LLP",23613401,"Sat, 5th, 2016"),("Massa Non Ante Industries",38389570,"Sat, 20th, 2014"),("Neque Morbi Quis Company",41378724,"Fri, 26th, 2015"),("Molestie Pharetra Nibh Limited",41174127,"Wed, 14th, 2015"),("Elit Curabitur Sed Corporation",23148195,"Wed, 25th, 2015");

INSERT INTO `producto` (`precio_unit`,`stock_actual`) VALUES (1,"46676"),(2,"37394"),(3,"58589"),(4,"83430"),(5,"32737"),(6,"01066"),(7,"96603"),(8,"93688"),(9,"55191"),(10,"78593");
INSERT INTO `producto` (`precio_unit`,`stock_actual`) VALUES (11,"14417"),(12,"66296"),(13,"74181"),(14,"73866"),(15,"60698"),(16,"04491"),(17,"46182"),(18,"04552"),(19,"90249"),(20,"98992");
INSERT INTO `producto` (`precio_unit`,`stock_actual`) VALUES (21,"48078"),(22,"04138"),(23,"96035"),(24,"88466"),(25,"24857"),(26,"21152"),(27,"02192"),(28,"81077"),(29,"00178"),(30,"00889");
INSERT INTO `producto` (`precio_unit`,`stock_actual`) VALUES (31,"46799"),(32,"84785"),(33,"20486"),(34,"04453"),(35,"20407"),(36,"67920"),(37,"02169"),(38,"09809"),(39,"41147"),(40,"89287");
INSERT INTO `producto` (`precio_unit`,`stock_actual`) VALUES (41,"89838"),(42,"23007"),(43,"79164"),(44,"69397"),(45,"63327"),(46,"57374"),(47,"53565"),(48,"73748"),(49,"97405"),(50,"91020");
INSERT INTO `producto` (`precio_unit`,`stock_actual`) VALUES (51,"23167"),(52,"09571"),(53,"01304"),(54,"35039"),(55,"39001"),(56,"08400"),(57,"15097"),(58,"13057"),(59,"08033"),(60,"05728");
INSERT INTO `producto` (`precio_unit`,`stock_actual`) VALUES (61,"66156"),(62,"55694"),(63,"48553"),(64,"42577"),(65,"12685"),(66,"84927"),(67,"92049"),(68,"28204"),(69,"45502"),(70,"01395");
INSERT INTO `producto` (`precio_unit`,`stock_actual`) VALUES (71,"25788"),(72,"75877"),(73,"20177"),(74,"77396"),(75,"60662"),(76,"43916"),(77,"72113"),(78,"76666"),(79,"39184"),(80,"08521");
INSERT INTO `producto` (`precio_unit`,`stock_actual`) VALUES (81,"14482"),(82,"06779"),(83,"20863"),(84,"68248"),(85,"71014"),(86,"52127"),(87,"11778"),(88,"09786"),(89,"00011"),(90,"75104");
INSERT INTO `producto` (`precio_unit`,`stock_actual`) VALUES (91,"62114"),(92,"84259"),(93,"89854"),(94,"89327"),(95,"77977"),(96,"44200"),(97,"04293"),(98,"99746"),(99,"85227"),(100,"62799");


INSERT INTO `FACTURA` (`nombre`,`num_factura`,`id_cliente`,`id_empleado`) VALUES ("Sybill Gross",1,1,"44300"),("Zorita Massey",2,2,"95852"),("Miranda Booth",3,3,"45588"),("Candice Hahn",4,4,"48563"),("Illiana Wagner",5,5,"90372"),("Karly Rocha",6,6,"03668"),("Pamela Wilkerson",7,7,"25962"),("Uma Bradford",8,8,"48140"),("Shafira Lloyd",9,9,"46942"),("Quail Cleveland",10,10,"73178");
INSERT INTO `FACTURA` (`nombre`,`num_factura`,`id_cliente`,`id_empleado`) VALUES ("Tatyana Dale",11,11,"54865"),("Miriam Golden",12,12,"52991"),("Bree Gibbs",13,13,"68750"),("Hadley Bird",14,14,"64657"),("Brittany Deleon",15,15,"20999"),("Kaye Willis",16,16,"63298"),("Jescie Conner",17,17,"90364"),("Jenna Fitzgerald",18,18,"07161"),("Quyn Shaffer",19,19,"22791"),("Olivia Rowe",20,20,"59972");
INSERT INTO `FACTURA` (`nombre`,`num_factura`,`id_cliente`,`id_empleado`) VALUES ("Candace Elliott",21,21,"37112"),("Samantha Jordan",22,22,"48150"),("Bree Walsh",23,23,"88367"),("Fredericka Petty",24,24,"81744"),("Cassandra Franks",25,25,"65133"),("Megan Mcfarland",26,26,"85522"),("Ignacia Pruitt",27,27,"99172"),("Maggie Carter",28,28,"23181"),("Samantha Forbes",29,29,"00567"),("Nadine Ashley",30,30,"40752");
INSERT INTO `FACTURA` (`nombre`,`num_factura`,`id_cliente`,`id_empleado`) VALUES ("Mira Richards",31,31,"48090"),("Lacey Miranda",32,32,"94535"),("Ursa Mccray",33,33,"18329"),("Lenore Chan",34,34,"51864"),("Cleo Baxter",35,35,"81362"),("Rebecca Benton",36,36,"73936"),("Montana Mann",37,37,"78104"),("Jenna Rivas",38,38,"28542"),("Ann Scott",39,39,"93371"),("Katelyn Ray",40,40,"05044");
INSERT INTO `FACTURA` (`nombre`,`num_factura`,`id_cliente`,`id_empleado`) VALUES ("Mia Barr",41,41,"20427"),("Sybil Hamilton",42,42,"49468"),("Tatiana Sexton",43,43,"33097"),("Kristen Brooks",44,44,"00126"),("Rhiannon Salazar",45,45,"92402"),("Mara Carrillo",46,46,"66261"),("Naomi Lopez",47,47,"48218"),("Nomlanga Mckenzie",48,48,"91535"),("Amena Byers",49,49,"98423"),("Priscilla Clayton",50,50,"30196");
INSERT INTO `FACTURA` (`nombre`,`num_factura`,`id_cliente`,`id_empleado`) VALUES ("Idola Wolfe",51,51,"37031"),("Tanisha Winters",52,52,"32776"),("Ann Guerra",53,53,"83153"),("Kendall Bray",54,54,"25728"),("Velma Castaneda",55,55,"57215"),("Patricia Ball",56,56,"65816"),("Jillian Mcknight",57,57,"12660"),("Germaine Roberson",58,58,"58206"),("Uma Gutierrez",59,59,"94403"),("Aspen Luna",60,60,"61695");
INSERT INTO `FACTURA` (`nombre`,`num_factura`,`id_cliente`,`id_empleado`) VALUES ("Venus Maddox",61,61,"13871"),("Ivy Hahn",62,62,"15979"),("Georgia Mckenzie",63,63,"97363"),("Uta Cobb",64,64,"32947"),("Haviva Hoffman",65,65,"08690"),("Penelope Tran",66,66,"00684"),("Hope Mayo",67,67,"68060"),("Zenia Oneil",68,68,"45881"),("Kameko Baxter",69,69,"39787"),("Leigh Robles",70,70,"91206");
INSERT INTO `FACTURA` (`nombre`,`num_factura`,`id_cliente`,`id_empleado`) VALUES ("Cathleen Hunt",71,71,"62061"),("Minerva Hooper",72,72,"89275"),("Callie Vazquez",73,73,"31136"),("Madeson Hudson",74,74,"34568"),("Ivana Stewart",75,75,"55605"),("Donna Solis",76,76,"60555"),("Nerea Burks",77,77,"55137"),("Blaine Landry",78,78,"35171"),("Faith Forbes",79,79,"17061"),("Frances Spence",80,80,"25632");
INSERT INTO `FACTURA` (`nombre`,`num_factura`,`id_cliente`,`id_empleado`) VALUES ("Karen Bates",81,81,"75185"),("Amelia Sweeney",82,82,"38033"),("Rana Diaz",83,83,"30680"),("Riley Stone",84,84,"33042"),("Marah Frank",85,85,"77499"),("Cameron Stout",86,86,"11899"),("Cynthia Whitaker",87,87,"24263"),("Priscilla Underwood",88,88,"79221"),("Zia Poole",89,89,"07642"),("Basia Hooper",90,90,"70334");
INSERT INTO `FACTURA` (`nombre`,`num_factura`,`id_cliente`,`id_empleado`) VALUES ("Illana Bird",91,91,"07257"),("Kirby Mckinney",92,92,"15598"),("Colleen Hodges",93,93,"98741"),("Audrey Nguyen",94,94,"31037"),("Zoe Hall",95,95,"05105"),("Gisela Battle",96,96,"32815"),("Amela Mercer",97,97,"05651"),("Angelica Terry",98,98,"13373"),("Jasmine Key",99,99,"87660"),("Sheila Gilbert",100,100,"17603");

INSERT INTO `factura_producto` (`id_factura`,`id_producto`,`cantidad`) VALUES (1,1,"30665"),(2,2,"90612"),(3,3,"53604"),(4,4,"64645"),(5,5,"27483"),(6,6,"20135"),(7,7,"74739"),(8,8,"61923"),(9,9,"83159"),(10,10,"87568");
INSERT INTO `factura_producto` (`id_factura`,`id_producto`,`cantidad`) VALUES (11,11,"81399"),(12,12,"83687"),(13,13,"25107"),(14,14,"69940"),(15,15,"83957"),(16,16,"18838"),(17,17,"78089"),(18,18,"70674"),(19,19,"68084"),(20,20,"85971");
INSERT INTO `factura_producto` (`id_factura`,`id_producto`,`cantidad`) VALUES (21,21,"63360"),(22,22,"11168"),(23,23,"90365"),(24,24,"59214"),(25,25,"26701"),(26,26,"92697"),(27,27,"89149"),(28,28,"65725"),(29,29,"37405"),(30,30,"50272");
INSERT INTO `factura_producto` (`id_factura`,`id_producto`,`cantidad`) VALUES (31,31,"12891"),(32,32,"90516"),(33,33,"25892"),(34,34,"79780"),(35,35,"78790"),(36,36,"71951"),(37,37,"04300"),(38,38,"44405"),(39,39,"36098"),(40,40,"99922");
INSERT INTO `factura_producto` (`id_factura`,`id_producto`,`cantidad`) VALUES (41,41,"84737"),(42,42,"76073"),(43,43,"27306"),(44,44,"34216"),(45,45,"25057"),(46,46,"79872"),(47,47,"88196"),(48,48,"68043"),(49,49,"68448"),(50,50,"91614");
INSERT INTO `factura_producto` (`id_factura`,`id_producto`,`cantidad`) VALUES (51,51,"87106"),(52,52,"72084"),(53,53,"60497"),(54,54,"03050"),(55,55,"31891"),(56,56,"85932"),(57,57,"16026"),(58,58,"99328"),(59,59,"76641"),(60,60,"04653");
INSERT INTO `factura_producto` (`id_factura`,`id_producto`,`cantidad`) VALUES (61,61,"39168"),(62,62,"79821"),(63,63,"10498"),(64,64,"23252"),(65,65,"22955"),(66,66,"93136"),(67,67,"14567"),(68,68,"70948"),(69,69,"65437"),(70,70,"58995");
INSERT INTO `factura_producto` (`id_factura`,`id_producto`,`cantidad`) VALUES (71,71,"37661"),(72,72,"26414"),(73,73,"38494"),(74,74,"65665"),(75,75,"81461"),(76,76,"71774"),(77,77,"63425"),(78,78,"18796"),(79,79,"98809"),(80,80,"24600");
INSERT INTO `factura_producto` (`id_factura`,`id_producto`,`cantidad`) VALUES (81,81,"55337"),(82,82,"20501"),(83,83,"99407"),(84,84,"17933"),(85,85,"06359"),(86,86,"53727"),(87,87,"07689"),(88,88,"69095"),(89,89,"40676"),(90,90,"99278");
INSERT INTO `factura_producto` (`id_factura`,`id_producto`,`cantidad`) VALUES (91,91,"21277"),(92,92,"63688"),(93,93,"52416"),(94,94,"52036"),(95,95,"64406"),(96,96,"66476"),(97,97,"35139"),(98,98,"52316"),(99,99,"13540"),(100,100,"13178");


