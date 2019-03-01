# Copyright 1999-2019 Gentoo Foundation
# Distributed under the terms of the GNU General Public License v2

EAPI=6

inherit cmake-utils

# Upstream names the package PV-rX. We change that to
# PV_pX so we can use portage revisions.
MY_P=${PN}-${PV/_p/-r}

DESCRIPTION="A KDE Control Module for configuring the GRUB2 bootloader. Unofficial KF5 port."
HOMEPAGE="https://github.com/maz-1/grub2-editor"
SRC_URI="https://github.com/maz-1/${PN}/archive/${PV}.tar.gz -> ${P}.tar.gz"
LICENSE="GPL-3"
SLOT="0"
KEYWORDS=""
IUSE="+hwinfo"

CDEPEND="
	hwinfo? ( sys-apps/hwinfo )
"
DEPEND="${CDEPEND}
	kde-frameworks/extra-cmake-modules
"
RDEPEND="${CDEPEND}
"

S=${WORKDIR}/${MY_P}

src_configure() {
	cmake-utils_src_configure
}
