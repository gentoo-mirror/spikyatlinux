# Copyright 1999-2019 Gentoo Foundation
# Distributed under the terms of the GNU General Public License v2

EAPI=6

inherit git-r3 autotools eutils

DESCRIPTION="OSX-like window decoration for KDE Plasma written in C++ "
HOMEPAGE="https://github.com/ishovkun/SierraBreeze"
EGIT_REPO_URI="https://github.com/ishovkun/SierraBreeze.git"
EGIT_COMMIT="ca6e144c97473b634c15e3c2d9c5a96115ac1cde"

LICENSE="GPL"
SLOT="0"
KEYWORDS=""
IUSE=""

S="${S}/"

RDEPEND=""
DEPEND="${RDEPEND}"

src_configure() {
        cmake -DCMAKE_INSTALL_PREFIX=/usr
}
