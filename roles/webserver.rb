
# roles/webserver.rb

name "webserver"
description "role for configuration of  Webserver"
run_list "recipe[webserver]"
#default_attribute ({
#	"org_name" => "plusforume"			  
#} )


