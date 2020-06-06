# Copyright 1999-2019 Gentoo Foundation
# Distributed under the terms of the GNU General Public License v2

EAPI=7

inherit git-r3 cmake-utils autotools eutils

DESCRIPTION="NX Look and Feel package."
HOMEPAGE="https://github.com/nx-desktop/nx-plasma-look-and-feel"
EGIT_REPO_URI="https://github.com/nx-desktop/nx-plasma-look-and-feel.git"
EGIT_COMMIT="a8bb8691e121a1efd452d9bd5f34d35d9963eeb8"

LICENSE="GPL"
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
