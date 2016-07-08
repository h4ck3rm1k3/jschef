require 'opal/platform';
require 'nodejs';
require 'opal-parser'

class Chef

  VERSION2="fake"

end



# $LOAD_PATH.unshift("/home/mdupont/experiments/chef/chef-config/lib/chef-config")
# $LOAD_PATH.unshift("/home/mdupont/experiments/httpd/libraries")# fake stuff from me
# $LOAD_PATH.unshift("/home/mdupont/experiments/ffi-yajl/lib")#git@github.com:chef/ffi-yajl.git
# $LOAD_PATH.unshift("/home/mdupont/experiments/chef/lib") # github.com:chef/chef.git
# $LOAD_PATH.unshift("/home/mdupont/experiments/chef/chef-config/lib") # github.com:chef/chef.git
# #https://github.com/chef/ohai
# $LOAD_PATH.unshift("/home/mdupont/experiments/ohai/lib") #git@github.com:chef/ohai.git
# $LOAD_PATH.unshift("/home/mdupont/experiments/mixlib-authentication/lib") #github.com:chef/mixlib-authentication.git
# $LOAD_PATH.unshift("/home/mdupont/experiments/mixlib-shellout/lib") #github.com:chef/mixlib-shellout.git
# $LOAD_PATH.unshift("/home/mdupont/experiments/mixlib-log/lib") #github.com:chef/mixlib-log.git
# $LOAD_PATH.unshift("/home/mdupont/experiments/mixlib-config/lib") #github.com:chef/mixlib-config.git
# $LOAD_PATH.unshift("/home/mdupont/experiments/syslog_logger/lib") #github.com:ngmoco/syslog_logger.git
# $LOAD_PATH.unshift("/home/mdupont/experiments/fuzzyurl.rb/lib") # github.com:gamache/fuzzyurl.rb.git
# $LOAD_PATH.unshift("/home/mdupont/experiments/compat_resource/files/lib") #github.com:chef-cookbooks/compat_resource.git

# $LOAD_PATH.unshift("/home/mdupont/experiments/ffi/lib")

require "mysyslog"
require 'logger';
require "chef/version"

def property(a,b,c)
end

def lazy()
end

module HttpdCookbook

  #class Helpers
  #end

  class ChefCompat

    class Resource

    end
  end
end

require "helpers"
require "httpd_config"
