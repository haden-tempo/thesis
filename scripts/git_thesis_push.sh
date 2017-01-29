#!/bin/bash
echo "<<<<<<<<<<<<<<<<<<<< Hi, today is $(date)"
cd /Users/haden/stanford/thesis
eval "$(ssh-agent -s)"
ssh-add /USers/haden/.ssh/thesisgit
git push origin master
kill $SSH_AGENT_PID
echo ">>>>>>>>>>>>>>>>>>>>> Bye, it is $(date)"
echo "."
