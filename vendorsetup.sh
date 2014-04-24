# This whole script is a hack. Hoping to replace it soon.
if [ ! -z "$JENKINS_HOME" ]
then
	DEVICE_NAME=${LUNCH#*_} DEVICE_NAME=${DEVICE_NAME%-*}
	if [ "$DEVICE_NAME" == "p700" ]
	then
		sh device/lge/p700/patches/apply.sh
	fi
fi