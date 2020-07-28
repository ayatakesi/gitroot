#!/usr/bin/perl
# This script requires libintl-perl(>=0.90).
use Locale::TextDomain ("help.texi" => "TITLES/");
my ($en, $ja);
while (<>) {
	($en, $ja) = (quotemeta('@chapter Documentation'), __ '@chapter Documentation'); s/$en/$ja/;
	($en, $ja) = (quotemeta('@section Documentation Basics'), __ '@section Documentation Basics'); s/$en/$ja/;
	($en, $ja) = (quotemeta('@section Access to Documentation Strings'), __ '@section Access to Documentation Strings'); s/$en/$ja/;
	($en, $ja) = (quotemeta('@section Substituting Key Bindings in Documentation'), __ '@section Substituting Key Bindings in Documentation'); s/$en/$ja/;
	($en, $ja) = (quotemeta('@section Text Quoting Style'), __ '@section Text Quoting Style'); s/$en/$ja/;
	($en, $ja) = (quotemeta('@section Describing Characters for Help Messages'), __ '@section Describing Characters for Help Messages'); s/$en/$ja/;
	($en, $ja) = (quotemeta('@section Help Functions'), __ '@section Help Functions'); s/$en/$ja/;
	print;
}
