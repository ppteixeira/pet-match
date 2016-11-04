require 'active_record'
require_relative 'db_config'
require_relative 'models/animal'
require_relative 'models/user'
require_relative 'models/state'
require_relative 'models/city'
require_relative 'models/dog_breed'
require_relative 'models/match'

nsw = State.create(name: 'New South Wales')
qld = State.create(name: 'Queensland')
sa = State.create(name: 'South Australia')
tas = State.create(name: 'Tasmania')
vic = State.create(name: 'Victoria')
wa = State.create(name: 'Western Australia')
act = State.create(name: 'Australian Capital Territory')
nt = State.create(name: 'Northern Territory')


City.create(name: 'Sydney',state_id: nsw.id);
City.create(name: 'Albury', state_id: nsw.id);
City.create(name: 'Armidale', state_id: nsw.id);
City.create(name: 'Bathurst', state_id: nsw.id);
City.create(name: 'Blue Mountains', state_id: nsw.id);
City.create(name: 'Broken', state_id: nsw.id);
City.create(name: 'Campbelltown', state_id: nsw.id);
City.create(name: 'Cessnock', state_id: nsw.id);
City.create(name: 'Dubbo', state_id: nsw.id);
City.create(name: 'Goulburn', state_id: nsw.id);
City.create(name: 'Grafton', state_id: nsw.id);
City.create(name: 'Lithgow', state_id: nsw.id);
City.create(name: 'Liverpool', state_id: nsw.id);
City.create(name: 'Newcastle', state_id: nsw.id);
City.create(name: 'Orange', state_id: nsw.id);
City.create(name: 'Parramatta', state_id: nsw.id);
City.create(name: 'Penrith', state_id: nsw.id);
City.create(name: 'Queanbeyan', state_id: nsw.id);
City.create(name: 'Tamworth', state_id: nsw.id);
City.create(name: 'Wagga', state_id: nsw.id);
City.create(name: 'Wollongong', state_id: nsw.id);

City.create(name: 'Brisbane', state_id: qld.id);
City.create(name: 'Bundaberg', state_id: qld.id);
City.create(name: 'Caboolture', state_id: qld.id);
City.create(name: 'Cairns', state_id: qld.id);
City.create(name: 'Caloundra', state_id: qld.id);
City.create(name: 'Gladstone', state_id: qld.id);
City.create(name: 'Gold Coast');
City.create(name: 'Gympie', state_id: qld.id);
City.create(name: 'Hervey', state_id: qld.id);
City.create(name: 'Ipswich', state_id: qld.id);
City.create(name: 'Logan', state_id: qld.id);
City.create(name: 'Mackay', state_id: qld.id);
City.create(name: 'Maryborough', state_id: qld.id);
City.create(name: 'Mount', state_id: qld.id);
City.create(name: 'Rockhampton', state_id: qld.id);
City.create(name: 'Sunshine', state_id: qld.id);
City.create(name: 'Toowoomba', state_id: qld.id);
City.create(name: 'Townsville', state_id: qld.id);

City.create(name: 'Adelaide', state_id: sa.id);
City.create(name: 'Mount Barker', state_id: sa.id);
City.create(name: 'Mount Gambier', state_id: sa.id);
City.create(name: 'Murray Bridge', state_id: sa.id);
City.create(name: 'Port Adelaide', state_id: sa.id);
City.create(name: 'Port Augusta', state_id: sa.id);
City.create(name: 'Port Pirie', state_id: sa.id);
City.create(name: 'Port Lincoln', state_id: sa.id);
City.create(name: 'Victor Harbor', state_id: sa.id);
City.create(name: 'Whyalla', state_id: sa.id);

City.create(name: 'hobart', state_id: tas.id);
City.create(name: 'Burnie', state_id: tas.id);
City.create(name: 'Devonport', state_id: tas.id);
City.create(name: 'Launceston', state_id: tas.id);

