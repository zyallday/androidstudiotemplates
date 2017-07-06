#!/bin/bash

echo "Installing Android Templates"

CONFIGS="$( cd "$( dirname "${BASH_SOURCE[0]}" )" && pwd )/Templates"

echo $CONFIGS


for i in /Applications/Android\ Studio*.app/Contents/plugins/android/lib/templates/
do
	# echo $i
	if [[ -d $i ]]; then
		echo "Find Templates Directories"
		echo  "Copy templates to $i"
		cp -frv "$CONFIGS"/* "$i"/other/
	fi
done



echo "Done"
echo ""
echo "Restart Android Studio..."