# Copyright 1999-2020 Gentoo Authors
# Distributed under the terms of the GNU General Public License v2

EAPI=6

inherit git-r3 cmake-utils autotools eutils

DESCRIPTION="KDE tool to monitor SMART devices and MDRaid health status "
HOMEPAGE="https://github.com/papylhomme/diskmonitor"
EGIT_REPO_URI="https://github.com/papylhomme/diskmonitor.git"
EGIT_COMMIT="5494847a44b12beb2186afd65edffcdd1e40df8e"

LICENSE="GPL"
SLOT="0"
KEYWORDS="amd64 x86"
IUSE=""

S="${S}"

RDEPEND=""
DEPEND="${RDEPEND}"

src_prepare(){
       cmake-utils_src_prepare
}

src_configure(){
	local mycmakeargs=(
		-DCMAKE_BUILD_TYPE=Release
		-DKDE_INSTALL_USE_QT_SYS_PATHS=ON
)	
        cmake-utils_src_configure
}

src_compile(){
   cmake-utils_src_compile
}

src_install(){
   cmake-utils_src_install
   domenu "${FILESDIR}/diskmonitor.desktop"
}
