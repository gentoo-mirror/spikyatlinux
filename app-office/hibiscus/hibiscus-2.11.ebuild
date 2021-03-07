# Copyright 2018-2021 spikyatlinux overlay
# Distributed under the terms of the GNU General Public License v2

EAPI="7"

inherit flag-o-matic toolchain-funcs

MY_PV="2.11.0-nightly"

DESCRIPTION="Official prebuilt nightly HBCI Plugin for Jameica"
HOMEPAGE="http://jameica.org"
SRC_URI="https://www.willuhn.de/products/${PN}/releases/nightly/${PN}-${MY_PV}.zip"
LICENSE="GPL-3"
SLOT="0"
KEYWORDS="~x86 ~amd64"
RESTRICT="strip"
S="${WORKDIR}"

RDEPEND=">=dev-java/jameica-2.11.0"

QA_PREBUILT="
    opt/${PN}/lib/libct.so
    opt/${PN}/lib/libhbci4java-card-freebsd-64.so
    opt/${PN}/lib/libhbci4java-card-linux-32.so
    opt/${PN}/lib/libhbci4java-card-linux-64.so
    opt/${PN}/lib/libhbci4java-sizrdh-linux-gcc2.so
    opt/${PN}/lib/libhbci4java-sizrdh-linux-gcc3.so
    opt/${PN}/lib/libtowitoko-2.0.7-amd64.so
    opt/${PN}/lib/libtowitoko-2.0.7.so
"
QA_SONAME="
    opt/${PN}/lib/libhbci4java-card-freebsd-64.so
    opt/${PN}/lib/libhbci4java-sizrdh-linux-gcc2.so
"

src_prepare() {
    default
    
    rm ${S}/${PN}/lib/libhbci4java-card-freebsd-64.so
    rm ${S}/${PN}/lib/libhbci4java-sizrdh-linux-gcc2.so
}

src_install() {
    dodir /opt/jameica/plugins
	cp -ap "${S}"/* "${D}"/opt/jameica/plugins/hibiscus/
}
