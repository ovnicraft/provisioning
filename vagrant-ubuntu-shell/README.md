#### Installation

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

**Browser-Access:** `http://localhost:8069` # port can be changed in the vagrant file

**DB-Management-Password:** `superadminpassword` # can be changed in the shell script
