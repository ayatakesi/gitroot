#!/bin/sh

WDIR=$(pwd)

cd ayatakesi.github.io
git pull || exit 1
cd -

for VER in $@
do
    REPO="emacs-${VER}-doc-lispref"
    URL=https://github.com/ayatakesi/${REPO}
    result=0
    git ls-remote ${URL} || result=$?
    if [ "${result}" = "0" ]; then
	if [ -e ${REPO} ]; then
	    rm -fr ${REPO}
	fi
	
	git clone ${URL}
	cd ${REPO}
	make all txt pdf tar epub texinfo-js
	cp -pfr \
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
done

cd ayatakesi.github.io
git add lispref/ &&
    git commit -m "Auto-update lispref at $(date)" &&
    git push -u origin master

cd -
