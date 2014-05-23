Caution: Every time you vagrant up/reaload shared folder (where the git is cloned to) will be erased.
Caution: That means, your ODOO installation will be gone.
Caution: You might copy the content out of the shared folder on your host to keep it and put it back afterwards.
Caution: You're also advised not to use `vagrant halt/up`, but `vagrant suspend/reload`

##### Purpose:

* Help you set up a vitual machine with your preferred ODOO version running in no time and no hassle.
* Use Githubs CDN for faster downloading of ODOO (case: LATAM)

##### Prerequisits:

* Vagrant : http://www.vagrantup.com/downloads.html
* Virtualbox : https://www.virtualbox.org/wiki/Downloads
* For playing around with ODOO PosBox-Printer: <a href="https://www.virtualbox.org/wiki/Downloads">Virtualbox Extention Pack</a>

##### Usage:

* Download files in this directory
* In command-line `cd` to this directory on your local machine & `vagrant up`

##### What will happen:

1. vagrant will download the base box and set up the virtual machine
2. Andre Schenkels' shell script will download ODOO version saas-4 from github and install

##### Remarks:

* Faster than from nightl.odoo.com, because of githubs CDN (esp. when not in EU or US)
* You can adapt the ODOO verion you need (e.g. trunk) in the shell script.
* Please feedback on 32-bit host-machines. (On 64 bit **IT WILL JUST WORK**)

##### Access:

- *Browser-Access:* `http://localhost:8069` - port can be changed in the vagrant file

- *DB-Management-Password:* `superadminpassword` - can be changed in the shell script
