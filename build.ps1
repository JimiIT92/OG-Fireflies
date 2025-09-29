#Variables
$VERSION = "1.0"
$MC_VERSION = "1.21.9"
$NAME = "OG Fireflies"
$PACK_EXTENSION = "v"+$VERSION+"-"+$MC_VERSION+".zip"
$RESOURCE_PACK_PATH = $NAME+"-"+$PACK_EXTENSION

Remove-Item $RESOURCE_PACK_PATH -Force

Compress-Archive -force "./assets" $RESOURCE_PACK_PATH
Compress-Archive -update "pack.mcmeta" $RESOURCE_PACK_PATH
Compress-Archive -update "pack.png" $RESOURCE_PACK_PATH