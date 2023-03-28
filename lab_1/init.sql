create extension multicorn;
grant usage on foreign data wrapper multicorn to postgres;

create server multicorn_srv
       foreign data wrapper multicorn
       options (wrapper 'telegram_fdw.TelegramForeignDataWrapper');

create foreign table telegram_monitor_bot 
(
       update_id     bigint,
       chat_id     	 bigint,
       message	     varchar,
       payload		 json
)
server multicorn_srv
options (primary_key 'update_id', bot_id '6194657967:AAF-KooD4ay8sjkQq-FJQp2NbQ52pkZDL_8');
