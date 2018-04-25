select * 
from access_level;

select * 
from forum;

select * 
from component_type;

select * 
from component;

select * 
from specs_cpu;

select *
from specs_motherboard;

select *
from specs_cooler;

select *
from specs_storage;

select *
from specs_psu;

select *
from specs_ram;

select *
from specs_gpu;

select *
from specs_case;

-- select *
-- from specs_cpu, component_type, component
-- where component.componentType = component_type.typeID
-- union
-- select *
-- from;

select * 
from component, component_type
where component_type.typeName = 'CPU' and component_type.typeID = component.componentType;

select * 
from component
where component.componentType = 1;

select * 
from specs_cpu;

select typeID
from component_type
where typeName = 'GPU';

SELECT
    specs_cpu.*, component.brand, component.componentName, component.series
FROM
    component INNER JOIN component_type inner join specs_cpu
    ON component.componentType = component_type.typeID and component.model = specs_cpu.model
WHERE
    (component_type.typeID = 1);

select *
from component, specs_storage
where component.model = specs_storage.model;

create table test (
	id int(2) not null auto_increment,
    thing0 varchar(16) not null,
    thing1 varchar(16) not null,
    thing2 varchar(16) not null,
    thing3 varchar(16) not null,
    
    primary key(id)
);

create table test_linked (
	linkID int(2) references test(id),
    link0 varchar(16) not null,
    link1 varchar(16) not null,
    link2 varchar(16) not null,
    link3 varchar(16) not null,
    
    primary key(linkID)
);

select * 
from test
order by id asc;

select * 
from test_linked
order by linkID asc;

select MAX(id)
from test;

truncate table test_linked;
truncate table test;

drop table test_linked;
drop table test;