my @fred = above_average(1..10);
print "\@fred is @fred\n";
print "(Should be 6 7 8 9 10)\n";
my @barney = above_average(100,1..10);
print "\@barney is @barney\n";
print "(Should be just 100)\n";

sub average{
	$sum = 0;
	my @list = @_;
	foreach(0..$#list){
		$sum = $sum + $list[$_];
	}
	$average = $sum / ($#list+1);
}

sub above_average{
	@array = ();
	my @list = @_;
	foreach(0..$#list){
		if($list[$_] > &average(@list)){
			push @array,$list[$_];
		}
	}
	@array;
}
