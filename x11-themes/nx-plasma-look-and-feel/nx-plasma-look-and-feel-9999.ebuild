# Copyright 1999-2019 Gentoo Foundation
# Distributed under the terms of the GNU General Public License v2

EAPI=7

inherit git-r3 autotools eutils

DESCRIPTION="NX Look and Feel package."
HOMEPAGE="https://github.com/nx-desktop/nx-plasma-look-and-feel"
EGIT_REPO_URI="https://github.com/nx-desktop/nx-plasma-look-and-feel.git"
EGIT_COMMIT="17ecc24fe58666cf68109ddb92506c9b2cb4fc41"

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
