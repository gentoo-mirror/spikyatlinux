# Copyright 1999-2019 Gentoo Foundation
# Distributed under the terms of the GNU General Public License v2

EAPI=7

inherit git-r3 cmake-utils autotools eutils

DESCRIPTION="A Arc theme KDecoration2 theme based on SierraBreeze. "
HOMEPAGE="https://github.com/matricci/ArcBreeze"
EGIT_REPO_URI="https://github.com/matricci/ArcBreeze.git"
EGIT_COMMIT="d76aa7aeaefb40de086708500f26b3cf94de5988"

LICENSE="GPL-3"
SLOT="0"
KEYWORDS=""
IUSE=""

S="${S}/"

RDEPEND=""
DEPEND="${RDEPEND}
x11-themes/kvantum
"

src_prepare(){
		cmake-utils_src_prepare
		eapply "${FILESDIR}"/${PN}-naming.patch
}

src_configure() {
		local mycmakeargs=(
		-DCMAKE_INSTALL_PREFIX=/usr
		-DCMAKE_BUILD_TYPE=Release
		-DKDE_INSTALL_LIBDIR=lib
		-DBUILD_TESTING=OFF
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
