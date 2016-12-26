#!/usr/bin/perl

# first, we open the grades.txt file and assign it to the grades I/O stream.
# This is similiar to how in bash, we can create new FDs for streams.
# The 'die' built-in implements a simple exception-handling system.
open(GRADES, "grades.txt") or die "Can't open grades: $!\n";

# This while loop reads the grades io stream into the $lines scalar.
# The lines are read-in one at a time, seperated on the \n.
# An unnamed list is created, emulating the while + read bash built-in
while ($line = <GRADES>) {
    ($student, $grade) = split(" ", $line);
    # This creates/increments a hash called "%grades"
    # The book has not covered how incrementing hashes works yet.
    # %grades stores student name keys and numerous grade values.
    $grades{$student} .= $grade . " ";
}

# the loop runs through a sorted list of students from %grades.
# $scores & $total are initialized/sanitized for incrementing
# each student in the hash is assigned to a recycled @grades array
# then averaging occurs, and lastly the results of the averaging are printed.
foreach $student (sort keys %grades) {
    $scores = 0;
    $total = 0;
    @grades = split(" ", $grades{$student});
    foreach $grade (@grades) {
        $total += $grade;
        $scores++;
    }
    $average = $total / $scores;
    print "$student: $grades{$student}\tAverage: $average\n";
}
