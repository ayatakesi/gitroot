#!/usr/bin/perl
# This script requires libintl-perl(>=0.90).
use Locale::TextDomain ("hooks.texi" => "TITLES/");
my ($en, $ja);
while (<>) {
	($en, $ja) = (quotemeta('@appendix Standard Hooks'), __ '@appendix Standard Hooks'); s/$en/$ja/;
	print;
}
