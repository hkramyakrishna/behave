#!/bin/bash
echo "Installing behave"
python_install()
{
sudo apt install python3 -y
if [ $? -ne 0 ]; then
echo "error while installing"
fi
echo "python installed successfully"
}
behave_install()
{
sudo apt install python3-behave -y
if [ $? -ne 0 ]; then
echo "error while installing"
fi
echo "behave installed succesfully"
}
cleanup_workspace()
{
echo "removing old behave files"
sudo rm -r /var/lib/jenkins/workspace/features
if [ $? -ne 0 ]; then
echo " error while removing"
fi
echo "behave files removed successfulyy"
}

python_install
behave_install
cleanup_workspace
