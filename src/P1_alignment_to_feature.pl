#!/usr/bin/perl -w
use POSIX;

if (@ARGV != 5 ) {
  print "Usage: <input> <output>\n";
  exit;
}

$aln = $ARGV[0];
$feature = $ARGV[1];
$target_list = $ARGV[2];
$sbatch_folder = $ARGV[3];
$output_folder = $ARGV[4];

open(TARNAME,"<$target_list") || die "Failed to read $target_list\n";
$c=0;
while (my $tar_name = <TARNAME>)
{
  chomp $tar_name;
  $c++;
  print "\n\n###########  processing taeget $tar_name  ###########\n";

  $runfile="$sbatch_folder/P1_run_sbatch_$c.sh";
  print "Generating $runfile\n";
  open(SH,">$runfile") || die "Failed to write $runfile\n";
  
  print SH "#!/bin/bash -l\n";
  print SH "#SBATCH -J  $tar_name\n";
  print SH "#SBATCH -o $tar_name-%j.out\n";
  print SH "#SBATCH --partition Lewis,hpc5\n";
  print SH "#SBATCH --nodes=1\n";
  print SH "#SBATCH --ntasks=1\n";
  print SH "#SBATCH --cpus-per-task=1\n";
  print SH "#SBATCH --mem-per-cpu=10G\n";
  print SH "#SBATCH --time 04:00:00\n";

  # cov80
  # cluster
  # metaclust50
  if ($feature eq "cov"){
    if ($aln eq "cov80"){  
      $aln_dir = "/storage/htc/bdm/DNCON4/feature/aln/hhblits/result/uniclust30_2018_08_hhb-cov80_aln/";
      print SH "/storage/htc/bdm/tianqi/DeepCov/bin/cov21stats $aln_dir/"."$tar_name"."_hhb-cov80.aln"." $output_folder/"."$tar_name".".cov\n";
    }
    elsif ($aln eq "cluster"){
      $aln_dir = "/storage/htc/bdm/DNCON4/feature/aln/cluster_aln/";
      print SH "/storage/htc/bdm/tianqi/DeepCov/bin/cov21stats $aln_dir/"."$tar_name".".aln"." $output_folder/"."$tar_name".".cov\n";
    }
    elsif ($aln eq "metaclust50"){
      # $aln_dir = "/storage/htc/bdm/DNCON4/feature/aln/hhb_jack_hhmsearch/hhb_jack_hhmsearch3_aln/"; # after casp
      $aln_dir = "/storage/htc/bdm/DNCON4/feature/aln/hhb_jack_hhmsearch/hhb_jack_hhmsearch3_uniclust30_2017_10/aln/"; #before casp
      print SH "/storage/htc/bdm/tianqi/DeepCov/bin/cov21stats $aln_dir/"."$tar_name".".aln"." $output_folder/"."$tar_name".".cov\n";
    }
  }
  elsif ($feature eq "plm"){
    if ($aln eq "cov80"){  
      $aln_dir = "/storage/htc/bdm/DNCON4/feature/aln/hhblits/result/uniclust30_2018_08_hhb-cov80_aln/";
      print SH "/storage/htc/bdm/tianqi/DNCON4/CCMpred/bin/ccmpred -t 8 $aln_dir/"."$tar_name"."_hhb-cov80.aln"." $output_folder/"."$tar_name".".mat"." $output_folder/"."$tar_name".".plm\n";
    }
    elsif ($aln eq "cluster"){
      $aln_dir = "/storage/htc/bdm/DNCON4/feature/aln/cluster_aln/";
      print SH "/storage/htc/bdm/tianqi/DNCON4/CCMpred/bin/ccmpred -t 8 $aln_dir/"."$tar_name".".aln"." $output_folder/"."$tar_name".".mat"." $output_folder/"."$tar_name".".plm\n";
    }
    elsif ($aln eq "metaclust50"){
      # $aln_dir = "/storage/htc/bdm/DNCON4/feature/aln/hhb_jack_hhmsearch/hhb_jack_hhmsearch3_aln/";
      $aln_dir = "/storage/htc/bdm/DNCON4/feature/aln/hhb_jack_hhmsearch/hhb_jack_hhmsearch3_uniclust30_2017_10/aln/"; #before casp
      print SH "/storage/htc/bdm/tianqi/DNCON4/CCMpred/bin/ccmpred -t 8 $aln_dir/"."$tar_name".".aln"." $output_folder/"."$tar_name".".mat"." $output_folder/"."$tar_name".".plm\n";
    }
  }

  close SH;
  
}

