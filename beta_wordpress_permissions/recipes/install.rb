  execute "set_permissions" do
    user "root"
    command "touch /tmp/text"
    action :run
  end
end
