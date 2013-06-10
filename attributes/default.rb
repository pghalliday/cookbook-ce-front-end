default[:ce_front_end][:repository] = "https://github.com/pghalliday/ce-front-end.git"
default[:ce_front_end][:destination] = "/opt/ce-front-end"
default[:ce_front_end][:user] = "ce-front-end"
default[:ce_front_end][:port] = "3000"
default[:ce_front_end][:ce_operation_hub] = "tcp://127.0.0.1:4000"

# dependency defaults
default[:nodejs][:install_method] = "source"
default[:nodejs][:version] = "0.10.9"
default[:git][:version] = "1.8.3"
default[:zeromq][:version] = "3.2.3"
default[:zeromq][:url] = "http://download.zeromq.org"
