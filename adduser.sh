#!/bin/bash

# Set the common password for all users
password="password"

# Loop through usernames TLAgent-1 to TLAgent-7
for i in {1..5}
do
    username="Intersection_$i@localhost"
    echo "Adding user: $username"

    # Use prosodyctl command to add the user and provide password
    echo -e "$password\n$password" | prosodyctl adduser "$username"
done

for i in {1..16}
do
    username="TLAgent-$i@localhost"
    echo "Adding user: $username"

    # Use prosodyctl command to add the user and provide password
    echo -e "$password\n$password" | prosodyctl adduser "$username"
done

for i in {1..20}
do
    username="Vehicle-$i@localhost"
    echo "Adding user: $username"

    # Use prosodyctl command to add the user and provide password
    echo -e "$password\n$password" | prosodyctl adduser "$username"
done

for i in {1..2}
do
    username="EmergencyVehicle-$i@localhost"
    echo "Adding user: $username"

    # Use prosodyctl command to add the user and provide password
    echo -e "$password\n$password" | prosodyctl adduser "$username"
done

username="CentralControl@localhost"
echo "Adding user: $username"

# Use prosodyctl command to add the user and provide password
echo -e "$password\n$password" | prosodyctl adduser "$username"

echo "User creation completed."
