function smsReceived() {
   from="$1";
   body="$2";
   showNotification "msg recv" "$body from $from" "lock" ;
}
