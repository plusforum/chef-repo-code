
# This recipe is for installation of Apache2 webservice
#

package "apache2" do
  action [ :install ]
end

service "apache2" do
  action [ :disable, :stop ]
end


