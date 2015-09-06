node[:deploy].each do |application, deploy|
  app_root = "#{deploy[:deploy_to]}/current"
  execute "set_permissions" do
    command "echo #{app_root} >> /tmp/text"
    action :run
  end
end
