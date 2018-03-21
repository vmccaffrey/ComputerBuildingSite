create table access_level (
	accessID int(1) not null auto_increment,
    accessName varchar(16) unique not null,
    
    primary key(accessID)
);

create table user_account (
	userID int(16) auto_increment not null,
    userAccessLevel int(1) references access_level(accessID),
    userName varchar(64) unique not null,
    userPassword varchar(256) not null,
    
    primary key(userID)
);

create table builds (
	buildID int(16) references user_account(userID),
    buildURL varchar(100) unique not null,
    buildBody text not null,
    
    primary key(buildID)
);

create table guides (
	guideID int(16) references user_account(userID),
    guideURL varchar(100) unique not null,
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
    cpuSocket varchar(16) not null,
    coreName varchar(16) not null,
    coreCount int(2) not null,
    threadCount int(2) not null,
    speed varchar(8) not null,
    TDP varchar(4) not null,
    
    primary key (model)
);

create table specs_motherboard (
	model varchar(32) references component(componentModel),
    cpuSocket varchar(16) not null,
    formFactor varchar(8) not null,
    ramSlots int(2) not null,
    maxRAM varchar(8) not null,
    
    primary key (model)
);

create table specs_cooler (
	model varchar(32) references component(componentModel),
    coolerType varchar(16) not null,
    fanRPM varchar(16) not null,
    noiseLevel varchar(16) not null,
    
    primary key (model)
);

create table specs_storage (
	model varchar(32) references component(componentModel),
    formFactor varchar(8) not null,
    storageType varchar(8) not null,
    capacity varchar(8) not null,
    storageCache varchar(8),
    
    primary key (model)
);

create table specs_psu (
	model varchar(32) references component(componentModel),
    formFactor varchar(8) not null,
    efficiency varchar(16) not null,
    watts varchar(6) not null,
    modular varchar(6) not null,
    
    primary key (model)
);

create table specs_ram (
	model varchar(32) references component(componentModel),
    ramType varchar(32) not null,
	speed varchar(32) not null,
    capacity varchar(16) not null,
    casLatency int(2) not null,
    ecc boolean not null,
    
    primary key (model)
);

create table specs_gpu (
	model varchar(32) references component(componentModel),
    gpuMemory varchar(4) not null,
    gpuSpeed varchar(8) not null,
    
    primary key (model)
);

create table specs_case (
	model varchar(32) references component(componentModel),
    bayHDD varchar(16),
    baySSD varchar(16),
    expansionSlots varchar(8),
    height varchar(8),
    width varchar(8),
    depth varchar(8),
    
    primary key (model)
);

