#!/usr/bin/perl
# This script requires libintl-perl(>=0.90).
use Locale::TextDomain ("eval.texi" => "TITLES/");
my ($en, $ja);
while (<>) {
	($en, $ja) = (quotemeta('@chapter Evaluation'), __ '@chapter Evaluation'); s/$en/$ja/;
	($en, $ja) = (quotemeta('@section Introduction to Evaluation'), __ '@section Introduction to Evaluation'); s/$en/$ja/;
	($en, $ja) = (quotemeta('@section Kinds of Forms'), __ '@section Kinds of Forms'); s/$en/$ja/;
	($en, $ja) = (quotemeta('@subsection Self-Evaluating Forms'), __ '@subsection Self-Evaluating Forms'); s/$en/$ja/;
	($en, $ja) = (quotemeta('@subsection Symbol Forms'), __ '@subsection Symbol Forms'); s/$en/$ja/;
	($en, $ja) = (quotemeta('@subsection Classification of List Forms'), __ '@subsection Classification of List Forms'); s/$en/$ja/;
	($en, $ja) = (quotemeta('@subsection Symbol Function Indirection'), __ '@subsection Symbol Function Indirection'); s/$en/$ja/;
	($en, $ja) = (quotemeta('@subsection Evaluation of Function Forms'), __ '@subsection Evaluation of Function Forms'); s/$en/$ja/;
	($en, $ja) = (quotemeta('@subsection Lisp Macro Evaluation'), __ '@subsection Lisp Macro Evaluation'); s/$en/$ja/;
	($en, $ja) = (quotemeta('@subsection Special Forms'), __ '@subsection Special Forms'); s/$en/$ja/;
	($en, $ja) = (quotemeta('@subsection Autoloading'), __ '@subsection Autoloading'); s/$en/$ja/;
	($en, $ja) = (quotemeta('@section Quoting'), __ '@section Quoting'); s/$en/$ja/;
	($en, $ja) = (quotemeta('@section Backquote'), __ '@section Backquote'); s/$en/$ja/;
	($en, $ja) = (quotemeta('@section Eval'), __ '@section Eval'); s/$en/$ja/;
	print;
}
