# Copyright 2017-2020 SpikyatLinux
# Distributed under the terms of the GNU General Public License v2

EAPI=7

inherit git-r3 cmake-utils autotools eutils

DESCRIPTION="NX Look and Feel package."
HOMEPAGE="https://github.com/nx-desktop/nx-plasma-look-and-feel"
EGIT_REPO_URI="https://github.com/nx-desktop/nx-plasma-look-and-feel.git"
EGIT_COMMIT="69298672a0aa2bbde6e2903fc59a71ede673e94b"

LICENSE="GPL-3"
SLOT="0"
KEYWORDS="~amd64 ~x86"
IUSE=""

S="${S}/"

RDEPEND=""
DEPEND="${RDEPEND}"

src_prepare(){
		cmake-utils_src_prepare
}

src_configure() {
		local mycmakeargs=(
		-DCMAKE_INSTALL_PREFIX=/usr
		-DCMAKE_BUILD_TYPE=Release
		-DKDE_INSTALL_LIBDIR=lib
		-DKDE_INSTALL_USE_QT_SYS_PATHS=ON
)
        cmake-utils_src_configure
}

src_compile(){
   cmake-utils_src_compile
}

src_install(){
   cmake-utils_src_install
}
