node[:deploy].each do |deploy|
app_root = ::File.join(deploy:deploy_to, "current")
  execute "set_permissions" do
    command "touch /tmp/text"
    action :run
  end
end
