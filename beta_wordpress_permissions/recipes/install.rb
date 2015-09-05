node[:deploy].each do |application, deploy|
  app_root = "#{deploy[:deploy_to]}/current"
  execute "set_permissions" do
    command "[ -d #{app_root}/wp-content/uploads ] || mkdir #{app_root}/wp-content/uploads && chown deploy:www-data #{app_root}/wp-content/uploads | chmod 777 #{app_root}/wp-content/uploads | find #{app_root}/wp-content/uploads -type d -exec chmod 777 {} \\;"
    =begin
    #only_if { ::File.directory?("#{app_root}/wp-content/uploads") }
    =end
    action :run
  end
end
