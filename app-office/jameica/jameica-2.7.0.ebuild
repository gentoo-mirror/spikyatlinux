# Copyright 1999-2009 Gentoo Foundation
# Distributed under the terms of the GNU General Public License v2

EAPI="6"

DESCRIPTION="Official prebuilt nightly Jameica Online Banking Software, written in Java"
HOMEPAGE="http://www.jameica.org"
SRC_URI="x86? ( http://www.willuhn.de/products/${PN}/releases/nightly/${PN}-${PV}-nightly-linux.zip
			-> ${P}.zip )
		 amd64? (
		 http://www.willuhn.de/products/${PN}/releases/nightly/${PN}-${PV}-nightly-linux64.zip
		 	-> ${P}-linux64.zip )"
LICENSE="GPL"
SLOT="0"
KEYWORDS="~x86 amd64"

S="${WORKDIR}"

DEPEND="app-arch/unzip"
RDEPEND="${DEPEND}
>=virtual/jre-1.6.0"

src_install() {
	mkdir ${D}/opt
	mkdir ${D}/usr
	mkdir ${D}/usr/bin
	if use x86; then
		unzip ${DISTDIR}/${P}.zip -d ${D}/opt/
		echo "/opt/jameica/jameica.sh" >> ${D}/usr/bin/jameica
	elif use amd64; then
		unzip ${DISTDIR}/${P}-linux64.zip -d ${D}/opt/
		echo "/opt/jameica/jameica.sh" >> ${D}/usr/bin/jameica
	fi
	chmod a+x ${D}/usr/bin/jameica
	mkdir -p ${D}/usr/share/applications/
	cp "${FILESDIR}/jameica.desktop" ${D}/usr/share/applications/ || die
}

pkg_postinst() {
	elog
	elog "You may want to install app-office/hibiscus"
	elog
}
