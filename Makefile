t5:
	bash test2.sh

t4:
	bash -x test.sh

t3: testout2.js
	nodejs testout2.js
# 

#	--compile \

test2:
	ruby -I /home/mdupont/experiments/opal/lib/ /home/mdupont/experiments/opal/bin/opal test1.rb


testout2.js: test.rb
	ruby -I /home/mdupont/experiments/opal/lib/ /home/mdupont/experiments/opal/bin/opal \
	--compile \
	--debug \
	--verbose  \
	--file testout.js  \
	-I /home/mdupont/experiments/httpd/libraries -I /home/mdupont/experiments/logger/lib/ -I /home/mdupont/experiments/ffi-yajl/lib -I /home/mdupont/experiments/chef/lib -I /home/mdupont/experiments/chef/chef-config/lib -I /home/mdupont/experiments/ohai/lib -I /home/mdupont/experiments/mixlib-authentication/lib -I /home/mdupont/experiments/mixlib-shellout/lib -I /home/mdupont/experiments/mixlib-log/lib -I /home/mdupont/experiments/mixlib-config/lib -I /home/mdupont/experiments/syslog_logger/lib -I /home/mdupont/experiments/fuzzyurl.rb/lib -I /home/mdupont/experiments/compat_resource/files/lib -I /home/mdupont/experiments/ffi/lib -I/home/mdupont/experiments/chef/chef-config/lib/chef-config -I /home/mdupont/experiments/chef/lib/chef/log \
	/home/mdupont/experiments/httpd/libraries/test.rb  >testout2.js

t:
	ruby -I. test.rb

core:
	ruby -I /home/mdupont/experiments/opal/lib/ /home/mdupont/experiments/opal/bin/opal \
	--compile \
	--debug \
	--verbose  \
	-I /usr/lib/ruby/2.3.0/ 
	/usr/lib/ruby/2.3.0/logger.rb
