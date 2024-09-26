#! /bin/bash

# Check CIS 1.1.1.1 | Ensure mounting of cramfs filesystems is disabled
if [ `lsmod | grep -c cramfs` != 0 ]; then  "modprobe -n -v cramfs | grep -E '(cramfs|install)'"; else echo "CIS 1.1.1.1 OK"; fi

# Check CIS 1.1.1.2 | Ensure mounting of squashfs filesystems is disabled
if [ `lsmod | grep -c squashfs` != 0 ]; then  "modprobe -n -v squashfs | grep -E '(squashfs|install)'"; else echo "CIS 1.1.1.2 OK"; fi

# Check CIS 1.1.1.3 | Ensure mounting of udf filesystems is disabled
if [ `lsmod | grep -c udf` != 0 ]; then  "modprobe -n -v udf | grep -E '(udf|install)'"; else echo "CIS 1.1.1.3 OK"; fi

# Check CIS 1.1.10 | Ensure mounting of usb-storage is disabled
"modprobe -n -v usb-storage | grep -E '(usb-storage|install)'"
