# EXPECTED OUTPUT
#
#
#[Wed Jan 27 20:43:44 CET 2021] Message "Hi there" received from +33600000000
#




function smsReceived () {
   from="$1";
   body="$2";
   echo "[$(date)] Message \"$body\" received from $from" ;
}



