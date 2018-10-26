# Copyright 1999-2018 Gentoo Authors
# Distributed under the terms of the GNU General Public License v2

EAPI=6
inherit qt5-build git-r3

DESCRIPTION="HttpServer implementation for the Qt5 framework"
SRC_URI=""

EGIT_REPO_URI="https://github.com/sboehmann/qthttpserver.git"
MY_P=qthttpserver-${PV#*_p}
S="${WORKDIR}/${MY_P}"

if [[ ${QT5_BUILD_TYPE} == release ]]; then
	KEYWORDS="~amd64 ~arm ~arm64 ~hppa ~ppc ~ppc64 ~x86"
fi

DEPEND="
	dev-qt/qtcore:5
	dev-qt/qtnetwork:5
"
RDEPEND="${DEPEND}"
