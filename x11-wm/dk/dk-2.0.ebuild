# Copyright 1999-2024 Gentoo Authors
# Distributed under the terms of the GNU General Public License v2

EAPI=8

DESCRIPTION="A list based tiling window manager in the vein of dwm, bspwm, and xmonad."
HOMEPAGE="https://bitbucket.org/natemaia/dk/src/master/"
#EGIT_REPO_URI="https://bitbucket.org/natemaia/dk.git"
COMMIT="4b24990c74f06a34afce6396d4795c9fb17a99bc"
SRC_COMMIT="4b24990"
SRC_URI="https://bitbucket.org/natemaia/dk/get/${COMMIT}.tar.gz -> ${P}.tar.gz"
S="${WORKDIR}"

inherit toolchain-funcs xdg-utils desktop

LICENSE="MIT"
SLOT="0"
IUSE="examples +doc man"
RESTRICT=strip
DEPEND="
	x11-base/xcb-proto
	x11-libs/libxcb
	x11-libs/xcb-util-cursor
	x11-libs/xcb-util-keysyms
	x11-libs/xcb-util
	x11-libs/xcb-util-wm
"

RDEPEND="
	${DEPEND}
	x11-misc/sxhkd
"
KEYWORDS="~amd64 ~x86"
#src_prepare() {
#	default

#	-e "s/ -Os / /" \

#	sed -i \
#	-e "/^\(LDFLAGS\|CFLAGS\|CPPFLAGS\)/{s| = | += |g;s|-s ||g}" \
#	Makefile || die
#}

src_compile() {
	# -Os not happy
	#replace-flags -Os -O2
	cd natemaia-dk-* || die
	emake CC="$(tc-getCC)"
}

src_install() {
	cd natemaia-dk-${SRC_COMMIT}* || die
	if use man; then
		sed "s/VERSION/${VERSION}/g" man/dk.1 || die
	    doman man/*.*
	fi

	dobin dk dkcmd
	doicon -s 256 ${PN}.png
	insinto /usr/share/xsessions
	doins dk.desktop

	#emake DESTDIR="${D}" PREFIX="${EPREFIX}/usr" install
	#DOC="/usr/share/doc/${PF}" MAN="/usr/share/man/man1/" install
	#dobin ${D}/dk

	if use doc ; then
		insinto /etc/xdg/dk
		doins doc/sxhkdrc doc/dkrc doc/scripts
	fi
}

pkg_postinst() {
	xdg_desktop_database_update
}

pkg_postrm() {
	xdg_desktop_database_update
}