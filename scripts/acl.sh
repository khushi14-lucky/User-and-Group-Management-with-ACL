#!/bin/bash
# ACL (Access Control List) setup example

# Create a test file
touch /home/suhail/testfile_acl.txt

# Set owner and group
sudo chown suhail:developers /home/suhail/testfile_acl.txt

# Set basic permissions
sudo chmod u+rwx,g+rw,o-rwx /home/suhail/testfile_acl.txt

# Add ACL for a specific user (lucky) with full permissions
sudo setfacl -m u:lucky:rwx /home/suhail/testfile_acl.txt

# Add ACL for another user (lucky) with read-only permissions
sudo setfacl -m u:lucky:r-- /home/suhail/testfile_acl.txt

# Verify ACLs
getfacl /home/suhail/testfile_acl.txt

# Show owner and permissions
ls -l /home/suhail/testfile_acl.txt
