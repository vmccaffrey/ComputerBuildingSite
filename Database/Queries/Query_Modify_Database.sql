truncate table specs_case;
truncate table specs_gpu;
truncate table specs_ram;
truncate table specs_psu;
truncate table specs_storage;
truncate table specs_cooler;
truncate table specs_motherboard;
truncate table specs_cpu;
truncate table component;

alter table forum add (
	forumTopic varchar(32) not null
);

alter table forum modify forumName varchar(32) after forumTopic;

alter table specs_cpu modify cpuSocket varchar(32);
alter table specs_cpu modify coreCount varchar(16);
alter table specs_cpu modify threadCount varchar(16);

alter table specs_motherboard modify formFactor varchar(32) not null;
alter table specs_motherboard modify cpuSocket varchar(32);
alter table specs_motherboard modify ramSlots varchar(32) not null;

alter table specs_cooler modify coolerType varchar(32) not null;
alter table specs_cooler modify fanRPM varchar(32);
alter table specs_cooler modify noiseLevel varchar(32);

alter table specs_storage modify storageType varchar(32);

alter table `specs_psu` change column `formFactor` `dimensions` varchar(32);

alter table specs_psu modify dimensions varchar(32);
alter table specs_psu modify efficiency varchar(32);
alter table specs_psu modify watts varchar(32) not null;
alter table specs_psu modify modular varchar(32) not null;

alter table specs_ram modify capacity varchar(32) not null;
alter table specs_ram modify casLatency varchar(32) not null;
alter table specs_ram modify ecc varchar(8) not null;

alter table specs_gpu modify gpuMemory varchar(64) not null;
alter table specs_gpu modify gpuSpeed varchar(64) not null;

alter table specs_case drop column height;
alter table specs_case drop column width;
alter table specs_case drop column depth;
alter table specs_case drop column dimension;
alter table specs_case add (
	dimensions varchar(32)
);
alter table specs_case add (
	moboCompatibility varchar(64)
);
