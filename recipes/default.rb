include_recipe "nodejs"
include_recipe "git"
include_recipe "zeromq"

bash "clone ce-front-end" do
  code <<-EOH
    git clone https://github.com/pghalliday/ce-front-end.git #{node[:ce_front_end][:installDirectory]}
  EOH
  not_if { ::FileTest.exists?(node[:ce_front_end][:installDirectory]) }
end