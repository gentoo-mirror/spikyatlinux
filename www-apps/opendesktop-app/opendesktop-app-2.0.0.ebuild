# Copyright 1999-2013 Gentoo Foundation
# Distributed under the terms of the GNU General Public License v2

EAPI="6"

inherit multilib unpacker

MY_PV=${PV/_p/-}
MY_PN=${PN%%-0ubuntu1}
DLID="1498824426"
DESCRIPTION="An opendesktop.org application."
HOMEPAGE="https://linux-apps.com/p/1175480/"
SRC_URI="https://dl.opendesktop.org/api/files/download/id/${DLID}/${PN}_${PV}-0ubuntu1_amd64.deb"
LICENSE="Freeware"
SLOT="0"
KEYWORDS="~amd64"
IUSE=""

DEPEND="app-arch/dpkg"
RDEPEND="
	dev-qt/qtsvg:5
	dev-qt/qtdeclarative:5
	dev-qt/qtwebsockets
	dev-qt/qtquickcontrols
	dev-qt/qtquickcontrols2"

S=${WORKDIR}

QA_PREBUILT="usr/lib*/${MY_PN}/*"

RESTRICT="strip"

src_install() {
	cp -pPR "${WORKDIR}"/* "${D}"/ || die "copying files failed!"
}
