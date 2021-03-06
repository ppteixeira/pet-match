CREATE TABLE states (
  id SERIAL4 PRIMARY KEY,
  name VARCHAR(50)
);

CREATE TABLE cities (
  id SERIAL4 PRIMARY KEY,
  name VARCHAR(60),
  state_id INTEGER
);

CREATE TABLE animals (
  id SERIAL4 PRIMARY KEY,
  name VARCHAR(50),
  species VARCHAR(30),
  dog_breed_id INTEGER,
  user_id INTEGER,
  gender VARCHAR (10),
  city_id INTEGER,
  state_id INTEGER,
  description TEXT,
  image TEXT
);

CREATE TABLE matches (
  id SERIAL4 PRIMARY KEY,
  user_id INTEGER,
  animal_id INTEGER
);

CREATE TABLE dog_breeds (
  id SERIAL4 PRIMARY KEY,
  name VARCHAR(50)
);

CREATE TABLE users (
  id SERIAL4 PRIMARY KEY,
  name VARCHAR(50),
  email VARCHAR(100),
  password_digest VARCHAR(500)
);




INSERT INTO animals (name, species, dog_breed_id, user_id, gender, city_id, state_id, description) VALUES ('Max', 'dog', 52, 11, 'male', 53, 5,' dog Max bla bla bla');
INSERT INTO animals (name, species, dog_breed_id, user_id, gender, city_id, state_id, description) VALUES ('Buster', 'dog', 52, 11, 'male', 53, 5,' dog Buster bla bla bla');
INSERT INTO animals (name, species, dog_breed_id, user_id, gender, city_id, state_id, description) VALUES ('Charlie', 'dog', 52, 11, 'male', 53, 5,' dog Charlie bla bla bla');
INSERT INTO animals (name, species, dog_breed_id, user_id, gender, city_id, state_id, description) VALUES ('Buddy', 'dog', 30, 11, 'male', 22, 2,' dog Buddy bla bla bla');
INSERT INTO animals (name, species, dog_breed_id, user_id, gender, city_id, state_id, description) VALUES ('Rocky', 'dog', 30, 11, 'male', 22, 2,' dog Rocky bla bla bla');
INSERT INTO animals (name, species, dog_breed_id, user_id, gender, city_id, state_id, description) VALUES ('Jake', 'dog', 17, 11, 'male', 22, 2,' dog Jake bla bla bla');
INSERT INTO animals (name, species, dog_breed_id, user_id, gender, city_id, state_id, description) VALUES ('Bella', 'dog', 52, 21, 'female', 53, 5,' dog Bella bla bla bla');
INSERT INTO animals (name, species, dog_breed_id, user_id, gender, city_id, state_id, description) VALUES ('Lucy', 'dog', 52, 21, 'female', 53, 5,' dog Lucy bla bla bla');
INSERT INTO animals (name, species, dog_breed_id, user_id, gender, city_id, state_id, description) VALUES ('Molly', 'dog', 52, 21, 'female', 53, 5,' dog Molly bla bla bla');
INSERT INTO animals (name, species, dog_breed_id, user_id, gender, city_id, state_id, description) VALUES ('Daisy', 'dog', 30, 21, 'female', 22, 2,' dog Daisy bla bla bla');
INSERT INTO animals (name, species, dog_breed_id, user_id, gender, city_id, state_id, description) VALUES ('Sophie', 'dog', 30, 21, 'female', 22, 2,' dog Sophie bla bla bla');
INSERT INTO animals (name, species, dog_breed_id, user_id, gender, city_id, state_id, description) VALUES ('Lola', 'dog', 17, 21, 'female', 22, 2,' dog Lola bla bla bla');

INSERT INTO gender (name) VALUES ('male')
INSERT INTO gender (name) VALUES ('female')




INSERT INTO users (name,city,address,postcode, animal, email, password,state) VALUES ('')


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


CREATE TABLE dog_breeds (
  id SERIAL4 PRIMARY KEY,
  name VARCHAR(50)
);

