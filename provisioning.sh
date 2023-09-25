
function update_system {
    dnf check-update
    dnf update
}

function install_tooling {
    yum install -y curl
    yum install -y nano
    yum module install -y nodejs:18
}

echo "Updating system..."

update_system

echo "finished updating system. Starting to install tooling..."

install_tooling

echo "finished installing tooling."