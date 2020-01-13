sub countwords{
	my %hash = ();
	print "Please input some words.\n";
	chomp($text = <STDIN>);
	while(defined($text)){
		$hash{$text} = $hash{$text} + 1;
		chomp($text = <STDIN>);
	}
	while(($key,$value) = each %hash){
		print"$key => $value\n";
	}
}

countwords;
		