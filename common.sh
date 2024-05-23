initial_check()
{
if [-z $1]; then
  echo "provide password along with script"
fi
}

exit_status()
{
    if [$? -eq "0"]; then
      echo "success"
    else
      echo "there is a command failure"
      exit 1
    fi
}




  