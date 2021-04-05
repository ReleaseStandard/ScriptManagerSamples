#####################################################################
#                                                                   #
#                                                                   #
#                 Count & report APs 5 first APs                    #
#                 Prerequisite: enable wifi                         #
#                                                                   #
#####################################################################

ap_count=0;

function wifiGetScanResultsRecv() {
	let ap_count=ap_count+1;
	if [ "$ap_count" -lt "5" ] ; then
		notification show "AP found" "$1";
	fi
}

wifi getScanResults;
notification show "Reporter" "I've found ${ap_count} aps";
