#!/bin/sh

# build scripts require "python" in the PATH -- Sonoma has python3.
# in order to successfully build, a "python" has to be installed in /usr/local/bin  which runs python3

# arm7 architecture fails to build
# it's OK if this never works

# rm -rf build_xcframework

# python3 opencv/platforms/apple/build_xcframework.py --out ./build_xcframework --debug \
#  --contrib opencv_contrib --framework_name=OpenCV --build_only_specified_archs \
#  --iphoneos_archs "arm64" --iphoneos_deployment_target "16.0" \
#  --catalyst_archs "arm64" \
#  --without dnn \

# cd build_xcframework/OpenCV.xcframework
# rm */OpenCV.framework/Modules


python3 opencv/platforms/apple/build_xcframework.py \
    --out ./build_xcframework \
    --contrib opencv_contrib \
    --framework_name=OpenCV \
    --build_only_specified_archs \
    --iphoneos_archs "arm64" \
    --iphoneos_deployment_target "16.0" \
    --catalyst_archs "arm64" \
    --without calib3d \
    --without features2d \
    --without flann \
    --without highgui \
    --without video \
    --without videoio \
    --without objdetect \
    --without photo \
    --without stitching \
    --without dnn \
    --without gapi \
    --without ml \
    --without ts \