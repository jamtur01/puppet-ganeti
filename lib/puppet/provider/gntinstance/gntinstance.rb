Puppet::Type.type(:gntinstance).provide(:gntinstance) do
    desc "Manage Ganeti instances"

    commands :gntins => "gnt-instance"

    def create
        gntins :add, "-n", resource[:target_ode], "-o", resource[:os_type], "-t", resource[:disk_template], "-s", resource[:disk_size], resource[:name]
    end

    def destroy
        gntins :remove resource[:name]
    end

    def exists?
        list = gntins :list
    end
end
