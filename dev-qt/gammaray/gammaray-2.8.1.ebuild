# Copyright 1999-2017 Gentoo Foundation
# Distributed under the terms of the GNU General Public License v2
# $Header: $

EAPI=5

inherit cmake-utils git-r3

DESCRIPTION="Tool to poke around in a Qt-application and also to manipulate the application to some extent"
HOMEPAGE="http://www.kdab.com/gammaray"
EGIT_REPO_URI="git://github.com/KDAB/GammaRay.git"
EGIT_COMMIT="v2.8.1"
EGIT_CLONE_TYPE="single"

LICENSE="GPL-2+"
SLOT="0"
KEYWORDS="~amd64 ~x86"

IUSE="doc git wayland kde"
REQUIRED_USE=""

RDEPEND="
    media-gfx/graphviz
    dev-qt/qtcore:5
    dev-qt/qtgui:5
    dev-qt/qtconcurrent:5
    dev-qt/qtnetwork:5
    dev-qt/qtwebkit:5
    dev-qt/qtwidgets:5
    dev-qt/qtxml:5
    dev-qt/qtprintsupport:5
    dev-qt/qtprintsupport:5
    dev-qt/qtdeclarative:5
    dev-qt/qttest:5
    dev-qt/qtsvg:5
    dev-qt/qtsvg:5

    dev-lang/perl
    virtual/pkgconfig

    git? ( dev-vcs/git )

    wayland? (
        >=dev-libs/wayland-1.12
        dev-qt/qtwayland:5
    )

    kde? ( kde-frameworks/kcoreaddons:5 )
    kde? ( kde-frameworks/syntax-highlighting:5 )
"

DEPEND="
    ${RDEPEND}
    app-doc/doxygen
"

src_configure() {
    cmake-utils_src_configure
}
