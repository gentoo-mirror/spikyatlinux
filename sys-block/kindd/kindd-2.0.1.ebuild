# Copyright 2019 SpikyAtLinux.
# Distributed under the terms of the GNU General Public License v3

EAPI="6"

inherit eutils qmake-utils

DESCRIPTION="A kindful dd gui written in qt quick."
HOMEPAGE="https://github.com/LinArcX/Kindd"
SRC_URI="https://github.com/LinArcX/Kindd/archive/${PV}.tar.gz -> kindd-${PV}.tar.gz"         

LICENSE="GPLv3"
SLOT="0"
KEYWORDS="~amd64 ~x86"
IUSE="gnome kde"

RDEPEND="kde? ( kde-plasma/polkit-kde-agent )
         gnome? ( gnome-extra/polkit-gnome )
"

DEPEND="${RDEPEND}
         sys-apps/coreutils
         sys-auth/polkit
         dev-qt/qtquickcontrols
         dev-qt/qtquickcontrols2
         dev-qt/qtmultimedia"

S="${WORKDIR}"


src_compile() {
    eqmake5 Kindd-${PV}/kindd.pro || die
    emake || die
}

src_install() {
    dobin kindd || die
    domenu "${S}/Kindd-${PV}/appconf/kindd.desktop" || die
    newicon "${S}/Kindd-${PV}/appconf/kindd.svg" kindd.svg || die
}
