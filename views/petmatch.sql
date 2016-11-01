CREATE TABLE states (
  id SERIAL4,
  name VARCHAR(50)
);

CREATE TABLE cities (
  id SERIAL4,
  name VARCHAR(60),
  state VARCHAR(50)
);


INSERT INTO states (name) values ('New South Wales');
INSERT INTO states (name) values ('Queensland');
INSERT INTO states (name) values ('South Australia');
INSERT INTO states (name) values ('Tasmania');
INSERT INTO states (name) values ('Victoria');
INSERT INTO states (name) values ('Western Australia');
INSERT INTO states (name) values ('Australian Capital Territory');
INSERT INTO states (name) values ('Northern Territory');

INSERT INTO cities (name,state) VALUES('Sydney',1);
INSERT INTO cities (name,state) VALUES('Albury',1);
INSERT INTO cities (name,state) VALUES('Armidale',1);
INSERT INTO cities (name,state) VALUES('Bathurst',1);
INSERT INTO cities (name,state) VALUES('Blue Mountains',1);
INSERT INTO cities (name,state) VALUES('Broken',1);
INSERT INTO cities (name,state) VALUES('Campbelltown',1);
INSERT INTO cities (name,state) VALUES('Cessnock',1);
INSERT INTO cities (name,state) VALUES('Dubbo',1);
INSERT INTO cities (name,state) VALUES('Goulburn',1);
INSERT INTO cities (name,state) VALUES('Grafton',1);
INSERT INTO cities (name,state) VALUES('Lithgow',1);
INSERT INTO cities (name,state) VALUES('Liverpool',1);
INSERT INTO cities (name,state) VALUES('Newcastle',1);
INSERT INTO cities (name,state) VALUES('Orange',1);
INSERT INTO cities (name,state) VALUES('Parramatta',1);
INSERT INTO cities (name,state) VALUES('Penrith',1);
INSERT INTO cities (name,state) VALUES('Queanbeyan',1);
INSERT INTO cities (name,state) VALUES('Tamworth',1);
INSERT INTO cities (name,state) VALUES('Wagga',1);
INSERT INTO cities (name,state) VALUES('Wollongong',1);

INSERT INTO cities (name,state) VALUES('Brisbane', 2);
INSERT INTO cities (name,state) VALUES('Bundaberg', 2);
INSERT INTO cities (name,state) VALUES('Caboolture', 2);
INSERT INTO cities (name,state) VALUES('Cairns', 2);
INSERT INTO cities (name,state) VALUES('Caloundra', 2);
INSERT INTO cities (name,state) VALUES('Gladstone', 2);
INSERT INTO cities (name,state) VALUES('Gold Coast');
INSERT INTO cities (name,state) VALUES('Gympie', 2);
INSERT INTO cities (name,state) VALUES('Hervey', 2);
INSERT INTO cities (name,state) VALUES('Ipswich', 2);
INSERT INTO cities (name,state) VALUES('Logan', 2);
INSERT INTO cities (name,state) VALUES('Mackay', 2);
INSERT INTO cities (name,state) VALUES('Maryborough', 2);
INSERT INTO cities (name,state) VALUES('Mount', 2);
INSERT INTO cities (name,state) VALUES('Rockhampton', 2);
INSERT INTO cities (name,state) VALUES('Sunshine', 2);
INSERT INTO cities (name,state) VALUES('Toowoomba', 2);
INSERT INTO cities (name,state) VALUES('Townsville', 2);


INSERT INTO cities (name,state) VALUES('Adelaide', 3);
INSERT INTO cities (name,state) VALUES('Mount Barker', 3);
INSERT INTO cities (name,state) VALUES('Mount Gambier', 3);
INSERT INTO cities (name,state) VALUES('Murray Bridge', 3);
INSERT INTO cities (name,state) VALUES('Port Adelaide', 3);
INSERT INTO cities (name,state) VALUES('Port Augusta', 3);
INSERT INTO cities (name,state) VALUES('Port Pirie', 3);
INSERT INTO cities (name,state) VALUES('Port Lincoln', 3);
INSERT INTO cities (name,state) VALUES('Victor Harbor', 3);
INSERT INTO cities (name,state) VALUES('Whyalla', 3);

INSERT INTO cities (name,state) VALUES('hobart',4);
INSERT INTO cities (name,state) VALUES('Burnie',4);
INSERT INTO cities (name,state) VALUES('Devonport',4);
INSERT INTO cities (name,state) VALUES('Launceston',4);


