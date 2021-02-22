VERSION=0.1-Alpha

if [ ! -d "old" ]; then
	mkdir old
fi

mv *.zip old/

DATE=`date --date='0 days ago' "+%Y-%m-%d"`
TIME=`date --date='0 days ago' "+%H:%M:%S"`

DATE2=`date --date='0 days ago' "+%Y%m%d"`

HOST=`hostname`
ME=`whoami`

echo "id=kmou424_miui_mod
name=kmou424 MIUI Mod
version=${VERSION}(${DATE} ${TIME})
versionCode=1
author=kmou424
description=kmou424的自用功能性集合Magisk模块 for MIUI。 Build on $HOST@$ME" > module.prop

zip -r -0 kmou424_MIUI_mod_${VERSION}_${DATE2}.zip * -x "pack.sh" ".gitignore" "*.zip" "*.bak" "old/"

rm -rf module.prop