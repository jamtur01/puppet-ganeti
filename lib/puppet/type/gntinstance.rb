Puppet::Type.newtype(:gntinstance) do
    @doc = "Manage Ganeti instances"

    ensurable

    newparam(:name) do
       desc "The name of the instance to be managed"

       isnamevar

    end

    newparam(:target_node) do
       desc "The target node for the instance"
    end

    newparam(:os_type) do
       desc "The operating system type of the instance"
    end

    newparam(:disk_template) do
       desc "The disk template for the instance"
    end

    newparam(:disk_size) do
       desc "The disk size of the instance"
    end

end
