# Copyright 1999-2017 Gentoo Foundation
# Distributed under the terms of the GNU General Public License v2

EAPI=5
PYTHON_COMPAT=( python3_{4,5,6} )

inherit distutils-r1

DESCRIPTION="Material Design theme for MkDocs"
HOMEPAGE="https://squidfunk.github.io/mkdocs-material/"
SRC_URI="mirror://pypi/${PN:0:1}/${PN}/${P}.tar.gz"

LICENSE="MIT"
SLOT="0"
KEYWORDS="amd64"
IUSE=""

RDEPEND=">=dev-python/mkdocs-1.0.0[${PYTHON_USEDEP}]
         >=dev-python/pygments-2.2.0[${PYTHON_USEDEP}]
         >=dev-python/pymdown-extensions-4.11[${PYTHON_USEDEP}]
"

DEPEND="${RDEPEND}
        dev-python/setuptools[${PYTHON_USEDEP}]
"
