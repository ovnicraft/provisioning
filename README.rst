Install OpenERP with a VagrantBox
=================================

Requirements
------------

- VirtualBox or VMWare (e.g. https://www.virtualbox.org/)
- vagrant (http://www.vagrantup.com/)

both installed.

How to
------

A) Download the Repository (e.g. as zip) and place/extract in any Virtual Machine root folder an your host system
B) Navigate to the Virtual Machine root folder in your host's command line
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
- **Vagrant**, because of it's convenience, it's live VM sharing function - developers can live-share with non-tech experts)
- **Ansible**, because of it's simplicity and readybility - potentially capturing the knowledge of the many and stimulating contribution
