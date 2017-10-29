# Copyright 1999-2017 Gentoo Foundation
# Distributed under the terms of the GNU General Public License v2
# $Header: $

EAPI=5

inherit cmake-utils git-r3

DESCRIPTION="The Linux perf GUI for perfomance analysis"
HOMEPAGE="http://www.kdab.com/hotspot"
EGIT_REPO_URI="git://github.com/KDAB/hotspot.git"
EGIT_COMMIT="v1.1.0"
EGIT_CLONE_TYPE="single"

LICENSE="GPL-2+"
SLOT="0"
KEYWORDS=""

IUSE=""
REQUIRED_USE=""

RDEPEND="
    virtual/libelf
    dev-libs/elfutils
    sys-devel/gettext
    kde-frameworks/extra-cmake-modules
    kde-frameworks/threadweaver
    kde-frameworks/ki18n
    kde-frameworks/kcoreaddons
    kde-frameworks/kconfigwidgets
    kde-frameworks/kitemviews
    kde-frameworks/kitemmodels
    kde-frameworks/kio
    kde-frameworks/solid

    dev-qt/qtcore:5
    dev-qt/qtgui:5
    dev-qt/qtconcurrent:5
    dev-qt/qtnetwork:5
    dev-qt/qtwebkit:5
    dev-qt/qtwidgets:5
    dev-qt/qtxml:5
    dev-qt/qtprintsupport:5
    dev-qt/qtdeclarative:5
    dev-qt/qttest:5
    dev-qt/qtsvg:5
"

DEPEND="
    ${RDEPEND}
	dev-util/perf
    app-doc/doxygen
"

src_configure() {
    cmake-utils_src_configure
}
