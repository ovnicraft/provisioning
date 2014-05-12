Install OpenERP with a VagrantBox
=================================

Under Developement:
-------------------

- Docker-Image started within seconds and OpenERP-Website reached.

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


Wait. You're done. Acess: http://localhost:8069 (shall be echoed from the ansible playbook in the future)



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
