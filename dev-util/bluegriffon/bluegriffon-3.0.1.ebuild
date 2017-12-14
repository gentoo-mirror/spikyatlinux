# Copyright 1999-2010 Gentoo Foundation
# Distributed under the terms of the GNU General Public License v2

EAPI="6"

inherit eutils

MY_PN="bluegriffon"

DESCRIPTION="The next-generation Web Editor based on the rendering engine of Firefox"
HOMEPAGE="http://www.bluegriffon.org/"
SRC_URI="http://bluegriffon.org/freshmeat/${PV}/${PN}-${PV}.Ubuntu16.04-x86_64.tar.bz2"
LICENSE="GPL-2"
SLOT="0"
KEYWORDS="amd64 ~x86"

RDEPEND="
	app-misc/mime-types
	x11-libs/libXt
	media-libs/libpng
	dev-libs/nss
	dev-util/desktop-file-utils
	x11-misc/shared-mime-info
	>=x11-libs/gtk+-2.2:2
"
DEPEND="${RDEPEND}"

S=${WORKDIR}/${MY_PN}

src_install() {

	declare BLUEGRIFFON_HOME=/opt/${MY_PN}

	# Install icon and .desktop for menu entry
	#newicon "${S}"/chrome/icons/default/default48.png ${PN}.png

	make_desktop_entry /usr/bin/${PN} 'BlueGriffon' ${PN} "Development;IDE"

	# Install bluegriffon in /opt
	dodir ${BLUEGRIFFON_HOME%/*}
	mv "${S}" "${D}"${BLUEGRIFFON_HOME} || die


    ######################################################
    #### still does not work: start with the 
    ####  /opt/bluegriffon-bin              
    #
    #	# Create /usr/bin/bluegriffon-bin
    #	dodir /usr/bin/
    #	cat <<-EOF >"${D}"/usr/bin/${PN}
    #	#!/bin/sh
    #	unset LD_PRELOAD
    #	LD_LIBRARY_PATH="/opt/BlueGriffon/"
    #	GTK_PATH=/usr/lib/gtk-2.0/
    #	exec /opt/${MY_PN}/${PN} "\$@"
    #	EOF
    #	fperms 0755 /usr/bin/${PN}
    #######################################################



	# Create /etc/revdep-rebuild/10bluegriffon-bin
	dodir /etc/revdep-rebuild
	cat <<-EOF >"${D}"/etc/revdep-rebuild/10${PN}
	SEARCH_DIRS_MASK="/opt/BlueGriffon"
	EOF


	dosym /opt/${MY_PN}/bluegriffon /usr/bin/${PN} || die "dosym failed"

    ############ bluegriffon requires a libpng12.so.0 (what would be a better solution?)

	dosym /usr/lib/libpng.so ${BLUEGRIFFON_HOME}/libpng12.so.0 || die "dosym failed"
}

