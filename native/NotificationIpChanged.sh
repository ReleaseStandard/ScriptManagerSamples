#
# notice user about ip change
#

ip="";

function httpResponse() {
   method="$1" ;
   body="$2" ;
   header="$3" ;
   nip="$body";
   if ! [ "$nip" = "$ip" ] ; then
      ip="$nip";
      showNotification "ip changed" "$ip at $(date)" ;
   fi
}
while true ; do
   http get https://ipinfo.io/ip ;
   sleep 10;
done
