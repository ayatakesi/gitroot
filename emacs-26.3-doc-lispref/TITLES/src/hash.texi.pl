#!/usr/bin/perl
# This script requires libintl-perl(>=0.90).
use Locale::TextDomain ("hash.texi" => "TITLES/");
my ($en, $ja);
while (<>) {
	($en, $ja) = (quotemeta('@chapter Hash Tables'), __ '@chapter Hash Tables'); s/$en/$ja/;
	($en, $ja) = (quotemeta('@section Creating Hash Tables'), __ '@section Creating Hash Tables'); s/$en/$ja/;
	($en, $ja) = (quotemeta('@section Hash Table Access'), __ '@section Hash Table Access'); s/$en/$ja/;
	($en, $ja) = (quotemeta('@section Defining Hash Comparisons'), __ '@section Defining Hash Comparisons'); s/$en/$ja/;
	($en, $ja) = (quotemeta('@section Other Hash Table Functions'), __ '@section Other Hash Table Functions'); s/$en/$ja/;
	print;
}
