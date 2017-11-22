# Copyright 1999-2017 Gentoo Foundation
# Distributed under the terms of the GNU General Public License v2

EAPI=6

inherit eutils git-r3 cmake-utils

DESCRIPTION="Qt oriented code checker based on clang framework"
HOMEPAGE="http://www.kdab.com/use-static-analysis-improve-performance/"
EGIT_REPO_URI="git://anongit.kde.org/clazy.git"
LICENSE="GPL-2"
SLOT="0"
KEYWORDS="~x86 ~amd64"
IUSE=""

RDEPEND="sys-devel/clang
         sys-devel/llvm"