INSERT INTO dog_breeds (name) VALUES ('Affenpinscher');
INSERT INTO dog_breeds (name) VALUES ('Afghan Hound');
INSERT INTO dog_breeds (name) VALUES ('Airedale Terrier');
INSERT INTO dog_breeds (name) VALUES ('Akita');
INSERT INTO dog_breeds (name) VALUES ('Alaskan Malamute');
INSERT INTO dog_breeds (name) VALUES ('Standard American Eskimo Dog');
INSERT INTO dog_breeds (name) VALUES ('Miniature American Eskimo Dog');
INSERT INTO dog_breeds (name) VALUES ('Toy American Eskimo Dog');
INSERT INTO dog_breeds (name) VALUES ('American Foxhound');
INSERT INTO dog_breeds (name) VALUES ('American Staffordshire Terrier');
INSERT INTO dog_breeds (name) VALUES ('American Water Spaniel');
INSERT INTO dog_breeds (name) VALUES ('Anatolian Shepherd Dog');
INSERT INTO dog_breeds (name) VALUES ('Australian Cattle Dog');
INSERT INTO dog_breeds (name) VALUES ('Australian Shepherd');
INSERT INTO dog_breeds (name) VALUES ('Australian Terrier');
INSERT INTO dog_breeds (name) VALUES ('Basenji');
INSERT INTO dog_breeds (name) VALUES ('Basset Hound');
INSERT INTO dog_breeds (name) VALUES ('Beagle');
INSERT INTO dog_breeds (name) VALUES ('Bearded Collie');
INSERT INTO dog_breeds (name) VALUES ('Beauceron');
INSERT INTO dog_breeds (name) VALUES ('Bedlington Terrier');
INSERT INTO dog_breeds (name) VALUES ('Belgian Malinois');
INSERT INTO dog_breeds (name) VALUES ('Belgian Sheepdog');
INSERT INTO dog_breeds (name) VALUES ('Belgian Tervuren');
INSERT INTO dog_breeds (name) VALUES ('Bernese Mountain Dog');
INSERT INTO dog_breeds (name) VALUES ('Bichon Frise');
INSERT INTO dog_breeds (name) VALUES ('Black and Tan Coonhound');
INSERT INTO dog_breeds (name) VALUES ('Black Russian Terrier');
INSERT INTO dog_breeds (name) VALUES ('Bloodhound');
INSERT INTO dog_breeds (name) VALUES ('Border Collie');
INSERT INTO dog_breeds (name) VALUES ('Border Terrier');
INSERT INTO dog_breeds (name) VALUES ('Borzoi');
INSERT INTO dog_breeds (name) VALUES ('Boston Terrier');
INSERT INTO dog_breeds (name) VALUES ('Bouvier des Flandres');
INSERT INTO dog_breeds (name) VALUES ('Boxer');
INSERT INTO dog_breeds (name) VALUES ('Briard');
INSERT INTO dog_breeds (name) VALUES ('Brittany');
INSERT INTO dog_breeds (name) VALUES ('Brussels Griffon');
INSERT INTO dog_breeds (name) VALUES ('Bulldog');
INSERT INTO dog_breeds (name) VALUES ('Bullmastiff');
INSERT INTO dog_breeds (name) VALUES ('Bull Terrier');
INSERT INTO dog_breeds (name) VALUES ('Cairn Terrier');
INSERT INTO dog_breeds (name) VALUES ('Canaan Dog');
INSERT INTO dog_breeds (name) VALUES ('Cardigan Welsh Corgi');
INSERT INTO dog_breeds (name) VALUES ('Cavalier King Charles Spaniel');
INSERT INTO dog_breeds (name) VALUES ('Chesapeake Bay Retriever');
INSERT INTO dog_breeds (name) VALUES ('Chihuahua');
INSERT INTO dog_breeds (name) VALUES ('Chinese Crested');
INSERT INTO dog_breeds (name) VALUES ('Chinese Shar-Pei');
INSERT INTO dog_breeds (name) VALUES ('Chow Chow');
INSERT INTO dog_breeds (name) VALUES ('Clumber Spaniel');
INSERT INTO dog_breeds (name) VALUES ('Cocker Spaniel');
INSERT INTO dog_breeds (name) VALUES ('Collie');
INSERT INTO dog_breeds (name) VALUES ('Curly-Coated Retriever');
INSERT INTO dog_breeds (name) VALUES ('Dachshund');
INSERT INTO dog_breeds (name) VALUES ('Dalmatian');
INSERT INTO dog_breeds (name) VALUES ('Dandie Dinmont Terrier');
INSERT INTO dog_breeds (name) VALUES ('Doberman Pinscher');
INSERT INTO dog_breeds (name) VALUES ('Dogue de Bordeaux');
INSERT INTO dog_breeds (name) VALUES ('English Cocker Spaniel');
INSERT INTO dog_breeds (name) VALUES ('English Foxhound');
INSERT INTO dog_breeds (name) VALUES ('English Setter');
INSERT INTO dog_breeds (name) VALUES ('English Springer Spaniel');
INSERT INTO dog_breeds (name) VALUES ('English Toy Spaniel');
INSERT INTO dog_breeds (name) VALUES ('Field Spaniel');
INSERT INTO dog_breeds (name) VALUES ('Finnish Spitz');
INSERT INTO dog_breeds (name) VALUES ('Flat-Coated Retriever');
INSERT INTO dog_breeds (name) VALUES ('French Bulldog');
INSERT INTO dog_breeds (name) VALUES ('German Pinscher');
INSERT INTO dog_breeds (name) VALUES ('German Shepherd Dog');
INSERT INTO dog_breeds (name) VALUES ('German Shorthaired Pointer');
INSERT INTO dog_breeds (name) VALUES ('German Wirehaired Pointer');
INSERT INTO dog_breeds (name) VALUES ('Giant Schnauzer');
INSERT INTO dog_breeds (name) VALUES ('Glen of Imaal Terrier');
INSERT INTO dog_breeds (name) VALUES ('Golden Retriever');
INSERT INTO dog_breeds (name) VALUES ('Gordon Setter');
INSERT INTO dog_breeds (name) VALUES ('Great Dane');
INSERT INTO dog_breeds (name) VALUES ('Greater Swiss Mountain Dog');
INSERT INTO dog_breeds (name) VALUES ('Great Pyrenees');
INSERT INTO dog_breeds (name) VALUES ('Greyhound');
INSERT INTO dog_breeds (name) VALUES ('Harrier');
INSERT INTO dog_breeds (name) VALUES ('Havanese');
INSERT INTO dog_breeds (name) VALUES ('Ibizan Hound');
INSERT INTO dog_breeds (name) VALUES ('Irish Setter');
INSERT INTO dog_breeds (name) VALUES ('Irish Terrier');
INSERT INTO dog_breeds (name) VALUES ('Irish Water Spaniel');
INSERT INTO dog_breeds (name) VALUES ('Irish Wolfhound');
INSERT INTO dog_breeds (name) VALUES ('Italian Greyhound');
INSERT INTO dog_breeds (name) VALUES ('Jack Russell Terrier');
INSERT INTO dog_breeds (name) VALUES ('Japanese Chin');
INSERT INTO dog_breeds (name) VALUES ('Keeshond');
INSERT INTO dog_breeds (name) VALUES ('Kerry Blue Terrier');
INSERT INTO dog_breeds (name) VALUES ('Komondor');
INSERT INTO dog_breeds (name) VALUES ('Kuvasz');
INSERT INTO dog_breeds (name) VALUES ('Labrador Retriever');
INSERT INTO dog_breeds (name) VALUES ('Lakeland Terrier');
INSERT INTO dog_breeds (name) VALUES ('Lhasa Apso');
INSERT INTO dog_breeds (name) VALUES ('Lowchen');
INSERT INTO dog_breeds (name) VALUES ('Maltese');
INSERT INTO dog_breeds (name) VALUES ('Standard Manchester Terrier');
INSERT INTO dog_breeds (name) VALUES ('Mastiff');
INSERT INTO dog_breeds (name) VALUES ('Miniature Bull Terrier');
INSERT INTO dog_breeds (name) VALUES ('Miniature Pinscher');
INSERT INTO dog_breeds (name) VALUES ('Miniature Poodle');
INSERT INTO dog_breeds (name) VALUES ('Miniature Schnauzer');
INSERT INTO dog_breeds (name) VALUES ('Neapolitan Mastiff');
INSERT INTO dog_breeds (name) VALUES ('Newfoundland');
INSERT INTO dog_breeds (name) VALUES ('Norfolk Terrier');
INSERT INTO dog_breeds (name) VALUES ('Norwegian Elkhound');
INSERT INTO dog_breeds (name) VALUES ('Norwich Terrier');
INSERT INTO dog_breeds (name) VALUES ('Nova Scotia Duck Tolling Retriever');
INSERT INTO dog_breeds (name) VALUES ('Old English Sheepdog');
INSERT INTO dog_breeds (name) VALUES ('Otterhound');
INSERT INTO dog_breeds (name) VALUES ('Papillon');
INSERT INTO dog_breeds (name) VALUES ('Parson Russell Terrier');
INSERT INTO dog_breeds (name) VALUES ('Pembroke Welsh Corgi');
INSERT INTO dog_breeds (name) VALUES ('Petit Basset Griffon Vendeen');
INSERT INTO dog_breeds (name) VALUES ('Pharaoh Hound');
INSERT INTO dog_breeds (name) VALUES ('Plott');
INSERT INTO dog_breeds (name) VALUES ('Pointer');
INSERT INTO dog_breeds (name) VALUES ('Polish Lowland Sheepdog');
INSERT INTO dog_breeds (name) VALUES ('Pomeranian');
INSERT INTO dog_breeds (name) VALUES ('Portuguese Water Dog');
INSERT INTO dog_breeds (name) VALUES ('Pug');
INSERT INTO dog_breeds (name) VALUES ('Puli');
INSERT INTO dog_breeds (name) VALUES ('Rhodesian Ridgeback');
INSERT INTO dog_breeds (name) VALUES ('Rottweiler');
INSERT INTO dog_breeds (name) VALUES ('Saint Bernard');
INSERT INTO dog_breeds (name) VALUES ('Saluki');
INSERT INTO dog_breeds (name) VALUES ('Samoyed');
INSERT INTO dog_breeds (name) VALUES ('Schipperke');
INSERT INTO dog_breeds (name) VALUES ('Scottish Deerhound');
INSERT INTO dog_breeds (name) VALUES ('Scottish Terrier');
INSERT INTO dog_breeds (name) VALUES ('Sealyham Terrier');
INSERT INTO dog_breeds (name) VALUES ('Shetland Sheepdog');
INSERT INTO dog_breeds (name) VALUES ('Shiba Inu');
INSERT INTO dog_breeds (name) VALUES ('Shih Tzu');
INSERT INTO dog_breeds (name) VALUES ('Siberian Husky');
INSERT INTO dog_breeds (name) VALUES ('Silky Terrier');
INSERT INTO dog_breeds (name) VALUES ('Skye Terrier');
INSERT INTO dog_breeds (name) VALUES ('Smooth Fox Terrier');
INSERT INTO dog_breeds (name) VALUES ('Soft Coated Wheaten Terrier');
INSERT INTO dog_breeds (name) VALUES ('Spinone Italiano');
INSERT INTO dog_breeds (name) VALUES ('Staffordshire Bull Terrier');
INSERT INTO dog_breeds (name) VALUES ('Standard Poodle');
INSERT INTO dog_breeds (name) VALUES ('Standard Schnauzer');
INSERT INTO dog_breeds (name) VALUES ('Sussex Spaniel');
INSERT INTO dog_breeds (name) VALUES ('Swedish Vallhund');
INSERT INTO dog_breeds (name) VALUES ('Tibetan Mastiff');
INSERT INTO dog_breeds (name) VALUES ('Tibetan Spaniel');
INSERT INTO dog_breeds (name) VALUES ('Tibetan Terrier');
INSERT INTO dog_breeds (name) VALUES ('Toy Fox Terrier');
INSERT INTO dog_breeds (name) VALUES ('Toy Manchester Terrier');
INSERT INTO dog_breeds (name) VALUES ('Toy Poodle');
INSERT INTO dog_breeds (name) VALUES ('Vizsla');
INSERT INTO dog_breeds (name) VALUES ('Weimaraner');
INSERT INTO dog_breeds (name) VALUES ('Welsh Springer Spaniel');
INSERT INTO dog_breeds (name) VALUES ('Welsh Terrier');
INSERT INTO dog_breeds (name) VALUES ('West Highland White Terrier');
INSERT INTO dog_breeds (name) VALUES ('Whippet');
INSERT INTO dog_breeds (name) VALUES ('Wire Fox Terrier');
INSERT INTO dog_breeds (name) VALUES ('Wirehaired Pointing Griffon');
INSERT INTO dog_breeds (name) VALUES ('Yorkshire Terrier');
