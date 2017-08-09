/*Hi Brian, so I need a query that returns the last 3 records created by the currently logged in user, the output should be the uuid and response, like those return by the default search.*/

select * from user;

-- version 1

select uuid, response 
  from latestNonDeletedArchEntFormattedIdentifiers 
  join (select distinct uuid, userid from archentity) using (uuid) 
 where userid = 2 
 order by uuid desc 
 limit 3;


-- version 2

select uuid, response 
  from latestNonDeletedArchEntFormattedIdentifiers 
 where substr(uuid,2,5) = 2 
 order by uuid desc 
 limit 3;
