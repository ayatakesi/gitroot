#!/usr/bin/perl
# This script requires libintl-perl(>=0.90).
use Locale::TextDomain ("sequences.texi" => "TITLES/");
my ($en, $ja);
while (<>) {
	($en, $ja) = (quotemeta('@chapter Sequences, Arrays, and Vectors'), __ '@chapter Sequences, Arrays, and Vectors'); s/$en/$ja/;
	($en, $ja) = (quotemeta('@section Sequences'), __ '@section Sequences'); s/$en/$ja/;
	($en, $ja) = (quotemeta('@section Arrays'), __ '@section Arrays'); s/$en/$ja/;
	($en, $ja) = (quotemeta('@section Functions that Operate on Arrays'), __ '@section Functions that Operate on Arrays'); s/$en/$ja/;
	($en, $ja) = (quotemeta('@section Vectors'), __ '@section Vectors'); s/$en/$ja/;
	($en, $ja) = (quotemeta('@section Functions for Vectors'), __ '@section Functions for Vectors'); s/$en/$ja/;
	($en, $ja) = (quotemeta('@section Char-Tables'), __ '@section Char-Tables'); s/$en/$ja/;
	($en, $ja) = (quotemeta('@section Bool-vectors'), __ '@section Bool-vectors'); s/$en/$ja/;
	($en, $ja) = (quotemeta('@section Managing a Fixed-Size Ring of Objects'), __ '@section Managing a Fixed-Size Ring of Objects'); s/$en/$ja/;
	print;
}
