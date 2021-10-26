# Bahnishikha
# 26th Aug 2021
# Reversing DNA sequence

#open/creat the input file by name sample_sequence.fna
open FILE,"seq_reverse_input.fna" or die "error $!";

#creat output file by name seq_reverse_output.fna
open OUT,">","seq_reverse_output.txt" or die "error $!";

chomp(@seq=<FILE>);
shift(@seq);
$sequence=join("",@seq);
print OUT "sequence length =".length($sequence)."\n"."sequence is\t"."$sequence\n";

print OUT "reverse of the above sequence is:\n";

for($i=length($sequence)-1;$i>=0;$i--)
{
$nucleotide=substr($sequence,$i,1);
print OUT "$nucleotide";
}

close(FILE);
close(OUT);
