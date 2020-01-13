my @fred = qw{1 3 5 7 9};
my $fred_total = total(@fred);
print "The total of \@fred is $fred_total.\n";
print "Enter some numbers on separate lines:";
my $user_total = total(<STDIN>);
print "The total of those numbers is $user_total.\n";
my @numbers = (1..1000);
my $result = total(@numbers);
print "The total of 1 to 1000 is $result.\n";

sub total{
	$sum = 0;
	my @array = @_;
	foreach(0..$#array){
		$sum = $sum + $array[$_];
	}
	$sum;
}