# Copyright 1999-2020 Gentoo Foundation
# Distributed under the terms of the GNU General Public License v2

EAPI=7

DESCRIPTION="Script to follow log of running portage builds"
HOMEPAGE="https://github.com/junghans/cj-overlay"
SRC_URI=""

LICENSE="GPL-2"
SLOT="0"
KEYWORDS="amd64 x86"
IUSE="tailf"

REQUIRED_USE="tailf"

DEPEND=""
RDEPEND="
	tailf? ( sys-apps/util-linux )
	!tailf? ( sys-apps/coreutils )
	sys-apps/portage
	app-shells/bash"

S="${FILESDIR}"

src_install () {
	if use tailf; then
		newbin "${P}" "${PN}"
	else
		sed 's/tailf/tail -f/g' "${P}" > "${T}/${P}" || die
		newbin "${T}/${P}" "${PN}"
	fi
}
