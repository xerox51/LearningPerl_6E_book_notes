print "Please input some strings:\n";
chomp(@line = <STDIN>);
@output = sort @line;
foreach $index(0..$#output){
	print "$output[$index] ";
}