use autodie;
use feature "switch";

$offset = 33792;

open my $fh, '<:raw', './TOYBOXBLOCK2.bin';

my $bytes_read = read $fh, my $bytes, 21504;
die 'Got $bytes_read but expected 21504' unless $bytes_read == 21504;

$address = 0;

while ($address < 21504) {
	
	given($address) {
		when ($address==     0) { print "NSnare\n"; }
		when ($address==  3072) { print "NMid Tom\n"; }
		when ($address==  6144) { print "NLo Tom\n"; }
		when ($address==  9216) { print "NCowbell\n"; }
		when ($address== 11264) { print "NHiHat C\n"; }
		when ($address== 13312) { print "NHiHat O\n"; }
		when ($address== 16384) { print "NClaps\n"; }
		when ($address== 19456) { print "NKick\n"; }
	}
	

	given($address) {
		when ($address==  3071) { print "Z"; }
		when ($address==  6143) { print "Z"; }
		when ($address==  9215) { print "Z"; }
		when ($address== 11236) { print "Z"; }
		when ($address== 13311) { print "Z"; }
		when ($address== 16383) { print "Z"; }
		when ($address== 19455) { print "Z"; }
		when ($address== 21503) { print "Z"; }
		default 		{ print "M"; }
	}
	
	print " 8 ", $address+$offset, " ", ord(substr($bytes, $address, 1)), " 0\n";
	
	$address = $address + 1;
	
}
print "Y\n";

