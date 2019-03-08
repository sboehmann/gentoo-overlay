# Copyright 1999-2018 Gentoo Foundation
# Distributed under the terms of the GNU General Public License v2

EAPI=6

PYTHON_COMPAT=( python2_7 python3_{4,5,6} )
PYTHON_REQ_USE="sqlite"

inherit distutils-r1

DESCRIPTION="Distributed C/C++ package manager"
HOMEPAGE="https://conan.io/"
SRC_URI="mirror://pypi/${PN:0:1}/${PN}/${P}.tar.gz"

LICENSE="MIT"
SLOT="0"
KEYWORDS="~amd64 ~x86 ~amd64-linux ~x86-linux"

RDEPEND="
	=dev-python/pyjwt-1.5*[${PYTHON_USEDEP}]
	>=dev-python/requests-2.7[${PYTHON_USEDEP}]
	=dev-python/colorama-0.4*[${PYTHON_USEDEP}]
	>=dev-python/pyyaml-3.11[${PYTHON_USEDEP}]
	~dev-python/patch-1.16[${PYTHON_USEDEP}]
	>=dev-python/fasteners-0.14.1[${PYTHON_USEDEP}]
	>=dev-python/six-1.10[${PYTHON_USEDEP}]
	>=dev-python/node-semver-0.6.1[${PYTHON_USEDEP}]
	>=dev-python/distro-1.0.2[${PYTHON_USEDEP}]
	>=dev-python/pylint-1.9.3[${PYTHON_USEDEP}]
	~dev-python/future-0.16.0[${PYTHON_USEDEP}]
	=dev-python/pygments-2*[${PYTHON_USEDEP}]
	>=dev-python/astroid-1.6.5[${PYTHON_USEDEP}]
	=dev-python/deprecation-2*[${PYTHON_USEDEP}]
	~dev-python/tqdm-4.28.1[${PYTHON_USEDEP}]
	=dev-python/jinja-2*[${PYTHON_USEDEP}]
"

DEPEND="
	dev-python/setuptools[${PYTHON_USEDEP}]
"
