echo "downloading oracle's jdk18"
mkdir ./temp
cd ./temp
wget https://download.oracle.com/java/18/latest/jdk-18_linux-x64_bin.deb

echo "installing jdk18"
sudo apt install ./jdk-18_linux-x64_bin.deb

echo "adding jdk18 to your PATH"
sudo ln -fs /usr/lib/jvm/jdk-18/bin/* /bin/

cd ..
rm -rf ./temp
