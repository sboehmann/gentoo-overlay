# Copyright 1999-2020 Gentoo Authors
# Distributed under the terms of the GNU General Public License v2

EAPI=7

DESCRIPTION="MeVisLab compatibility library"
HOMEPAGE="https://www.mevislab.de"
LICENSE="MIT"
SLOT="0"
KEYWORDS="~amd64"
S="${WORKDIR}"

DEPEND=" media-libs/libglvnd"

src_install() {
    dodir /usr/lib/x86_64-linux-gnu
    dosym /usr/lib64/libEGL.so.1 /usr/lib/x86_64-linux-gnu/libEGL.so
    dosym /usr/lib64/libGL.so.1 /usr/lib/x86_64-linux-gnu/libGL.so
}
