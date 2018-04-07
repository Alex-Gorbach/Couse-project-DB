create role AdminDB;
DROP ROLE AdminDB; 
GRANT SYSDBA TO C##AdminDBB;
           
           
create role Users;
grant create session to Users;
grant execute on OnliUserRead_pac to Users;
grant execute on OnliUser_pac to Users;

alter profile Admin_prof limit   sessions_per_user 24;
create profile Admin_prof limit
       password_life_time 180
       sessions_per_user 24
       failed_login_attempts 7
       password_lock_time 1
       password_grace_time default
       password_reuse_time 10
       connect_time 180
       idle_time 30;
       

create user AdminBD identified by 1234567
       default tablespace movies_and_user quota unlimited on movies_and_user
       temporary tablespace movies_and_user_temp
       profile Admin_prof
       account unlock;
       GRANT DBA TO AdminBD WITH ADMIN OPTION;
       
   
    
    create user userBD identified by 1234567
       default tablespace KP_BD quota unlimited on KP_BD
       temporary tablespace KP_BD_TEMP
       profile Allusers
       account unlock;
       
    grant Users to userBD;
    
    
    drop user userBD;
    drop role AdministratorBD;

drop role Users;
drop user AdminBD;