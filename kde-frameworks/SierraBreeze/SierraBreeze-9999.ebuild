# Copyright 1999-2019 Gentoo Foundation
# Distributed under the terms of the GNU General Public License v2

EAPI=7

inherit git-r3 autotools eutils

DESCRIPTION="OSX-like window decoration for KDE Plasma written in C++ "
HOMEPAGE="https://github.com/ishovkun/SierraBreeze"
EGIT_REPO_URI="https://github.com/ishovkun/SierraBreeze.git"
EGIT_COMMIT="0e132fa46871283265c4f0e22e7bb04d8ee7553e"

LICENSE="GPL"
SLOT="0"
KEYWORDS=""
IUSE=""

S="${S}/"

RDEPEND=""
DEPEND="${RDEPEND}"

src_configure() {
        cmake -DCMAKE_INSTALL_PREFIX=/usr -DCMAKE_BUILD_TYPE=Release -DKDE_INSTALL_LIBDIR=lib -DBUILD_TESTING=OFF -DKDE_INSTALL_USE_QT_SYS_PATHS=ON
}
