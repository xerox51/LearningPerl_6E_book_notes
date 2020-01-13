print "Please iuput some sentences: \n";

@line = ();
while(defined($_ = <>)){
	chomp($_);
	if(/fred/){
		push @line,$_;
	}
}

print "Here the matched sentences: \n";
foreach(0..$#line){
	print "$line[$_]\n";
}
	
	
