# Copyright 2018-2020 spikyatlinux overlay
# Distributed under the terms of the GNU General Public License v2

EAPI="7"

inherit flag-o-matic toolchain-funcs

MY_PV="2.10"

DESCRIPTION="Official prebuilt nightly HBCI Plugin for Jameica"
HOMEPAGE="http://jameica.org"
SRC_URI="http://www.willuhn.de/products/${PN}/releases/${MY_PV}/${PN}-${PV}.zip"

LICENSE="GPL-3"
SLOT="0"
KEYWORDS="~x86 amd64"
S="${WORKDIR}"

RDEPEND=">=dev-java/jameica-2.10.0"

QA_PREBUILT="
    opt/${PN}/lib/libhbci4java-card-freebsd-64.so
    opt/${PN}/lib/libhbci4java-sizrdh-linux-gcc2.so
    opt/${PN}/lib/libtowitoko-2.0.7-amd64.so
"

src_install() {
	mkdir ${D}
	mkdir ${D}/opt
	mkdir ${D}/opt/jameica
	mkdir ${D}/opt/jameica/plugins
	unzip ${DISTDIR}/${PN}-${PV}.zip -d ${D}/opt/jameica/plugins
}
