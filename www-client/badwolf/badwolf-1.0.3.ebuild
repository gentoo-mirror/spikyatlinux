# Copyright 2019-2020 Gentoo Authors
# Distributed under the terms of the GNU General Public License v2

EAPI=7

inherit xdg

if [[ "${PV}" == "9999" ]]
then
	EGIT_REPO_URI="https://hacktivis.me/git/badwolf.git"
	EGIT_MIN_CLONE_TYPE="single+tags"
	inherit git-r3
else
	MY_P="${PN}-$(ver_rs 3 - 4 .)"
	SRC_URI="https://hacktivis.me/releases/${MY_P}.tar.gz"
	KEYWORDS="~amd64"
	S="${WORKDIR}/${MY_P}"
	inherit savedconfig
fi

DESCRIPTION="Minimalist and privacy-oriented WebKitGTK+ browser"
HOMEPAGE="https://hacktivis.me/projects/badwolf"
LICENSE="BSD"
SLOT="0"

DOCS=("README.md" "KnowledgeBase.md")

DEPEND="
	x11-libs/gtk+:3
	net-libs/webkit-gtk:4=
"
RDEPEND="${DEPEND}"

src_configure() {
	[[ "${PV}" == "9999" ]] || restore_config config.h
	default
}

src_compile() {
	emake \
		CC="${CC:-cc}" \
		CFLAGS="${CFLAGS:--02 -Wall -Wextra}" \
		LDFLAGS="${LDFLAGS}" \
		PREFIX="/usr"
}

src_install() {
	emake \
		DESTDIR="${D}" \
		PREFIX="/usr" \
		install

	[[ "${PV}" == "9999" ]] || save_config config.h
	einstalldocs
}
