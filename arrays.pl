# arrays

@furniture = ("chair", "couch", "bed", "table", "loveseat");
print "@furniture\n";
print "$furniture[0]\n";
$furniture[0] = "armchair";
print "@{furniture}\n";
pop @furniture;
print "@{furniture}\n";
