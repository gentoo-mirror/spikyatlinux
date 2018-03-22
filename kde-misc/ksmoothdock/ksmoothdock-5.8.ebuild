# Copyright 1999-2017 Gentoo Foundation
# Distributed under the terms of the GNU General Public License v2

EAPI=6

inherit git-r3 autotools eutils

DESCRIPTION="KSmoothDock is a dock program for KDE with smooth parabolic zooming"
HOMEPAGE="https://store.kde.org/p/1081169/"
EGIT_REPO_URI="https://github.com/dangvd/ksmoothdock.git"
EGIT_COMMIT="7afb92fa79a05414f3e33cf3c73029ac379455ed"

LICENSE="GPL"
SLOT="0"
KEYWORDS="amd64 ~x86"
IUSE=""

S="${S}/src"

RDEPEND=""
DEPEND="${RDEPEND}"

src_configure() {
        cmake -DCMAKE_INSTALL_PREFIX=/usr
}

src_install() {
	insinto /usr/bin
	dobin ksmoothdock
	domenu "${FILESDIR}/ksmoothdock.desktop"
}

