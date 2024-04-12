set -x
install() {
    curl -o pdi-ce.zip https://privatefilesbucket-community-edition.s3.us-west-2.amazonaws.com/9.4.0.0-343/ce/client-tools/pdi-ce-9.4.0.0-343.zip
    unzip pdi-ce.zip # all unzipped content is wrapped in folder data-integration
    ./data-integration/spoon.sh

}
ubuntu-preinstall() {
    echo "deb http://mirrors.kernel.org/ubuntu bionic main universe" | sudo tee -a /etc/apt/sources.list
    sudo apt-key adv --keyserver keyserver.ubuntu.com --recv-keys 3B4FE6ACC0B21F32
    sudo apt update
    sudo apt install -y libwebkitgtk-1.0-0
}
$@
