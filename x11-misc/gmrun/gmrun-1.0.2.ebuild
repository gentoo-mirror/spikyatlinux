# Copyright 1999-2018 Gentoo Foundation
# Distributed under the terms of the GNU General Public License v2

EAPI=7

inherit autotools eutils

DESCRIPTION="A GTK based launcher box with bash style auto completion!"
HOMEPAGE="https://gitlab.com/mazes_80/gmrun/"
SRC_URI="https://gitlab.com/mazes_80/${PN}/-/archive/${PV}/${P}.tar.bz2"

LICENSE="GPL-1"
SLOT="0"
KEYWORDS="amd64 ~x86"
IUSE="gtk2 popt"

RDEPEND="dev-libs/glib:2
		gtk2? ( x11-libs/gtk+:2 )
		!gtk2? ( x11-libs/gtk+:3 )
		popt? ( dev-libs/popt )"

DEPEND="${RDEPEND}
		elibc_glibc? ( >=sys-libs/glibc-2.10 )
		virtual/pkgconfig"

src_prepare() {
	eapply_user
	eautoreconf
}

src_configure() {
	econf $(use_with gtk2) \
		$(use_enable popt)
}

pkg_postinst() {
	ewarn "Configuration file location have been changed since 0.9.2"
	ewarn "	mv ~/.gmrun_history ~/.config/gmrun_history"
	ewarn "	mv ~/.gmrunrc ~/.config/gmrunrc"
	ewarn "Also notice that URL and extension handlers are now .desktop files"
	ewarn "so, you can now remove handlers from configuration file"
}
