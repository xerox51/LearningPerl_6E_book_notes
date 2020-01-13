use 5.010;
my $fred = greet("Fred");
my $Barney = greet("Barney");
my $Weng = greet("Weng");
my $Lee = greet("Lee");

sub greet{
	state @list;
	state $list;

	foreach my $list( @_ ){
		push @list,$list;
	}
	if($#list == 0){
		print "Hi $list[$_],You are the first one here!\n";
	}
	if($#list > 0){
		print "Hi $list[$#list]! I have seen: ";
		foreach(0..$#list-1){
			print "$list[$_] ";
		}
		print"\n";
	}	
}
	