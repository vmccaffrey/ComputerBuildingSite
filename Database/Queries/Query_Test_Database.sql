select * 
from access_level
order by accessID asc;

select * 
from access_level
order by accessID desc;

select * 
from forum
order by forumID asc;

select * 
from forum
order by forumID desc;

-- alter table forum add (
-- 	forumTopic varchar(32) not null
-- );
-- 
-- ALTER TABLE forum MODIFY forumName varchar(32) after forumTopic;