# Copyright 1999-2019 Gentoo Foundation
# Distributed under the terms of the GNU General Public License v2

EAPI=6
#PYTHON_DEPEND="3"
PYTHON_COMPAT=( python{3_3,3_4,3_5,3_6} )

inherit eutils distutils-r1

DESCRIPTION="FF Multi Converter is a GUI application that converts multiple file formats to different extensions"
HOMEPAGE="https://sites.google.com/site/ffmulticonverter/"
SRC_URI="https://sourceforge.net/projects/ffmulticonv/files/${P}.tar.gz"

LICENSE="GPL"
SLOT="0"
KEYWORDS="~amd64 ~x86"
IUSE=""

RDEPEND="dev-python/python-poppler-qt5[${PYTHON_USEDEP}]
	>=dev-python/PyQt5-5.7.1
	app-office/unoconv
	media-gfx/imagemagick
	media-video/ffmpeg"
DEPEND="${RDEPEND}"

S=${WORKDIR}/${P}

pkg_postinst() {
	elog
	elog "It is recommended to change your make.conf"
	elog "add es. PYTHON_TARGETS="python2_7 python3_6" "
	elog "or USE="python_targets_python3_6" emerge -pv ffmulticonverter"
	elog "or add package.use/custom >=media-video/ffmulticonverter-1.7.0 python_targets_python3_6"
}
 
