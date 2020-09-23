#!/bin/bash

curdir="$(pwd)"
rootdir="$(realpath $(dirname ${0}))"

install_dir="${rootdir}/install"
echo ${rootdir}
echo ${install_dir}
#exit 0;

cd "${rootdir}/build"

cmake ../clone/ceres-solver/ \
      -DBUILD_SHARED_LIBS=ON \
      -DCMAKE_INSTALL_PREFIX="${install_dir}"

make -j4 -l4
make install -j4 -l4

cd "${curdir}"
