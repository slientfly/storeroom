#！usr/bin/perl
#User of Employee.pm--See Example 14.9 for module
use Employee;
use warnings;
use strict;
my ($name,$extension,$address,$basepay,$employee);
print "Enter the employee's name. ";
chomp($name=<STDIN>);
print "Enter the employee's phone extension. ";
chomp($extension=<STDIN>);
print "Enter the employee's address. ";
chomp($address=<STDIN>);
print "Enter the employee's basepay. ";
chomp($basepay=<STDIN>);
$employee=Employee->new("Name"=>$name,
						"Address"=>$address,
						"Extension"=>$extension,
						"Paycheck"=>$basepay,);
print "\nThe statistics for $name are: \n";
$employee->get_stats;