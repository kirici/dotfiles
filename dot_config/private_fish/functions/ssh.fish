 function ssh-insecure --description '-o UserKnownHostsFile=/dev/null -o StrictHostKeyChecking=no'
    ssh -o UserKnownHostsFile=/dev/null -o StrictHostKeyChecking=no $argv
end
