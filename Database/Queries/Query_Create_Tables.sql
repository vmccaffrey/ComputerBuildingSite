create table access_level (
	accessID int(1) not null auto_increment,
    accessName varchar(32) unique not null,
    
    primary key(accessID)
);

create table user_account (
	userID int(16) auto_increment not null,
    userAccessLevel int(1) references access_level(accessID),
    userName varchar(64) unique not null,
    userPassword varchar(255) not null,
    
    primary key(userID)
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

create table forum (
	forumID int(16) auto_increment not null,
    forumTopic varchar(32) not null,
    forumName varchar(64) unique not null,
    
    primary key (forumID)
);

create table thread (
	threadID int(32) auto_increment not null,
    parentForum int(16) references forum(forumID),
    threadCreator int(16) references user_account(userID),
	threadSubject varchar(128) not null,
    
	primary key(threadID)
);

create table post (
	postID int(32) auto_increment not null,
    parentThread int(16) references thread(threadID),
    postCreator int(16) references user_account(userID),
	postMessage varchar(10000) not null,
    postDate datetime not null,
    
	primary key(postID)
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
    fanRPM varchar(32) not null,
    noiseLevel varchar(32) not null,
    
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
    dimesions varchar(32),
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

