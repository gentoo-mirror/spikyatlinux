# Copyright 1999-2017 Gentoo Foundation
# Distributed under the terms of the GNU General Public License v2

EAPI=6

inherit cmake-utils

GIT_COMMIT="fb5933a"
DESCRIPTION="Tvheadend Live TV and Radio PVR client addon for Kodi"
HOMEPAGE="https://github.com/kodi-pvr/pvr.hts"
SRC_URI="https://github.com/kodi-pvr/pvr.hts/tarball/${GIT_COMMIT} -> ${P}.tar.gz"

LICENSE="GPL-2"
SLOT="0"
KEYWORDS="~amd64"
IUSE=""

# libplatform changed in version 2 from platform to p8-platform which makes it incompatible
DEPEND="=media-libs/kodi-platform-17*
	=media-tv/kodi-17*"
RDEPEND="${DEPEND}"

S="${WORKDIR}/kodi-pvr-pvr.hts-${GIT_COMMIT}"

src_configure() {
	local mycmakeargs=(
		-DCMAKE_INSTALL_LIBDIR="${EPREFIX}"/usr/lib/kodi
	)

	cmake-utils_src_configure
}
