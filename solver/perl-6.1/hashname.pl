sub output_lastname{
	my %hash = ('fred' => 'flintstone','barney' => 'rubble','wilma' => 'flintstone');
	print "Please input your firtname: \n";
	chomp($text = <STDIN>);
	if(exists $hash{$text}){
		print "Hey, your lastname is $hash{$text}.\n";
		}
	else{
		print "No one called $text.\n";
	}
}

output_lastname;
	