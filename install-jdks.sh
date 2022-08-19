version=""

echo "please enter jdk version you want to install"
echo "(like 18 for the jdk-18)"
read version

echo "downloading oracle's jdk-$version"
mkdir ./temp
cd ./temp
wget "https://download.oracle.com/java/$version/latest/jdk-"$version"_linux-x64_bin.deb"

echo "installing jdk-$version"
sudo apt install "./jdk-$version\linux-x64_bin.deb"

echo "adding jdk-$version to your PATH"
sudo ln -fs "/usr/lib/jvm/jdk-$version/bin/* /bin/"

cd ..
rm -rf ./temp