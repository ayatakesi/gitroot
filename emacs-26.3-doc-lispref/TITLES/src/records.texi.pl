#!/usr/bin/perl
# This script requires libintl-perl(>=0.90).
use Locale::TextDomain ("records.texi" => "TITLES/");
my ($en, $ja);
while (<>) {
	($en, $ja) = (quotemeta('@chapter Records'), __ '@chapter Records'); s/$en/$ja/;
	($en, $ja) = (quotemeta('@section Record Functions'), __ '@section Record Functions'); s/$en/$ja/;
	($en, $ja) = (quotemeta('@section Backward Compatibility'), __ '@section Backward Compatibility'); s/$en/$ja/;
	print;
}
