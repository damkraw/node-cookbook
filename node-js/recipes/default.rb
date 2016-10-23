execute "what am i" do
time = Time.now.to_i
  cwd '/tmp'
  command "mkdir -p setup_#{time}"
  action :run
end

execute "upgrade to node 5.1.0" do
   command "/usr/local/bin/npm cache clean -f && /usr/local/bin/npm install -g n && /usr/local/bin/n 6.9.1"
   action :run
end

execute "restart node service via monit" do
   command "/usr/bin/monit restart all"
   action :run
end
