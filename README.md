#puppet-zabbix

##Description

This module allows you to install Oracle Java and allow you to pick the version of Java you want installed.

##How to use:

###How to install Oracle Java with defaults (Java 7)
```ruby
 include oraclejava
```

###How to install Oracle Java you choose the version
```ruby
 class { 'oraclejava': version => '8' }
```