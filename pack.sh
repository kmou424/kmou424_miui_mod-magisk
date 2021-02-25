VERSION=0.4-RC1
SUBVERSION=-debug

if [ -f *.zip ]; then
  if [ ! -d "old" ]; then
	  mkdir old
  fi
  mv *.zip old/
fi

DATE=$(date "+%Y%m%d")
HOST=$(hostname)
ME=$(whoami)

if [[ $1 == release ]];then
SUBVERSION=-release
fi

echo "id=kmou424_miui_mod
name=kmou424 MIUI Mod
version=${VERSION}${SUBVERSION}(${DATE})
versionCode=1
author=kmou424
description=kmou424的自用功能性集合Magisk模块 for MIUI。 Build on $HOST@$ME" > module.prop

zip -r -0 kmou424_MIUI_mod_${VERSION}${SUBVERSION}_${DATE}.zip * -x "pack.sh" ".gitignore" "*.zip" "*.bak" "old/"

rm -rf module.prop