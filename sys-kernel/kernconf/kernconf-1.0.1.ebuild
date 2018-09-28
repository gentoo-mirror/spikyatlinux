# Copyright 1999-2017 Gentoo Foundation
# Distributed under the terms of the GNU General Public License v2

EAPI=6

inherit vcs-snapshot

DESCRIPTION="defconfig-based kernel configuration script"
HOMEPAGE="https://gitlab.com/genthree/kernconf"
SRC_URI="https://gitlab.com/genthree/${PN}/repository/archive.tar.bz2?ref=v${PV} -> ${P}.tar.bz2"

LICENSE="MIT"
SLOT="0"
KEYWORDS="~alpha ~amd64 ~arm ~arm64 ~hppa ~ia64 ~mips ~ppc ~ppc64 ~s390 ~sh ~sparc ~x86"
IUSE=""

DEPEND=""
RDEPEND=""

src_install() {
	dodir /etc/kernconf.d
	keepdir /etc/kernconf.d
	dobin kernconf
	insinto /usr/share/bash-completion/completions
	doins bash-completion/kernconf
}
