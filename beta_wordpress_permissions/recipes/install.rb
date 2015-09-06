node[:deploy].each do |deploy|
  execute "set_permissions" do
    command "touch /tmp/text"
    action :run
  end
end
