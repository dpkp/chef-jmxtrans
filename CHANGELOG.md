## 0.7.0

* Added .deb install support
* move default_queries from attributes to recipes
* add Kafka 0.8 support
* use server hash instead of array
* fix some result_alias bugs in default_queries

## 0.6.0

* Enhancement: [#1][] Install .debs via dpkg_package

## 0.5.0

* Added hadoop-datanode type and default_queries
* Added hadoop-jobtracker type and default_queries
* Added hadoop-namename type and default_queries
* Added hadoop-tasktracker type and default_queries

## 0.4.1

* Fix storm type to zookeeper

## 0.4.0

* Added storm type and default_queries

## 0.3.0

* Added kafka type and default_queries

## 0.2.1

* Fixed result_alias for cassandra type default_queries

## 0.2.0

* Added cassandra type and default_queries

## 0.1.1

* Fix jmxtrans.sh permissions for execute

## 0.1.0

* Forked [bryanwb/jmxtrans](https://github.com/bryanwb/jmxtrans)
* Chef 11 compatibility
* Updated default jmxtrans version to jmxtrans-20121016-151320-36564abc7e

[#1]: https://github.com/bflad/chef-jmxtrans/issues/1
