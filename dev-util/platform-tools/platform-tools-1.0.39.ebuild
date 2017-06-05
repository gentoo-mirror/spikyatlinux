# Copyright 1999-2009 Gentoo Foundation
# Distributed under the terms of the GNU General Public License v2

EAPI="6"
inherit eutils unpacker

DESCRIPTION="Android platform-tools same as android-tools but latest version withou sdk from google"
HOMEPAGE="http://www.androidpolice.com/2017/01/05/google-makes-adb-fastboot-platform-tools-available-without-full-sdk-android-studio-download"
SRC_URI="https://dl.google.com/android/repository/platform-tools-latest-linux.zip -> ${P}.zip"

LICENSE="GPL"
SLOT="0"
KEYWORDS="~x86 ~amd64"
S="${WORKDIR}"
DEPEND="app-arch/unzip
        dev-util/patchelf"
RDEPEND="${DEPEND}"
RESTRICT="strip mirror"
QA_PREBUILT="/opt/${P}"

src_install() {
	einfo "Patching elf binary"
	cd "${S}/platform-tools" || die
	local x
	for x in `find . -name fastboot` ; do
		[[ -f ${x} && $(od -t x1 -N 4 "${x}") == *"7f 45 4c 46"* ]] || continue
		patchelf --set-rpath '$ORIGIN' "${x}" || \
			die "patchelf failed on ${x}"
	done
	
    mkdir ${D}/opt
    unzip ${DISTDIR}/${P}.zip -d ${D}/opt/
    
    newenvd "${FILESDIR}"/72platformtools-env.d 72platformtools
	
}

pkg_postinst() {
	elog
	elog "Enjoy this quick and dirty ebuild to use latest adb and fastboot"
	elog
	elog "adb and fastboot are latest versions from google"
    elog
}
