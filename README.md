ansible_local_cdh_hadoop
========================

Create a local working CDH5 Hadoop with ansible scripts

These ansible scripts accompany [this GoDataDriven blog](http://blog.godatadriven.com/automated-cdh5-hadoop-on-your-laptop-with-ansible.html) about installing a local CDH5 hadoop in local and pseudo distributed mode.

If not done yet, install ansible by e.g.

	$ brew install ansible

Start installing by issuing:

	$ start-playbook.sh

This script will ask for the directory to install into.
After that the ansible playbook is started which will:

- download the tarballs (hadoop, hive, pig, mahout and spark currently)
- unpack them into the install directory
- creates a .bash_profile_hadoop to setup the aliasses
- configures the hadoop and hive config files
- fixes a few lines in hadoop-config.sh to make sure JAVA_HOME is set correctly

TODO: 

