# Copyright 1999-2017 Gentoo Foundation
# Distributed under the terms of the GNU General Public License v2

EAPI=7
PYTHON_COMPAT=( python3_{6,7,8,9} )

inherit distutils-r1

DESCRIPTION="Helps with massive package creation and CI integration"
HOMEPAGE="https://github.com/conan-io/conan-package-tools"
SRC_URI="https://github.com/conan-io/conan-package-tools/archive/${PV}.tar.gz -> ${P}.tar.gz"

LICENSE="MIT"
SLOT="0"
KEYWORDS="amd64"

DEPEND="
  >=dev-util/conan-1.7.0[${PYTHON_USEDEP}]
  <dev-util/conan-1.34.0[${PYTHON_USEDEP}]

  >=dev-python/six-1.10.0[${PYTHON_USEDEP}]
  >=dev-python/tabulate-0.8.0[${PYTHON_USEDEP}]
"

RDEPEND="${DEPEND}"
