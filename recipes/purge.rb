bash 'kill_running_interpreters' do
    user "root"
    ignore_failure true
    code <<-EOF
      service livy stop
    EOF
end


directory node.livy.home do
  recursive true
  action :delete
  ignore_failure true
end

link node.livy.base_dir do
  action :delete
  ignore_failure true
end


