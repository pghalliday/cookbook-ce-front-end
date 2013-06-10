include_recipe "nodejs"
include_recipe "git"
include_recipe "zeromq"

user node[:ce_front_end][:user] do
end

git "#{node[:ce_front_end][:destination]}" do
  user node[:ce_front_end][:user]
  repository node[:ce_front_end][:repository]
  destination node[:ce_front_end][:destination]
  not_if { ::FileTest.exists?(node[:ce_front_end][:destination]) }
end

file "#{node[:ce_front_end][:destination]}/config.json" do
  owner node[:ce_front_end][:user]
  content <<-EOH
{
  "port": #{node[:ce_front_end][:port]}
  "ce-operation-hub": "#{node[:ce_front_end][:ce_operation_hub]}"
}
  EOH
end

bash "start ce-front-end server" do
  code <<-EOH
    su -l #{node[:ce_front_end][:user]} -c "cd #{node[:ce_front_end][:destination]} && npm install && npm start"
  EOH
end
