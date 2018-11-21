# Copyright 1999-2005 Gentoo Foundation
# Distributed under the terms of the GNU General Public License v2

EAPI="6"

KDE_HANDBOOK="forceoptional"
KDE_TEST="forceoptional"
inherit kde5

DESCRIPTION="A multiple tail utility."
SRC_URI="ftp://binro.org/${P}.tar.bz2"
LICENSE="GPL-2"

SLOT="0"
KEYWORDS="~x86 ~amd64"
IUSE=""

DEPEND="
    $(add_frameworks_dep kconfig)
    $(add_frameworks_dep kconfigwidgets)
    $(add_frameworks_dep kcoreaddons)
    $(add_frameworks_dep ki18n)
    $(add_frameworks_dep kio)
    $(add_frameworks_dep kxmlgui)
    $(add_qt_dep qtgui)
    $(add_qt_dep qtwidgets)"
