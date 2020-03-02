#!/bin/sh

# usage
# apply-new-translation.sh NEWDIR OLDDIR [sha1 sha2]
#
# NEWDIR: this directory includes po files that has already fixed msgstr. 
# OLDDIR: this directory includes po files that has not fixed yet msgstr.
# [sha1 sha2]: NEWDIR's git SHA(before and after of fixing).
#              needed to decide modified po files.
#              if not specified run git diff --name-only (without sha arguments)
#    |

WDIR=$(pwd)
NEWDIR=${WDIR}/${1}
OLDDIR=${WDIR}/${2}
if [ "${3}x" != "x" ] && [ "${4}x" == "x" ]
then
    SHA1=${3}
    SHA2=${4}
else
    cd ${NEWDIR}
    SHA1=$(git log -n 2 --pretty=%H | head -1)
    SHA2=$(git log -n 2 --pretty=%H | tail -1)
    cd -
fi

cd ${NEWDIR}
FILES=$(git diff --name-only ${SHA1} ${SHA2}| grep .po$)

cd ${OLDDIR}
for PO in ${FILES}
do
    TEXI=$(echo ${PO}|cut -d . -f -2)
    msgcat -o ${WDIR}/compendium.po --use-first ${NEWDIR}/${PO} ${OLDDIR}/${PO}
    po4a-gettextize -M utf8 -f texinfo -m original_texis/${TEXI} -p ${PO}t
    msgmerge --previous --compendium ${WDIR}/compendium.po -o - /dev/null ${PO}t | \
	msgcat --no-wrap -o ${PO} -
    rm -f ${PO}t
done
rm -f ${WDIR}/compendium.po

if [ -d .git ]
then
    git add *.po
    git commit -m \
	"apply ayatakesi/$(basename ${NEWDIR})/${SHA1}"
fi
