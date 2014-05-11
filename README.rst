Install OpenERP with a VagrantBox
=================================

Requirements
------------

- VirtualBox or VMWare (e.g. https://www.virtualbox.org/)
- vagrant (http://www.vagrantup.com/)



How to
------

Once requirements set up: do install the vagrant box of the OpenERP-version you like. Done.

How to: http://docs.vagrantup.com/v2/boxes.html
@time of redaction - 11.05.2014:

.. code-block:: sh

	vagrant box add USER/BOX´´´´

Vagrant USER: OpenERP
Vagrant BOX : OpenERP_[VERSION]

Check https://vagrantcloud.com/OpenERP for available versions.



Good to know
------------

This is camptocamps best practice setup for developement.
More info: https://github.com/camptocamp/puppet-openerp