# Copyright 1999-2021 Gentoo Authors
# Distributed under the terms of the GNU General Public License v2

EAPI=7

inherit optfeature

DESCRIPTION="A fast pipe/static menu generator for the Openbox Window Manager"
HOMEPAGE="https://github.com/trizen/obmenu-generator"
SRC_URI="https://github.com/trizen/obmenu-generator/archive/${PV}.tar.gz -> ${P}.tar.gz"

LICENSE="GPL-3+"
SLOT="0"
KEYWORDS="amd64 x86"
IUSE="+gtk2-icon +gtk3-icon"

S="${WORKDIR}"

RDEPEND="
	dev-lang/perl[gdbm]
	dev-perl/Data-Dump
	gtk2-icon? ( dev-perl/Gtk2 )
	gtk3-icon? ( dev-perl/Gtk3 )
	>=dev-perl/Linux-DesktopFiles-0.90.0
	x11-wm/openbox
"

PATCHES=(
        "${FILESDIR}/fix-gtk-cache-error.patch"
)

src_install() {
	exeinto /usr/bin/
	doexe $S/obmenu-generator-0.89/obmenu-generator

	insinto /etc/xdg/obmenu-generator
	doins $S/obmenu-generator-0.89/schema.pl

	dodoc $S/obmenu-generator-0.89/README.md
}

pkg_postinst() {
	optfeature_header "For icon (-i) functionality, install:"
	optfeature "support via gtk+:2 (default)" dev-perl/Gtk2
	optfeature "support via gtk+:3 (enabled via config)" dev-perl/Gtk3
}
