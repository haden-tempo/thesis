#!/bin/bash
echo "<<<<<<<<<<<<<<<<<<<< Hi, today is $(date)"
cd /Users/haden/stanford/thesis
git add .
git commit -a -m "(auto save via cron)"
echo ">>>>>>>>>>>>>>>>>>>>> Bye, it is $(date)"
echo "."
