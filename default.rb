
package_name = "apache2"
service_name = "apache2"
doc_root = "/var/www"

#node.default['main']['package'] = "nano" 
node.override['main']['package'] = "git"
#node.normal['main']['package'] = "nginx"

['nano', 'git', 'nginx'].each do |package|
	apt_package package do
		action :install 
	end
end
  

if node["platform"] == "ubuntu"
   package_name = "unzip"
#   service_name = "httpd"
#   doc_root = "/var/www/"
end


apt_package node['main']['package'] do
	action :install
end


execute "update" do
	command "apt-get update"
end

package package_name do
        action [:install]
end

service service_name do
        action [:enable, :start]
end

file "#{doc_root}/html/index.html" do
        content '
                <!doctype html>
                <title>Welcome Page</title>
                <style>
                body { text-align: center; padding: 150px; }
                h1 { font-size: 50px; }
                  body { font: 20px Helvetica, sans-serif; color: #333; }
                  article { display: block; text-align: left; width: 650px; margin: 0 auto; }
                  a { color: #dc8100; text-decoration: none; }
                  a:hover { color: #333; text-decoration: none; }
                </style>

                <article>
                <h2>Hello, Welcome to the training session on Chef!</h2>
 				<div>
                     <p>Chef is the most flexible and advanced tool for configuration management.</p>
                     <p>&mdash; Ganesh Palnitkar</p>
                </div>
                </article>
'
end

