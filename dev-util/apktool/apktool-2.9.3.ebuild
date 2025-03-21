# Copyright 1999-2025 Gentoo Authors
# Distributed under the terms of the GNU General Public License v2

EAPI=8

DESCRIPTION="A tool for reengineering 3rd party, closed, binary Android apps"
HOMEPAGE="https://ibotpeaches.github.io/Apktool/"
SRC_URI="https://github.com/iBotPeaches/Apktool/releases/download/v${PV}/${PN}_${PV}.jar -> ${P}.jar"

LICENSE="Apache-2.0"
SLOT="0"
KEYWORDS="~amd64 ~x86"
IUSE="tools"

DEPEND=""
RDEPEND="|| ( virtual/jre virtual/jdk )
	tools? ( dev-util/android-sdk-build-tools )"

S="${WORKDIR}"

src_unpack() {
	dodir "${S}"
	cp -L "${DISTDIR}/${A}" "${S}/${PN}.jar" || die
}

src_install() {
	dobin "${FILESDIR}/apktool"
	insinto "/opt/${PN}/"
	doins apktool.jar
}
