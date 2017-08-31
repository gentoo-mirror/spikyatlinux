# Copyright 2004-2017 SpikyAtLinux, ebuild writer
# Distributed under the terms of the GNU General Public License v3

EAPI="6"

inherit eutils qmake-utils

DESCRIPTION="Run-Your-Own Firefox Sync Server"
HOMEPAGE="https://github.com/mozilla-services/syncserver"
SRC_URI="https://github.com/mozilla-services/syncserver/archive/${PV}.tar.gz -> syncserver-${PV}.tar.gz"
LICENSE="GPLv3"
SLOT="0"
KEYWORDS="amd64 ~x86"
IUSE=""

RDEPEND="dev-lang/python:2.7"

DEPEND="${RDEPEND}
        dev-python/virtualenv"

S="${WORKDIR}"


src_compile() {
    emake || die
}

#src_install() {
#    dobin bin/ascii-design || die
#    domenu "${FILESDIR}/ascii-design.desktop" || die
#    newicon "${FILESDIR}/ascii-design.png" ascii-design.png || die
#}

#pkg_postinst() {
#        einfo ""
#        einfo "Set figlet font path in ${P} to \`/usr/share/figlet\`."
#        einfo "The binary of figlet should be autodetect"
#        einfo ""
#}
