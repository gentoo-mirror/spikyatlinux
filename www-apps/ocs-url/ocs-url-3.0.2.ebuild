# Copyright 1999-2013 Gentoo Foundation
# Distributed under the terms of the GNU General Public License v2

EAPI="6"

inherit multilib unpacker
MY_PV=${PV/_p/-}
MY_PN=${PN%%-0ubuntu1}
DLID="1498225522"
DESCRIPTION="An install helper program for items served via OpenCollaborationServices (OCS)."
HOMEPAGE="https://www.linux-apps.com/p/1136805/"
SRC_URI="https://dl.opendesktop.org/api/files/download/id/${DLID}/${PN}_${PV}-0ubuntu1_amd64.deb"
LICENSE="Freeware"
SLOT="0"
KEYWORDS="~amd64"
IUSE=""

DEPEND="app-arch/dpkg"
RDEPEND="
	dev-qt/qtdeclarative:5
	dev-qt/qtquickcontrols
	dev-qt/qtquickcontrols2"

S=${WORKDIR}

QA_PREBUILT="usr/lib*/${MY_PN}/*"

RESTRICT="strip"

src_install() {
	cp -pPR "${WORKDIR}"/* "${D}"/ || die "copying files failed!"
    insinto /usr/share/applications
	newins "${FILESDIR}/ocs_mimeapps.list" mimeapps.list
}
