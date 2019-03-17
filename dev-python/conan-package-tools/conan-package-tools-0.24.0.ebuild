# Copyright 1999-2017 Gentoo Foundation
# Distributed under the terms of the GNU General Public License v2

EAPI=5
PYTHON_COMPAT=( python2_7 python3_{4,5,6} )

inherit distutils-r1 vcs-snapshot

DESCRIPTION="Helps with massive package creation and CI integration"
HOMEPAGE="https://github.com/conan-io/conan-package-tools"
SRC_URI="https://github.com/conan-io/conan-package-tools/archive/${PV}.tar.gz -> ${P}.tar.gz"

LICENSE="MIT"
SLOT="0"
KEYWORDS="amd64"

DEPEND="
  dev-python/idna[${PYTHON_USEDEP}]
  dev-python/six[${PYTHON_USEDEP}]
  dev-python/requests[${PYTHON_USEDEP}]
  dev-python/conan[${PYTHON_USEDEP}]
  dev-python/tabulate[${PYTHON_USEDEP}]
"

RDEPEND="${DEPEND}"
#
# python_test() {
# 	nosetests || die "tests failed under ${EPYTHON}"
# }
#
# python_install_all() {
# 	use examples && local EXAMPLES=( example/. )
#
# 	distutils-r1_python_install_all
# }
