QT.multimedia.enabled_features = 
QT.multimedia.disabled_features = 
QT.multimedia.QT_CONFIG = directshow evr wshellitem
QT.multimedia.exports = 
QT.multimedia_private.enabled_features = directshow directshow-player evr wshellitem
QT.multimedia_private.disabled_features = alsa wmf-player gpu_vivante gstreamer_1_0 gstreamer_0_10 gstreamer gstreamer_app gstreamer_encodingprofiles gstreamer_photography linux_v4l openal pulseaudio resourcepolicy wasapi wmf wmsdk
QT.multimedia_private.libraries = directshow
QMAKE_LIBS_DIRECTSHOW = -lstrmiids -ldmoguids -luuid -lmsdmo -lole32 -loleaut32
