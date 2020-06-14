# Copyright 1999-2020 Gentoo Authors
# Distributed under the terms of the GNU General Public License v2

EAPI="6"

DESCRIPTION="Official prebuilt nightly HBCI Plugin for Jameica"
HOMEPAGE="http://jameica.org"
SRC_URI="https://www.willuhn.de/products/hibiscus/releases/nightly/${PN}-2.9.0-nightly.zip"

LICENSE="GPL"
SLOT="0"
KEYWORDS=""
S="${WORKDIR}"

RDEPEND=">=app-office/jameica-2.1.0"

src_install() {
	mkdir ${D}
	mkdir ${D}/opt
	mkdir ${D}/opt/jameica
	mkdir ${D}/opt/jameica/plugins
	unzip ${DISTDIR}/${PN}-${PV}-nightly.zip -d ${D}/opt/jameica/plugins
}
