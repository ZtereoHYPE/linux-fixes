# Improving power-profiles-daemon on AMD laptops:

Right now, power-profile-daemons does not use AMD's EPP (Energy Performance Preference) feature if your laptop also has a platform-profile driver. 
This feature is available on AMD's Zen 2 and Zen 3 CPUs. 
It allows the user to set a power profile for the CPU. 

This script solves that by listening to the dbus message that is sent when the power profile is changed and then setting the EPP value accordingly.

This script also sets the graphics power profile to "low" when the power profile is set to low,
and sets the graphics profile to "auto" elsewhere, like it is by default.

## Installation:
To start this script on boot you need to add and enable the systemd service file to your files, replacing <location of the script> with the right location.