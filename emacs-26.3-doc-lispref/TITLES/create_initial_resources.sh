#!/bin/sh
# create perl script and its initial po to translate texi's titlestrings.
# assumes this script is rund in ${REPOROOT}
for TEXI in original_texis/*.texi
do
    BASE=$(basename ${TEXI});
    PERL=TITLES/src/${BASE}.pl;
    cat <<EOT >${PERL}
#!/usr/bin/perl
# This script requires libintl-perl(>=0.90).
use Locale::TextDomain ("${BASE}" => "TITLES/");
my (\$en, \$ja);
while (<>) {
EOT
    grep -E '^@((chapter)|((sub)*(section))|(appendix))' ${TEXI} |
	sed -r "s/'/\\\'/g" |
	sed -r "s|(.+)$|\t\(\$en, \$ja\) = \(quotemeta\('&'\), __ '&'\); s/\$en/\$ja/;|" >>${PERL};
    echo "\tprint;" >>${PERL}
    echo "}" >>${PERL}
    xgettext -L Perl -k__ -o TITLES/ja/LC_MESSAGES/${BASE}.po ${PERL}
done
