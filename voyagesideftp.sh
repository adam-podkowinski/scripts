#!/bin/sh
rclone mount --exclude=".git/" --vfs-cache-mode full --vfs-write-back 2 voyageside:public_html/wp-content/themes/voy ~/PhpstormProjects/voyageside/themes/voy
