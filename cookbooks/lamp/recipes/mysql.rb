 # this recipe if for installation of MYSQL service
#

package 'mysql-server' do
  action [ :install ]
end

service 'mysql' do
  action [ :disable, :stop ]
end


