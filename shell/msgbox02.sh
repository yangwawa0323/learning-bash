#!/bin/bash


MESSAGE=$( cat /etc/passwd | grep '^[pmd]'  )

dialog --msgbox "$MESSAGE" 10 50
