Install OpenERP with a VagrantBox
=================================

What works with some luck:
-------------------

- Docker-Image started within seconds and OpenERP-Website reached.

-To-Dos:
----------
Windows control machines aren't supported in ansible (and will not). Local execution of ansible plabooks on the guest is not yet supported by vagrant. (mitchellh/vagrant#2103) The dirty workaround I found is not pretty (and I couldn't get it to work)
boot2docker (tiny core linux) doesn't support shared folders on windos hosts officially yet without rsync install. This is nothing for a newcomer to do, so FAIL. I heard they're working on that, too.

A normal docker base image worked, but is very heavy ~400MB - this shurely is not a perfect solution... credits @florentx for the docker images, hope they will remain maintained in the future ;)

vagrant supports Hyper-V. This could make Virtulabox in Windows 8.1 upwards obsolete. This is very good news, because it may be even easier to get started with openerp independently of the system. Support for a ansible provision should be already doable (if only ansible local would work) (great)
So, I think best thing to do is, take some stragic coffees and turn back in a month, when anisble local execution on guest might be available.

By then I hope to include

@bmart 's bestpractice effort,
@ahelal and @kwanso 's ansible playbooks, and
@florentx 's docker-image
into a single, lightweight and deadsimple solution with minimum pre-requirements optimized for a "thumb" user to start developing, needing vagrant only on modern systems:

::

:
vagrant up --provider=docker for linux and windows hosts of any sort (maby virtualbox needed)
vagrnat up --provider=hyper-v for ansible provisioning on windows hosts += 8.1
vagrant up --provider=virtualbox for default ansible provisioning on Mac & Windows & Linux with virtualbox
vagrant up --provider=cloudaccountwhichhasfreeregistrationfordevsXY - yeah, would be cool

vagrant login + vagrant share - for sharing the own dev-environment (usually frontent, but ssh can be shared as well) over a normal link with non-tech-expert

_::

Requirements
------------

- VirtualBox (https://www.virtualbox.org/)
- vagrant (http://www.vagrantup.com/)

Future work: 
- get it to work with Windows8.1 native Hyper-V - without the need to install anything but Vagrant
- get the Docker-Box to provide driectly to a docker environment (on windows defoult to a special docker/box virtual machine)

VMWare might work as well, you also can deploy to cloud services, such as Amazon AWS
(http://docs.vagrantup.com/v2/providers/basic_usage.html)


How to
------

**You can use the folders for Docker Box (much, much faster) or the Ansible altenatively for automated Provisioning**

A) Download the Repository (e.g. as zip) and place/extract in any Virtual Machine root folder an your host system
B) Navigate to this Virtual Machine root (into docker-vagrant OR ansible-vagrant) folder in your host's command line
C) Hack in the following:

.. code-block:: sh

	vagrant up


Wait. You're done.

Acess1: http://localhost:8069

Acess2: http://NETWORKIP:8069 (shall be echoed from the ansible playbook in the future) - check your router-dhcp



Good to know
------------

The ainm of this project is do provide communitie's best practice roll out for:

A) OpenERP - Instant Development Environment on local VM
B) OpenERP - Production Ready SIMPLE-Rollout (single server) on Cloud or VM (future goal)
C) OpenERP - Production Ready COMPLEX-Rollout (server cluster) on Cloud or VMs (future goal)

Is this useful? Need more more use cases covered? Please let us know your detailed opinion.

**Technology used and why:**

- **VM**, because of it's convenience and repeatability - industry standard
- **Docker**, because of it is st to take virtualization to the next level (Virtual Environments) - more ressource optimzied than VM-Technology
- **Vagrant**, because of it's convenience, it's live VM sharing function - developers can live-share with non-tech experts)
- **Ansible**, because of it's simplicity and readybility - potentially capturing the knowledge of the many and stimulating contribution
