---
title:   puppet
layout:  fullscreen
sidebar: puppetmodules
---
# Code is King!

I use code to manage infrastructure. Using code means that infrastructure can be quickly replicated, collaboratively evolved and easily understood.

I have put in place the infrastructure and tools to configure, manage and monitor the servers our applications are deployed on. This is now highly automated and controlled such that virtual servers are created as required, managed only via their configuration settings and monitored throughout their lifetime.

Using tools like Terraform means that [our Packer templates][1] can be deployed at scale. It also means that we can bring the server environment to developers workstations in the form of Vagrant machines.

Having written [many][2] [puppet][3] [modules][4], I am well practised in managing lots of different applications over a [variety of][5] different [architectures][6].

[1]: [https://github.com/NERC-CEH/ubuntu.git]        "ubuntu"
[2]: [https://github.com/NERC-CEH/puppet-tomcat.git] "puppet-tomcat"
[3]: [https://github.com/NERC-CEH/puppet-nagios.git] "puppet-nagios"
[4]: [https://github.com/NERC-CEH/puppet-fstab.git]  "puppet-fstab"
[5]: [https://github.com/NERC-CEH/ubuntu.git]        "Ubuntu Packer"
[6]: [https://github.com/NERC-CEH/ubuntu.git]        "Mac OSX Packer"

<div class="cards" markdown="0">
  <div class="card vagrant"><img src="/images/logos/vagrant.png" height="90"/></div>
  <div class="card terraform"><img src="/images/logos/terraform.png" height="90"/></div>
  <div class="card puppet"><img src="/images/logos/puppet.png" height="70"/></div>
  <div class="card packer"><img src="/images/logos/packer.png" height="70"/></div>
</div>