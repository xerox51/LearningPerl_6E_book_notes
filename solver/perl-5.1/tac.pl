@list = reverse(@ARGV);
foreach(0..$#list){
	@line = ();

	while(defined($line = <>)){
		chomp($line);
		push @line,$line;
	}

	@array = reverse(@line);

	foreach(0..$#array){
	print "$array[$_]\n";
	}
}