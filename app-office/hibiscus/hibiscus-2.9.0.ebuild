# Copyright 1999-2009 Gentoo Foundation
# Distributed under the terms of the GNU General Public License v2

EAPI="6"

DESCRIPTION="Official prebuilt nightly HBCI Plugin for Jameica"
HOMEPAGE="http://jameica.org"
SRC_URI="http://www.willuhn.de/products/hibiscus/releases/nightly/${PN}-${PV}-nightly.zip"

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
	unzip ${DISTDIR}/${PN}-${PV}-nightly.zip -d ${D}/opt/jameica/plugins
}
