
INC=	-I ../chef-provisioning/lib \
	-I ../chef/chef-config/lib \
	-I ../chef/lib \
	-I ../chef/lib/chef/log \
	-I ../cheffish/lib \
	-I ../compat_resource/files/lib \
	-I ../diff-lcs/lib \
	-I ../ffi-yajl/lib \
	-I ../ffi/lib \
	-I ../fuzzyurl.rb/lib \
	-I ../httpd/libraries \
	-I ../iniparse/lib \
	-I ../logger/lib/ \
	-I ../mixlib-authentication/lib \
	-I ../mixlib-config/lib \
	-I ../mixlib-log/lib \
	-I ../mixlib-shellout/lib \
	-I ../ohai/lib \
	-I ../rspec-core/lib \
	-I ../rspec-support/lib \
	-I ../serverspec/lib \
	-I ../specinfra/lib \
	-I ../rubysl-rexml/lib/ \
	-I ../syslog_logger/lib \
	-I `pwd` -I ../chef-zero/lib \
	-I ../chef/chef-config/lib/chef-config 

testinc2:
	#strace -f -s 999 -oopens.txt
	ruby -I ../opal/lib/ ../opal/bin/opal $(INC) --compile tests/testinc2.rb > tmp/testinc2.js
	nodejs tmp/testinc2.js
testinc:
	ruby -I ../opal/lib/ ../opal/bin/opal $(INC) testinc.rb

compile_and_run: testout2.js
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
	$(INC)  \
	--file testout.js  \
	test.rb  >testout2.js

t:
	ruby -I. test.rb

core:
	ruby -I ../opal/lib/ ../opal/bin/opal \
	--compile \
	--debug \
	--verbose  \
	-I /usr/lib/ruby/2.3.0/ 
	/usr/lib/ruby/2.3.0/logger.rb
