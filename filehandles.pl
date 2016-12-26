# filehandles

# copied straight from Programming Perl:

# open(SESAME, "filename")               # read from existing file
# open(SESAME, "<filename")              #   (same thing, explicitly)
# open(SESAME, ">filename")              # create file and write to it
# open(SESAME, ">>filename")             # append to existing file
# open(SESAME, "| output-pipe-command")  # set up an output filter
# open(SESAME, "input-pipe-command |")   # set up an input filter

print STDOUT "Enter a number: ";         # ask for a number
$first_num = <STDIN>;                    # input the number
chop($first_num);                        # remove newline

# alternately, this can be done in a two line
print STDOUT "Enter another number: ";   # ask for a number
chop($sec_num = <STDIN>);                # input number and remove newline

# print the results
print STDOUT "The numbers are ${first_num} and ${sec_num}.\n";
