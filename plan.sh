pkg_origin=chasebolt
pkg_name=mono
pkg_version=4.4.0.182
pkg_maintainer="Chase Bolt <chase.bolt@gmail.com>"
pkg_license=()
pkg_source=http://download.mono-project.com/sources/mono/mono-${pkg_version}.tar.bz2
pkg_dirname=mono-4.4.0
pkg_shasum=983e27a054bc3dc6709b32b8de45a0f4335e9e9c3911b20d29f63eb7cc00bfe5
pkg_deps=()
pkg_build_deps=(core/gcc core/gcc-libs core/make core/autoconf core/libtool core/automake core/diffutils core/file core/perl core/python2)
pkg_bin_dirs=(bin)
pkg_include_dirs=(include)
pkg_lib_dirs=(lib)

do_build() {
  ./configure --prefix=${pkg_prefix} \
    --enable-nls=no
  make
}
