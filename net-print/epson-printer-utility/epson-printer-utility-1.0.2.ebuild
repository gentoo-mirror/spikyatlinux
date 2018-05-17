# Copyright 1999-2014 Gentoo Foundation
# Distributed under the terms of the GNU General Public License v2

EAPI=5

DESCRIPTION="Epson printer utility"
HOMEPAGE="http://download.ebz.epson.net/dsc/search/01/search/?OSC=LX"
SRC_URI="
        amd64?  ( https://download3.ebz.epson.net/dsc/f/03/00/07/29/95/1393ecf11a098a2018b68a558374ca5d1c81b3a8/epson-printer-utility_1.0.2-1lsb3.2_amd64.deb )
        x86?    ( https://download3.ebz.epson.net/dsc/f/03/00/07/29/95/f63880ae605788794eef71bcb276f6745df181c5/epson-printer-utility_1.0.2-1lsb3.2_i386.deb )"

RESTRICT="mirror"
LICENSE="GPL-3"
SLOT="0"
KEYWORDS="~amd64 ~x86"
IUSE=""

DEPEND=""
RDEPEND="${DEPEND}"

S="${WORKDIR}"

src_unpack() {
        unpack ${A}
        unpack ./data.tar.gz

        # removing not necessary content
        rm control.tar.gz data.tar.gz debian-binary 
}

src_install() {
        cp -pPR * "${D}"/ || die "installing data failed"
}
