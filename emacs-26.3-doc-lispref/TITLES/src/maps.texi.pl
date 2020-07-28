#!/usr/bin/perl
# This script requires libintl-perl(>=0.90).
use Locale::TextDomain ("maps.texi" => "TITLES/");
my ($en, $ja);
while (<>) {
	($en, $ja) = (quotemeta('@appendix Standard Keymaps'), __ '@appendix Standard Keymaps'); s/$en/$ja/;
	print;
}
