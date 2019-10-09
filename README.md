# Vagrant Playground for Inofix Mail Server

Minimal environment to develop missing Ansible integration for Inofix mail server.

## Getting started

1. Make sure you have `ansible`, `vagrant` and `vagrant-libvirt` installed on your local host.

2. Download required Ansible roles from the root directory of the repository:

   ```
   ansible-galaxy install -r ansible/roles/requirements.yml
   ```

3. Adjust the connection/realm details of your IPA environment in `ansible/playbook.yml`

4. Start the vagrant box:
   ```
   vagrant up
   ```
