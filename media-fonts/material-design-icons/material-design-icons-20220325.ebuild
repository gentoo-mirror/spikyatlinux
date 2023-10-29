# Copyright 2023 Gentoo Authors
# Distributed under the terms of the GNU General Public License v2

EAPI=8
inherit font

COMMIT="d72e30826e6797c1b3a2976e71d0d2f790c1a2eb"
DESCRIPTION="Font containing material design icons"
HOMEPAGE="https://pictogrammers.com/library/mdi/"
SRC_URI="https://github.com/Templarian/MaterialDesign-Font/archive/${COMMIT}.tar.gz -> ${P}.tar.gz"

LICENSE="OFL-1.1"
SLOT="0"
KEYWORDS="~amd64 ~x86"

S="${WORKDIR}/MaterialDesign-Font-${COMMIT}"
FONT_S="${S}"
FONT_SUFFIX="ttf"
BDEPEND=""
DOCS="README.md cheatsheet.html"