INSERT INTO cities (name,state) VALUES('Melbourne',5);
INSERT INTO cities (name,state) VALUES('Geelong',5);
INSERT INTO cities (name,state) VALUES('Ballarat',5);
INSERT INTO cities (name,state) VALUES('Bendigo',5);
INSERT INTO cities (name,state) VALUES('Melton',5);
INSERT INTO cities (name,state) VALUES('Pakenham',5);
INSERT INTO cities (name,state) VALUES('Mildura',5);
INSERT INTO cities (name,state) VALUES ('Wodonga',5);
INSERT INTO cities (name,state) VALUES ('Warrnambool',5);
INSERT INTO cities (name,state) VALUES ('Traralgon',5);
INSERT INTO cities (name,state) VALUES ('Wangaratta',5);
INSERT INTO cities (name,state) VALUES ('Ocean',5);
INSERT INTO cities (name,state) VALUES ('Moe',5);
INSERT INTO cities (name,state) VALUES ('Horsham',5);
INSERT INTO cities (name,state) VALUES ('Bacchus',5);
INSERT INTO cities (name,state) VALUES ('Morwell',5);
INSERT INTO cities (name,state) VALUES ('Torquay',5);
INSERT INTO cities (name,state) VALUES ('Warragul',5);
INSERT INTO cities (name,state) VALUES ('Sale',5);
INSERT INTO cities (name,state) VALUES ('Echuca',5);
INSERT INTO cities (name,state) VALUES ('Bairnsdale',5);
INSERT INTO cities (name,state) VALUES ('Colac',5);
INSERT INTO cities (name,state) VALUES ('Lara',5);
INSERT INTO cities (name,state) VALUES ('Drysdale',5);
INSERT INTO cities (name,state) VALUES ('Portland',5);
INSERT INTO cities (name,state) VALUES ('Swan',5);
INSERT INTO cities (name,state) VALUES ('Leopold',5);
INSERT INTO cities (name,state) VALUES ('Drouin',5);
INSERT INTO cities (name,state) VALUES ('Hamilton',5);
INSERT INTO cities (name,state) VALUES ('Benalla',5);
INSERT INTO cities (name,state) VALUES ('Castlemaine',5);
INSERT INTO cities (name,state) VALUES ('Gisborne',5);
INSERT INTO cities (name,state) VALUES ('Healesville',5);
INSERT INTO cities (name,state) VALUES ('Wallan',5);
INSERT INTO cities (name,state) VALUES ('Wonthaggi',5);
INSERT INTO cities (name,state) VALUES ('Maryborough',5);
INSERT INTO cities (name,state) VALUES ('Ararat',5);
INSERT INTO cities (name,state) VALUES ('Yarrawonga',5);
INSERT INTO cities (name,state) VALUES ('Kilmore',5);
INSERT INTO cities (name,state) VALUES ('Lakes',5);
INSERT INTO cities (name,state) VALUES ('Seymour',5);
INSERT INTO cities (name,state) VALUES ('Stawell',5);
INSERT INTO cities (name,state) VALUES ('Kyabram',5);
INSERT INTO cities (name,state) VALUES ('Cobram',5);
INSERT INTO cities (name,state) VALUES ('Maffra',5);
INSERT INTO cities (name,state) VALUES ('Leongatha',5);
INSERT INTO cities (name,state) VALUES ('Churchill',5);
INSERT INTO cities (name,state) VALUES ('Kyneton',5);

INSERT INTO cities (name,state) VALUES('Perth',6);
INSERT INTO cities (name,state) VALUES('Albany',6);
INSERT INTO cities (name,state) VALUES('Bunbury',6);
INSERT INTO cities (name,state) VALUES('Busselton',6);
INSERT INTO cities (name,state) VALUES('Fremantle',6);
INSERT INTO cities (name,state) VALUES('Geraldton',6);
INSERT INTO cities (name,state) VALUES('Joondalup',6);
INSERT INTO cities (name,state) VALUES('Kalgoorlie',6);
INSERT INTO cities (name,state) VALUES('Mandurah',6);
INSERT INTO cities (name,state) VALUES('Karratha',6);
INSERT INTO cities (name,state) VALUES('Rockingham',6);

INSERT INTO cities (name,state) VALUES('Belconnen', 7);
INSERT INTO cities (name,state) VALUES('Bruce', 7);
INSERT INTO cities (name,state) VALUES('Canberra', 7);
INSERT INTO cities (name,state) VALUES('Evatt', 7);
INSERT INTO cities (name,state) VALUES('Giralang', 7);
INSERT INTO cities (name,state) VALUES('Hawker', 7);
INSERT INTO cities (name,state) VALUES('Kaleen', 7);
INSERT INTO cities (name,state) VALUES('Lawson', 7);
INSERT INTO cities (name,state) VALUES('Melba', 7);
INSERT INTO cities (name,state) VALUES('Spence', 7);
INSERT INTO cities (name,state) VALUES('Tuggeranong', 7);
INSERT INTO cities (name,state) VALUES('Weston Creek', 7);

INSERT INTO cities (name,state) VALUES('Darwin', 8);
INSERT INTO cities (name,state) VALUES('Palmerston-East Arm', 8);
INSERT INTO cities (name,state) VALUES('Alice Springs', 8);
INSERT INTO cities (name,state) VALUES('Litchfield', 8);
INSERT INTO cities (name,state) VALUES('Katherine', 8);
INSERT INTO cities (name,state) VALUES('Nhulunbuy', 8);
INSERT INTO cities (name,state) VALUES('Tennant Creek', 8);
INSERT INTO cities (name,state) VALUES('Wadeye / Victoria-Daly', 8);
INSERT INTO cities (name,state) VALUES('Jabiru', 8);
INSERT INTO cities (name,state) VALUES('Yulara', 8);
