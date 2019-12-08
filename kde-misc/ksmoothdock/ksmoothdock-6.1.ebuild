# Copyright 1999-2017 Gentoo Foundation
# Distributed under the terms of the GNU General Public License v2

EAPI=7

inherit git-r3 autotools desktop eutils

DESCRIPTION="KSmoothDock is a dock program for KDE with smooth parabolic zooming"
HOMEPAGE="https://store.kde.org/p/1081169/"
EGIT_REPO_URI="https://github.com/dangvd/ksmoothdock.git"
EGIT_COMMIT="2ac10a6d282db5e38fd03cbf3e199895c56751e5"

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

