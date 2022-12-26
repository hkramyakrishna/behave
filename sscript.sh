#!/bin/bash
echo "Installing behave"
python_install()
{
sudo apt install python3
if [ $? -ne 0 ]; then
echo "error while installing"
fi
echo "python installed successfully"
}
behave_install()
{
sudo apt install python3-behave
if [ $? -ne 0 ]; then
echo "error while installing"
fi
echo "behave installed succesfully"
}
cleanup_workspace()
{
echo "removing old behave files"
sudo rm -r /var/lib/jenkins/workspace/testbehave/features
if [ $? -ne 0 ]; then
echo " error while removing"
fi
echo "behave files removed successfulyy"
}
behave_steps()
{
echo "steps to run BDD"
sudo mkdir -p /var/lib/jenkins/workspace/testbehave/features/steps
sudo cp -r ./test.feature /var/lib/jenkins/workspace/testbehave/features
sudo cp -r ./test.py /var/lib/jenkins/workspace/testbehave/features/steps
behave
}
python_install
behave_install
cleanup_workspace
behave_steps
