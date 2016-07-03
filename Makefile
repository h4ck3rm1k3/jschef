t5:
	bash test2.sh

t4:
	bash -x test.sh

t3: testout2.js
	nodejs testout2.js
# 

#	--compile \

test2:
	ruby -I ../opal/lib/ ../opal/bin/opal test1.rb


testout2.js: test.rb
	ruby -I ../opal/lib/ ../opal/bin/opal \
	--compile \
	--debug \
	--verbose  \
	--file testout.js  \
	-I ../httpd/libraries -I ../logger/lib/ -I ../ffi-yajl/lib -I ../chef/lib -I ../chef/chef-config/lib -I ../ohai/lib -I ../mixlib-authentication/lib -I ../mixlib-shellout/lib -I ../mixlib-log/lib -I ../mixlib-config/lib -I ../syslog_logger/lib -I ../fuzzyurl.rb/lib -I ../compat_resource/files/lib -I ../ffi/lib -I../chef/chef-config/lib/chef-config -I ../chef/lib/chef/log \
	../httpd/libraries/test.rb  >testout2.js

t:
	ruby -I. test.rb

core:
	ruby -I ../opal/lib/ ../opal/bin/opal \
	--compile \
	--debug \
	--verbose  \
	-I /usr/lib/ruby/2.3.0/ 
	/usr/lib/ruby/2.3.0/logger.rb
