use autodie;
use feature "switch";

$offset = 33792;

open my $fh, '<:raw', './TOYBOXBLOCK2.bin';

my $bytes_read = read $fh, my $bytes, 21504;

close $fh;

die 'Got $bytes_read but expected 21504' unless $bytes_read == 21504;



$address = 0;

while ($address < 21504) {

	
	given($address) {
		when ($address==     0) { open( $fh, '>','Snare.pok'  ); print $fh "NSnare\n";		}
		when ($address==  3072) { open( $fh, '>','MidTom.pok' ); print $fh "NMid Tom\n";	}
		when ($address==  6144) { open( $fh, '>','LoTom.pok'  ); print $fh "NLo Tom\n";	}
		when ($address==  9216) { open( $fh, '>','Cowbell.pok'); print $fh "NCowbell\n";	}
		when ($address== 11264) { open( $fh, '>','HiHatC.pok' ); print $fh "NHiHat C\n";	}
		when ($address== 13312) { open( $fh, '>','HiHatO.pok' ); print $fh "NHiHat O\n";	}
		when ($address== 16384) { open( $fh, '>','Claps.pok'  ); print $fh "NClaps\n";		}
		when ($address== 19456) { open( $fh, '>','Kick.pok'   ); print $fh "NKick\n";		}
	}
	
	$last = 1;
	given($address) {
		when ($address==  3071) { print $fh "Z"; }
		when ($address==  6143) { print $fh "Z"; }
		when ($address==  9215) { print $fh "Z"; }
		when ($address== 11236) { print $fh "Z"; }
		when ($address== 13311) { print $fh "Z"; }
		when ($address== 16383) { print $fh "Z"; }
		when ($address== 19455) { print $fh "Z"; }
		when ($address== 21503) { print $fh "Z"; }
		default 		{ $last = 0; print $fh "M"; }
	}
	
	print $fh " 8 ", $address+$offset, " ", ord(substr($bytes, $address, 1)), " 0\n";

	if ($last) {
		print $fh "Y\n";
		close $fh;
	}
	
	$address = $address + 1;
	
}