City.create(name: 'Melbourne', state_id: vic.id);
City.create(name: 'Geelong', state_id: vic.id);
City.create(name: 'Ballarat', state_id: vic.id);
City.create(name: 'Bendigo', state_id: vic.id);
City.create(name: 'Melton', state_id: vic.id);
City.create(name: 'Pakenham', state_id: vic.id);
City.create(name: 'Mildura', state_id: vic.id);
City.create(name: 'Wodonga', state_id: vic.id);
City.create(name: 'Warrnambool', state_id: vic.id);
City.create(name: 'Traralgon', state_id: vic.id);
City.create(name: 'Wangaratta', state_id: vic.id);
City.create(name: 'Ocean', state_id: vic.id);
City.create(name: 'Moe', state_id: vic.id);
City.create(name: 'Horsham', state_id: vic.id);
City.create(name: 'Bacchus', state_id: vic.id);
City.create(name: 'Morwell', state_id: vic.id);
City.create(name: 'Torquay', state_id: vic.id);
City.create(name: 'Warragul', state_id: vic.id);
City.create(name: 'Sale', state_id: vic.id);
City.create(name: 'Echuca', state_id: vic.id);
City.create(name: 'Bairnsdale', state_id: vic.id);
City.create(name: 'Colac', state_id: vic.id);
City.create(name: 'Lara', state_id: vic.id);
City.create(name: 'Drysdale', state_id: vic.id);
City.create(name: 'Portland', state_id: vic.id);
City.create(name: 'Swan', state_id: vic.id);
City.create(name: 'Leopold', state_id: vic.id);
City.create(name: 'Drouin', state_id: vic.id);
City.create(name: 'Hamilton', state_id: vic.id);
City.create(name: 'Benalla', state_id: vic.id);
City.create(name: 'Castlemaine', state_id: vic.id);
City.create(name: 'Gisborne', state_id: vic.id);
City.create(name: 'Healesville', state_id: vic.id);
City.create(name: 'Wallan', state_id: vic.id);
City.create(name: 'Wonthaggi', state_id: vic.id);
City.create(name: 'Maryborough', state_id: vic.id);
City.create(name: 'Ararat', state_id: vic.id);
City.create(name: 'Yarrawonga', state_id: vic.id);
City.create(name: 'Kilmore', state_id: vic.id);
City.create(name: 'Lakes', state_id: vic.id);
City.create(name: 'Seymour', state_id: vic.id);
City.create(name: 'Stawell', state_id: vic.id);
City.create(name: 'Kyabram', state_id: vic.id);
City.create(name: 'Cobram', state_id: vic.id);
City.create(name: 'Maffra', state_id: vic.id);
City.create(name: 'Leongatha', state_id: vic.id);
City.create(name: 'Churchill', state_id: vic.id);
City.create(name: 'Kyneton', state_id: vic.id);

City.create(name: 'Perth', state_id: wa.id);
City.create(name: 'Albany', state_id: wa.id);
City.create(name: 'Bunbury', state_id: wa.id);
City.create(name: 'Busselton', state_id: wa.id);
City.create(name: 'Fremantle', state_id: wa.id);
City.create(name: 'Geraldton', state_id: wa.id);
City.create(name: 'Joondalup', state_id: wa.id);
City.create(name: 'Kalgoorlie', state_id: wa.id);
City.create(name: 'Mandurah', state_id: wa.id);
City.create(name: 'Karratha', state_id: wa.id);
City.create(name: 'Rockingham', state_id: wa.id);

City.create(name: 'Belconnen', state_id: act.id);
City.create(name: 'Bruce', state_id: act.id);
City.create(name: 'Canberra', state_id: act.id);
City.create(name: 'Evatt', state_id: act.id);
City.create(name: 'Giralang', state_id: act.id);
City.create(name: 'Hawker', state_id: act.id);
City.create(name: 'Kaleen', state_id: act.id);
City.create(name: 'Lawson', state_id: act.id);
City.create(name: 'Melba', state_id: act.id);
City.create(name: 'Spence', state_id: act.id);
City.create(name: 'Tuggeranong', state_id: act.id);
City.create(name: 'Weston Creek', state_id: act.id);

City.create(name: 'Darwin', state_id: nt.id);
City.create(name: 'Palmerston-East Arm', state_id: nt.id);
City.create(name: 'Alice Springs', state_id: nt.id);
City.create(name: 'Litchfield', state_id: nt.id);
City.create(name: 'Katherine', state_id: nt.id);
City.create(name: 'Nhulunbuy', state_id: nt.id);
City.create(name: 'Tennant Creek', state_id: nt.id);
City.create(name: 'Wadeye / Victoria-Daly', state_id: nt.id);
City.create(name: 'Jabiru', state_id: nt.id);
City.create(name: 'Yulara', state_id: nt.id);
