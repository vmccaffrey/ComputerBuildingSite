-- create table access_level (
-- 	accessID int(1) not null auto_increment,
--     accessName varchar(32) unique not null,
--     
--     primary key(accessID)
-- );

create table `user` (
	user_id int(16) auto_increment not null,
    user_name varchar(64) unique not null,
    user_pass varchar(255) not null,
    user_email varchar(255) not null,
    user_date datetime not null,
    user_level int(8) references access_level(accessID),
    
    primary key(user_id)
);

create table builds (
	buildID int(16) references user_account(userID),
    buildURL varchar(255) unique not null,
    buildBody text not null,
    
    primary key(buildID)
);

create table guides (
	guideID int(16) references user_account(userID),
    guideURL varchar(255) unique not null,
    guideBody text not null,
    
    primary key(guideID)
);

create table categories (
	cat_id int(16) auto_increment not null,
    cat_name varchar(255) unique not null,
    cat_description varchar(255) not null,
    
    primary key (cat_id)
);

create table topics (
	topic_id int(16) auto_increment not null,
	topic_subject varchar(255) not null,
    topic_date datetime not null,
    topic_cat int(16) references categories(cat_id),
    topic_by int(16) references `user`(user_id),
    
	primary key(topic_id)
);

create table posts (
	post_id int(32) auto_increment not null,
	post_content text not null,
    post_date datetime not null,
    post_topic int(16) references topic(topic_id),
    post_by int(16) references `user`(user_id),
    
	primary key(post_id)
);

create table component_type (
	typeID int(2) auto_increment not null,
    typeName varchar(32) unique not null,
    
    primary key (typeID)
);

create table component (
	model varchar(32) not null,
    componentType int(2) references component_type(typeID),
    brand varchar(32) not null,
    series varchar(32),
    componentName varchar(32),
    
    primary key (model)
);

create table specs_cpu (
	model varchar(32) references component(componentModel),
    cpuSocket varchar(32) not null,
    coreName varchar(32) not null,
    coreCount varchar(16) not null,
    threadCount varchar(16) not null,
    speed varchar(16) not null,
    TDP varchar(8) not null,
    
    primary key (model)
);

create table specs_motherboard (
	model varchar(32) references component(componentModel),
    cpuSocket varchar(32) not null,
    formFactor varchar(32) not null,
    ramSlots varchar(32) not null,
    maxRAM varchar(8) not null,
    
    primary key (model)
);

create table specs_cooler (
	model varchar(32) references component(componentModel),
    coolerType varchar(32) not null,
    fanRPM varchar(32),
    noiseLevel varchar(32),
    
    primary key (model)
);

create table specs_storage (
	model varchar(32) references component(componentModel),
    formFactor varchar(16) not null,
    storageType varchar(32),
    capacity varchar(16) not null,
    storageCache varchar(8),
    
    primary key (model)
);

create table specs_psu (
	model varchar(32) references component(componentModel),
    dimensions varchar(32),
    efficiency varchar(32),
    watts varchar(32) not null,
    modular varchar(32) not null,
    
    primary key (model)
);

create table specs_ram (
	model varchar(32) references component(componentModel),
    ramType varchar(32) not null,
	speed varchar(32) not null,
    capacity varchar(32) not null,
    casLatency varchar(32) not null,
    ecc varchar(8) not null,
    
    primary key (model)
);

create table specs_gpu (
	model varchar(32) references component(componentModel),
    gpuMemory varchar(64) not null,
    gpuSpeed varchar(64) not null,
    
    primary key (model)
);

create table specs_case (
	model varchar(32) references component(componentModel),
    bayHDD varchar(16),
    baySSD varchar(16),
    expansionSlots varchar(8),
    dimensions varchar(32),
    moboCompatibility varchar(64), 
    
    primary key (model)
);

