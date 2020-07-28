#!/usr/bin/perl
# This script requires libintl-perl(>=0.90).
use Locale::TextDomain ("package.texi" => "TITLES/");
my ($en, $ja);
while (<>) {
	($en, $ja) = (quotemeta('@chapter Preparing Lisp code for distribution'), __ '@chapter Preparing Lisp code for distribution'); s/$en/$ja/;
	($en, $ja) = (quotemeta('@section Packaging Basics'), __ '@section Packaging Basics'); s/$en/$ja/;
	($en, $ja) = (quotemeta('@section Simple Packages'), __ '@section Simple Packages'); s/$en/$ja/;
	($en, $ja) = (quotemeta('@section Multi-file Packages'), __ '@section Multi-file Packages'); s/$en/$ja/;
	($en, $ja) = (quotemeta('@section Creating and Maintaining Package Archives'), __ '@section Creating and Maintaining Package Archives'); s/$en/$ja/;
	print;
}
