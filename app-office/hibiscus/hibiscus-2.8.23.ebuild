# Copyright 2018-2019 spikyatlinux overlay
# Distributed under the terms of the GNU General Public License v2

EAPI="7"

DESCRIPTION="Official prebuilt nightly HBCI Plugin for Jameica"
HOMEPAGE="http://jameica.org"
SRC_URI="http://www.willuhn.de/products/${PN}/releases/2.8/${PN}-${PV}.zip"

LICENSE="GPL"
SLOT="0"
KEYWORDS="~x86 amd64"
S="${WORKDIR}"

RDEPEND=">=app-office/jameica-2.1.0"

src_install() {
	mkdir ${D}
	mkdir ${D}/opt
	mkdir ${D}/opt/jameica
	mkdir ${D}/opt/jameica/plugins
	unzip ${DISTDIR}/${PN}-${PV}.zip -d ${D}/opt/jameica/plugins
}
