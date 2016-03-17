create table airc (
	id int not null auto_increment,
	airl_id int not null,
	airt_id int not null,
	airc_name varchar(50),
	airc_regnr varchar(30),
	airc_memo varchar(4096),
	primary key (id)
);

create table airl (
	id int auto_increment not null,
	airl_name varchar(50),
	airl_iata_code varchar(2) default '',
	airl_icao_code varchar(3) default '',
	primary key (id)
);

create table airt (
	id int auto_increment not null,
	airt_name varchar(50),
	primary key (id)
);

insert into airt (id, airt_name)
values 
( 1,  'Airbus A300' ),
( 2,  'Airbus A310' ),
( 3,  'Airbus A318' ),
( 4,  'Airbus A319' ),
( 5,  'Airbus A320' ),
( 6,  'Airbus A321' ),
( 7,  'Airbus A330' ),
( 8,  'Airbus A340' ),
( 9,  'Airbus A350' ),
( 10, 'Airbus A380' ),
( 11, 'Boeing 707' ),
( 12, 'Boeing 717' ),
( 13, 'Boeing 727' ),
( 14, 'Boeing 737' ),
( 15, 'Boeing 747' ),
( 16, 'Boeing 757' ),
( 17, 'Boeing 767' ),
( 18, 'Boeing 777' ),
( 19, 'Boeing 777X' ),
( 20, 'Boeing 787' ),
( 21, 'Sukhoi Su-80' ),
( 22, 'Sukhoi Superjet 100' ),
( 23, 'Sukhoi Irkut MC-21' )
;

insert into airl (id, airl_name, airl_iata_code, airl_icao_code)
values
( 1,  'Wizz Air',            'W6', 'WZZ' ),
( 2,  'Ryanair',             'FR', 'RYR' ),
( 3,  'Aeroflot',            'SU', 'AFL' ),
( 4,  'Transavia',           'HV', 'TRA' ),
( 5,  'KLM',                 'KL', 'KLM' ),
( 6,  'Martinair',           'MP', 'MPH' ),
( 7,  'Air France',          'AF', 'AFR' ),
( 8,  'British Airways',     'BA', 'BAW' ),
( 9,  'Cathay Pacific',      'CX', 'CPA' ),
( 10, 'Lufthansa',           'LH', 'DLH' ),
( 11, 'Singapore Airlines',  'SQ', 'SIA' ),
( 12, 'EasyJet',             'U2', 'EZY' )
;

insert into airc (id, airl_id, airt_id, airc_regnr, airc_name, airc_memo)
values 
( 1, 1,  5, 'HA-LPJ',   '',               '' ),
( 2, 1,  5, 'HA-LPK'	,  '',               '' ),
( 3, 2, 14, 'EI-SEV',   '',               '' ),
( 4, 2, 14, 'EI-DCL',   '',               'Dreamliner (revised) special colours' ),
( 5, 3, 22, 'EK-95015', 'Yuri Gagarin',   'Named after the first man in the space' ),
( 6, 3, 22, 'RA-89009', 'Vasily Borisov', 'Had a livery (painting) in traditional Russian Khokhloma style (a type of decorative painting with flower motif)' ),
( 7, 4, 15, 'EI-XLN',   '',               'Had an "Amur Tiger" painting. The special color scheme was designed to “draw attention of the international and Russian public to the issues of environmental protection and conservation of rare and endangered species.” Unfortunately Transavia got bankrupt, and the airplane was returned to Spain. Many Russian photo spotters regret that they will not see the Amur Tiger in Moscow Vnukovo airport again.' )
;