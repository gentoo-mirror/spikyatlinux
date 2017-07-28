# Copyright 2004-2017 SpikyAtLinux, ebuild writer
# Distributed under the terms of the GNU General Public License v3

EAPI="6"

inherit eutils qmake-utils

DESCRIPTION="Organize your directories before a backup"
HOMEPAGE="https://github.com/malessandrini/prebackup"
SRC_URI="https://github.com/malessandrini/prebackup/archive/v${PV}.tar.gz -> ${PN}-${PV}.tar.gz"

LICENSE="GPLv3"
SLOT="0"
KEYWORDS="amd64 ~x86"
IUSE=""

RDEPEND="dev-qt/qtcore:5
         net-misc/rsync
         dev-db/sqlite:3"

DEPEND="${RDEPEND}"

S="${WORKDIR}/${P}/prebackup"

src_compile() {
    eqmake5 ${S}/prebackup.pro
    emake || die
}


src_install() {
    dobin ${S}/prebackup || die
    domenu "${FILESDIR}/prebackup.desktop" || die
    newicon "${FILESDIR}/prebackup.svg" prebackup.svg || die
}

pkg_postinst() {
        einfo ""
        einfo "See the Wiki page on GitHub:"
        einfo "https://github.com/malessandrini/prebackup/wiki"
        einfo "or click Help -> Documentation in the program."
        einfo ""
}
