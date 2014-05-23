#### Installation

##### Prerequisits

* Vagrant : http://www.vagrantup.com/downloads.html
* Virtualbox : https://www.virtualbox.org/wiki/Downloads
* For playing around with ODOO PosBox-Printer: <a href="https://www.virtualbox.org/wiki/Downloads">Virtualbox Extention Pack</a>

##### Usage

* Download files in this directory (don't need more)
* In your preferred comand-line `cd` to this directory on your local machine
* `vagrant up`

- vagrant will download the base box and set up the virtual machine
- Andre Schnekels shell script will download ODOO version saas-4 from github and install
- You can adapt the ODOO verion you need (e.g. trunk) in the shell script.


Please give feedback on whether it works or not on 32-bit host-machines.

On 64 bit *IT WILL JUST WORK*


Access: http://localhost:8069      # port can be changed in the vagrant file
DB-Password: superadminpassword    # can be changed in the shell script, this is the one you use for ODOO DB management
