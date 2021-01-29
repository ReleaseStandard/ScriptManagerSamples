# EXPECTED OUTPUT
#
# 127.0.0.1
# 127.0.0.53
#

ip="";

while true ; do
   nip=$(curl https://ipinfo.io/ip 2> /dev/null);
   if ! [ "${nip}" = "${ip}" ] ; then
	echo "$nip";
   fi
   ip=$nip;
   sleep 10;
done
