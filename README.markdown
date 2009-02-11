ODP ("Office Download Prevention")
===

This project is used to monitoring the bandwidth from your local network if your gateway is a Linux based router or server which uses iptables.
You can get the darned f* guys which flood your office network downloading music and huge isos like a Office for example.

To do list
===

* Change the way that rails application get data from blamewidth module. We need think in a real solution. For example: this actual code, can't communicate with multiple servers and is so slow to get data from remote server. We don't have a bandwidth history saved in a database either.

* organize the code from lib/blamewidth. We need get the original version from github, add support to ssh on top of it and add rspec tests. The actual code is 'braindump'. Treats connection exceptions .We need refactory all the code.

* creates a gem or plugin based on lib/blamewidth refactored

* Add rspec tests to rails application

* Improve layout for pessoas views

* Improve layout for index view

* Create a relationship between servers and people

* Use an authentication and authorization plugin
