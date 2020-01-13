use 5.010;
my $fred = greet("Fred");
my $Barney = greet("Barney");
my $Weng = greet("Weng");

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
		print "Hi $list[$#list]! $list[$#list-1] is also here!\n";
	}
}
	