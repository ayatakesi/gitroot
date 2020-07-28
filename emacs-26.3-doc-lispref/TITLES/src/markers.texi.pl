#!/usr/bin/perl
# This script requires libintl-perl(>=0.90).
use Locale::TextDomain ("markers.texi" => "TITLES/");
my ($en, $ja);
while (<>) {
	($en, $ja) = (quotemeta('@chapter Markers'), __ '@chapter Markers'); s/$en/$ja/;
	($en, $ja) = (quotemeta('@section Overview of Markers'), __ '@section Overview of Markers'); s/$en/$ja/;
	($en, $ja) = (quotemeta('@section Predicates on Markers'), __ '@section Predicates on Markers'); s/$en/$ja/;
	($en, $ja) = (quotemeta('@section Functions that Create Markers'), __ '@section Functions that Create Markers'); s/$en/$ja/;
	($en, $ja) = (quotemeta('@section Information from Markers'), __ '@section Information from Markers'); s/$en/$ja/;
	($en, $ja) = (quotemeta('@section Marker Insertion Types'), __ '@section Marker Insertion Types'); s/$en/$ja/;
	($en, $ja) = (quotemeta('@section Moving Marker Positions'), __ '@section Moving Marker Positions'); s/$en/$ja/;
	($en, $ja) = (quotemeta('@section The Mark'), __ '@section The Mark'); s/$en/$ja/;
	($en, $ja) = (quotemeta('@section The Region'), __ '@section The Region'); s/$en/$ja/;
	print;
}
