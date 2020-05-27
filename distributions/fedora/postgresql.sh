#for more info go to
#https://developer.fedoraproject.org/tech/database/postgresql/about.html

sudo dnf install postgresql postgresql-server # install client/server
sudo postgresql-setup initdb                  # initialize PG cluster
#sudo systemctl start postgresql               # start cluster
#sudo su - postgres                            # login as DB admin
#createdb quick-start                          # create testing database
#psql -d quick-start                           # connect to the new database
#psql (9.3.9)
#Type "help" for help.

#quick-start=# create table test (id int);       -- create testing table
#CREATE TABLE
#quick-start=# insert into test values (1);      -- insert some data
#INSERT 0 1
#quick-start=# select * from test;               -- query data
# id
#----
#  1
#(1 row)

#quick-start=#

