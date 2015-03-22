# lamp

A quick test of using chef-solo, berkshelf, vagrant to setup a LAMP VM.
All cookbooks used is from supermarket to keep it "standard" (but looks like there are still some quirks to get a simple LAMP really streamlined).

Disclaimer: definitey NOT for production use

Known Issues (includes but not limited to):
* you cannot just do $mysql -u root -p
  you will get an error "Can't connect to local MySQL server through socket '/var/run/mysqld/mysqld.sock'"
  this is because of the mysql cookbook
  connect using "mysql -h 127.0.0.1 -u root -p" instead
* there are redundancies in the Berksfile, metadata.rb
  and in roles/vagrant-test-box.rb
* there is no database setup and ready for a mysql based php app
