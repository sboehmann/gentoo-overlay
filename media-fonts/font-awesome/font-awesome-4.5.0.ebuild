EAPI=5

inherit font

MY_PN="Font-Awesome"
DESCRIPTION="Font Awesome, the iconic font and CSS toolkit"
HOMEPAGE="http://fortawesome.github.io/Font-Awesome"
SRC_URI="https://github.com/FortAwesome/${MY_PN}/archive/v${PV}.tar.gz ->
${P}.tar.gz"

SLOT=0
KEYWORDS="~x86 ~amd64"
S="${WORKDIR}"/${MY_PN}-${PV}
FONT_SUFFIX="ttf otf"
FONT_S="${S}"/fonts
