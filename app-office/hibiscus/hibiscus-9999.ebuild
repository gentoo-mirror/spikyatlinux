# Copyright 2018-2020 spikyatlinux overlay
# Distributed under the terms of the GNU General Public License v2

EAPI="7"

DESCRIPTION="Official prebuilt nightly HBCI Plugin for Jameica"
HOMEPAGE="http://jameica.org"
SRC_URI="https://www.willuhn.de/products/hibiscus/releases/nightly/${PN}-2.11.0-nightly.zip -> ${P}.zip"

LICENSE="GPL-3"
SLOT="0"
KEYWORDS=""
S="${WORKDIR}"

RDEPEND="=app-office/jameica-9999"

src_install() {
	mkdir ${D}
	mkdir ${D}/opt
	mkdir ${D}/opt/jameica
	mkdir ${D}/opt/jameica/plugins
	unzip ${DISTDIR}/${P}.zip -d ${D}/opt/jameica/plugins
}
