# This installs leading edge, experimental version 9/30/2016
# Do not use link in nodejs web download page https://nodejs.org/en/download/current/
# Instead go to https://nodejs.org/download/release/, then drill down (recommend v6.7.0 as this writing)
# Select a package with "-linux-armv6l." in the name for RPi 1 and Zero, "armv7l" for RPi 2 and RPi3
# Note in the above names "armv6l" and "armv7l" that last character is an "L" for "lite" not a number 1 
# Download your node package, following is a tar
wget https://nodejs.org/download/release/v6.7.0/node-v6.7.0-linux-armv6l.tar.gz  

# Unpack
tar xzvf ~/node-v*.tar.gz --strip=1

# Add environment variable, needs to be set only once, and then will work for all installed nodejs installed in the same location
# Can be commented out if you remove and install any other nodejs later
touch /etc/profile.local
echo "export PATH=$PATH:/usr/local/bin/node" >> /etc/profile.local

# Reboot the Pi to update the profile. "source" which is usually run to update without rebooting does not exist in default raspian
# After this has been run once, this can be commented out because unneeded
shutdown -r now

# Test node
node -v

# Test npm
npm -v