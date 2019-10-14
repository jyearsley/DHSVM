#!C:\perl\bin\perl.exe
$data_file='rveg.baseline.network';
open DFILE,"$data_file";
print "$data_file\n";
$out_file = 'rveg.noriparian.network';
open RVEG, ">$out_file";
$new_segment = 0;
$value = 0.0;
$tree_ht = 10.0;
while (chomp($_=<DFILE>)) {
  ($segment,$dummy) = split/\s+/,$_;
  ++$new_segment;
  print RVEG "$new_segment";
  for $nv (1..16) {
    print RVEG "\t$value";
  }
  print RVEG "\t$tree_ht\n";
}
close DFILE;
close RVEG;
