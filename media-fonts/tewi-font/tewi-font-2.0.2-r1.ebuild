# Copyright 1999-2021 Gentoo Authors
# Distributed under the terms of the GNU General Public License v2

EAPI=7

if [[ ${PV} == *9999 ]]; then
	SCM="git-r3"
	EGIT_REPO_URI="https://github.com/lucy/tewi-font.git"
fi

inherit font font-ebdftopcf ${SCM}

DESCRIPTION="A small bitmap font"
HOMEPAGE="https://github.com/lucy/tewi-font"

if [[ ${PV} == *9999 ]]; then
	SRC_URI=""
	KEYWORDS=""
else
	SRC_URI="https://github.com/lucy/tewi-font/archive/${PV}.tar.gz -> ${P}.tar.gz"
	KEYWORDS="~amd64 ~x86"
fi

LICENSE="MIT"
SLOT="0"
IUSE=""

DEPEND=""
RDEPEND="${DEPEND}"
BDEPEND=""

DOCS=(README.md)
FONT_S=(${S} ${S}/variant)

src_compile() {
	font-ebdftopcf_src_compile
}
