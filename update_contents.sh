#!/bin/sh

WDIR=$(pwd)

cd ayatakesi.github.io
git pull || exit 1
cd -

VER=${1}; shift
while [ ${1}x != ""x ]
do
    REPO＝emacs-${VER}-doc-lispref
    URL=https://github.com/ayatakesi/${REPO}
    result=0
    git ls-remote ${URL} || result=$?
    if [ "$result"x = "0"x ]; then
	if [ -f ${REPO} ]; then
	    rm -fr ${REPO}
	fi
	
	git clone ${URL}
	cd ${REPO}
	make all txt pdf tar epub texinfo-js
	cp -pf \
	   elisp-ja.html \
	   html/ \
	   elisp-ja.info \
	   elisp-ja.txt \
	   elisp-ja.pdf \
	   elisp-ja.texis.tar.gz \
	   elisp-ja.epub \
	   elisp-ja-html/ \
	   ${WDIR}/ayatakesi.github.io/lispref/${VER}
	cd -
    fi

    VER=${1}; shift
done

cd ayatakesi.github.io
git add lispref/ &&
    git commit -m "Auto-update lispref at $(date)" &&
    git push -u origin master

cd -
