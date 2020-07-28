#!/usr/bin/perl
# This script requires libintl-perl(>=0.90).
use Locale::TextDomain ("elisp.texi" => "TITLES/");
my ($en, $ja);
while (<>) {
	($en, $ja) = (quotemeta('@appendix GNU Free Documentation License'), __ '@appendix GNU Free Documentation License'); s/$en/$ja/;
	($en, $ja) = (quotemeta('@appendix GNU General Public License'), __ '@appendix GNU General Public License'); s/$en/$ja/;
	print;
}
