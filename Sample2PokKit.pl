use autodie;
use feature "switch";

$offset = 33792;

open my $fh, '<:raw', './TOYBOXBLOCK2.bin';

my $bytes_read = read $fh, my $bytes, 21504;
die 'Got $bytes_read but expected 21504' unless $bytes_read == 21504;

$address = 0;

while ($address < 21504) {
	
	given($address) {
		when ($address==     0) { print "NLewins Kit\n"; }
	}
	

	given($address) {
		when ($address== 21503) { print "Z"; }
		default 		{ print "M"; }
	}
	
	print " 8 ", $address+$offset, " ", ord(substr($bytes, $address, 1)), " 0\n";
	
	$address = $address + 1;
	
}
print "Y\n";

