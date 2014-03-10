default['jmxtrans']['install_prefix'] = '/opt'
default['jmxtrans']['home'] = "#{default['jmxtrans']['install_prefix']}/jmxtrans"
default['jmxtrans']['log_dir'] = '/var/log/jmxtrans'
default['jmxtrans']['user'] = 'jmxtrans'
default['jmxtrans']['url'] = 'https://github.com/downloads/jmxtrans/jmxtrans/jmxtrans-20121016-151320-36564abc7e.zip'
default['jmxtrans']['checksum'] = '4a1e705c0ca69bd040bbc5523f26476a671ac300ba52cf1fa864e7a55783d9ac'
default['jmxtrans']['heap_size'] = '512'
default['jmxtrans']['run_interval'] = '60'
default['jmxtrans']['log_level'] = 'debug'
default['jmxtrans']['output']['type'] = 'graphite'
default['jmxtrans']['output']['host'] = 'graphite'
default['jmxtrans']['output']['port'] = '2003'

default['jmxtrans']['root_prefix'] = "jmx"
default['jmxtrans']['default_queries'] = {}
