# Copyright 1999-2025 Gentoo Authors
# Distributed under the terms of the GNU General Public License v2

EAPI=8

inherit git-r3

DESCRIPTION="/etc/portage cleaner"
HOMEPAGE="https://github.com/megabaks/portconf"
EGIT_REPO_URI="https://github.com/megabaks/${PN}.git -> ${P}.tar.gz"
EGIT_OVERRIDE_COMMIT_MEGABAKS_PORTCONF="61059564d5fa82b2e322da9365cbaf20ded330cc"

LICENSE="GPL-3+"
SLOT="0"
KEYWORDS="~amd64 ~x86"

IUSE=""

DEPEND="
	app-shells/bash:=
	sys-apps/portage
"
RDEPEND="${DEPEND}
	app-portage/eix
	app-portage/portage-utils
	sys-apps/gawk
	|| ( app-text/agrep dev-libs/tre )
"

PATCHES=(
	"${FILESDIR}/fix_grep.patch"
)

src_install() {
	default

	dobin portconf
	insinto /etc
	newins portconf.conf portconf.conf
}
