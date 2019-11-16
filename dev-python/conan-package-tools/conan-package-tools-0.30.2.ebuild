# Copyright 1999-2017 Gentoo Foundation
# Distributed under the terms of the GNU General Public License v2

EAPI=7
PYTHON_COMPAT=( python3_{5,6} )

inherit distutils-r1 vcs-snapshot

DESCRIPTION="Helps with massive package creation and CI integration"
HOMEPAGE="https://github.com/conan-io/conan-package-tools"
SRC_URI="https://github.com/conan-io/conan-package-tools/archive/${PV}.tar.gz -> ${P}.tar.gz"

LICENSE="MIT"
SLOT="0"
KEYWORDS="amd64"

DEPEND="
  dev-util/conan[${PYTHON_USEDEP}]
  dev-python/idna[${PYTHON_USEDEP}]
  dev-python/six[${PYTHON_USEDEP}]
  dev-python/requests[${PYTHON_USEDEP}]
  dev-python/tabulate[${PYTHON_USEDEP}]
"

RDEPEND="${DEPEND}"
