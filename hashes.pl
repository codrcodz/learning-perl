# hashes aka associative arrays (like in bash!)

# Method 1

%days = ( "Sun", "Sunday", "Mon", "Monday", "Tue", "Tuesday");
print %{days}, "\n";
print "%days", "\n";

# Method 2... now with "syntactic sugar" for readability
%days = (
    "Sun" => "Sunday",
    "Mon" => "Monday",
    "Tue" => "Tuesday"
);
print %days, "\n";
print $days{"Tue"}, "\n";
# nested, ragged arrays, like in Java!
$linux{"deb"} = {
    "debian" => [ "wheezy", "jessie"],
    "ubuntu" => [ "trusty", "lucid", "xenial"]
};
$linux{"rpm"} = {
    "rhel" => [ "5", "6", "7" ],
    "centos" => [ "5", "6", "7" ]
};
print %linux, "\n";
$os_version = $linux{"rpm"}{"centos"}[2];
print $os_version, "\n";
