#!/bin/sh

ROOT=$(pwd)
BASE_VERSION=${1}; shift
while [ ${1}x != ""x ]
do
    NEW_VERSION=${1}
    cd emacs-${NEW_VERSION}-doc-lispref
    cp -pf ${ROOT}/emacs-${BASE_VERSION}-doc-lispref/replace.sh .
    for TEXI in original_texis/*.texi
    do
	TEXI=$(basename ${TEXI})
	if [ -f ${ROOT}/emacs-${BASE_VERSION}-doc-lispref/${TEXI}.po ]
	then
	    
	    if [ -f ${TEXI}.po ]
	    then
		msgcat --use-first -o ${TEXI}.po.compendium \
		       ${ROOT}/emacs-${BASE_VERSION}-doc-lispref/${TEXI}.po \
		       ${TEXI}.po
	    else
		cp -p \
		   ${ROOT}/emacs-${BASE_VERSION}-doc-lispref/${TEXI}.po \
		   ${TEXI}.po.compendium
	    fi
	
	    po4a-gettextize -M utf8 -f texinfo -m original_texis/${TEXI} -p ${TEXI}.pot
	    msgmerge --previous \
		     --compendium ${TEXI}.po.compendium \
		     -o - /dev/null ${TEXI}.pot | msgcat --no-wrap -o ${TEXI}.po -
	    rm -f ${TEXI}.pot ${TEXI}.po.compendium
	fi
    done
    make all
    cp -prf html/ elisp-ja.html elisp-ja.info ../ayatakesi.github.io/lispref/${NEW_VERSION}
    make clean
    cd -
    shift
done
