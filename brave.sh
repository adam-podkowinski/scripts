# brave-nightly --disable-features=WaylandFractionalScaleV1 --enable-features=VaapiVideoEncoder,VaapiVideoDecoder,CanvasOopRasterization $1
brave --enable-features=TouchpadOverscrollHistoryNavigation,VaapiVideoEncoder,VaapiVideoDecoder,CanvasOopRasterization --ozone-platform=wayland --enable-gpu-rasterization --enable-zero-copy $1 $2
# brave-nightly $1 $2
