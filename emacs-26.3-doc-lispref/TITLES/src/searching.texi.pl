#!/usr/bin/perl
# This script requires libintl-perl(>=0.90).
use Locale::TextDomain ("searching.texi" => "TITLES/");
my ($en, $ja);
while (<>) {
	($en, $ja) = (quotemeta('@chapter Searching and Matching'), __ '@chapter Searching and Matching'); s/$en/$ja/;
	($en, $ja) = (quotemeta('@section Searching for Strings'), __ '@section Searching for Strings'); s/$en/$ja/;
	($en, $ja) = (quotemeta('@section Searching and Case'), __ '@section Searching and Case'); s/$en/$ja/;
	($en, $ja) = (quotemeta('@section Regular Expressions'), __ '@section Regular Expressions'); s/$en/$ja/;
	($en, $ja) = (quotemeta('@subsection Syntax of Regular Expressions'), __ '@subsection Syntax of Regular Expressions'); s/$en/$ja/;
	($en, $ja) = (quotemeta('@subsubsection Special Characters in Regular Expressions'), __ '@subsubsection Special Characters in Regular Expressions'); s/$en/$ja/;
	($en, $ja) = (quotemeta('@subsubsection Character Classes'), __ '@subsubsection Character Classes'); s/$en/$ja/;
	($en, $ja) = (quotemeta('@subsubsection Backslash Constructs in Regular Expressions'), __ '@subsubsection Backslash Constructs in Regular Expressions'); s/$en/$ja/;
	($en, $ja) = (quotemeta('@subsection Complex Regexp Example'), __ '@subsection Complex Regexp Example'); s/$en/$ja/;
	($en, $ja) = (quotemeta('@subsection Regular Expression Functions'), __ '@subsection Regular Expression Functions'); s/$en/$ja/;
	($en, $ja) = (quotemeta('@section Regular Expression Searching'), __ '@section Regular Expression Searching'); s/$en/$ja/;
	($en, $ja) = (quotemeta('@section POSIX Regular Expression Searching'), __ '@section POSIX Regular Expression Searching'); s/$en/$ja/;
	($en, $ja) = (quotemeta('@section The Match Data'), __ '@section The Match Data'); s/$en/$ja/;
	($en, $ja) = (quotemeta('@subsection Replacing the Text that Matched'), __ '@subsection Replacing the Text that Matched'); s/$en/$ja/;
	($en, $ja) = (quotemeta('@subsection Simple Match Data Access'), __ '@subsection Simple Match Data Access'); s/$en/$ja/;
	($en, $ja) = (quotemeta('@subsection Accessing the Entire Match Data'), __ '@subsection Accessing the Entire Match Data'); s/$en/$ja/;
	($en, $ja) = (quotemeta('@subsection Saving and Restoring the Match Data'), __ '@subsection Saving and Restoring the Match Data'); s/$en/$ja/;
	($en, $ja) = (quotemeta('@section Search and Replace'), __ '@section Search and Replace'); s/$en/$ja/;
	($en, $ja) = (quotemeta('@section Standard Regular Expressions Used in Editing'), __ '@section Standard Regular Expressions Used in Editing'); s/$en/$ja/;
	print;
}
