#!/bin/bash

interface=net.hadess.PowerProfiles
member=PropertiesChanged


function updateEpp {
	active_profile=$(gdbus introspect --system --dest net.hadess.PowerProfiles --object-path /net/hadess/PowerProfiles | grep -oP "(?<=ActiveProfile = ')[^']+")
	selected_epp=""
	amdgpu_dpm_level="auto"
	case "$active_profile" in
		"power-saver")
		        selected_epp="power"
			amdgpu_dpm_level="low"
		        ;;
		"balanced")
        		selected_epp="balance_power"
        		;;
   		"performance")
        		selected_epp="performance"
        		;;
	esac

	echo $selected_epp | sudo tee /sys/devices/system/cpu/cpu*/cpufreq/energy_performance_preference
	# This only applies to the iGPU. The dGPU lays in /card0
	echo $amdgpu_dpm_level | sudo tee  /sys/class/drm/card2/device/power_dpm_force_performance_level
}


dbus-monitor --system --profile "sender='$interface'" |
while read -r line; do
    echo $line | grep "PropertiesChanged" > /dev/null && updateEpp
done
