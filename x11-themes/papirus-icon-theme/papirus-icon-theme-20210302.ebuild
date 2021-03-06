# Copyright 2018-2021 spikyatlinux overlay
# Distributed under the terms of the GNU General Public License v2

EAPI=7

inherit xdg-utils
if [[ -z ${PV%%*9999} ]]; then
	inherit git-r3
	EGIT_REPO_URI="https://github.com/PapirusDevelopmentTeam/${PN}.git"
	SRC_URI=
else
	SRC_URI="
		https://github.com/PapirusDevelopmentTeam/${PN}/archive/${PV}.tar.gz
		-> ${P}.tar.gz
	"
	RESTRICT="primaryuri"
	KEYWORDS="~amd64 ~x86"
fi
DESCRIPTION="Papirus icon theme for GTK"
HOMEPAGE="https://git.io/papirus-icon-theme"

LICENSE="GPL-3"
SLOT="0"
IUSE="test"

DEPEND=""
RDEPEND="
	${DEPEND}
"
BDEPEND="
	test? ( app-text/xmlstarlet )
"

src_test() {
	emake test-all
}

pkg_postrm()
{
xdg_icon_cache_update;
}
