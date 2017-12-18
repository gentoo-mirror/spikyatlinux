# Copyright 1999-2016 Gentoo Foundation
# Distributed under the terms of the GNU General Public License v2

EAPI="6"

inherit eutils systemd

DESCRIPTION="Universal Media Server is a DLNA-compliant UPnP Media Server, with rar2fs support"
HOMEPAGE="http://www.universalmediaserver.com/"
SRC_URI="mirror://sourceforge/project/unimediaserver/Official%20Releases/Linux/UMS-${PV}.tgz"

LICENSE="GPL-2"
SLOT="0"
KEYWORDS="~amd64 ~x86 ~arm64"
IUSE="+dcraw +ffmpeg +libmediainfo +libzen +mplayer +rar2fs +multiuser tsmuxer +vlc systemd"

DEPEND="app-arch/unzip"
RDEPEND=">=virtual/jre-1.8.0
	dcraw? ( media-gfx/dcraw )
	ffmpeg? ( media-video/ffmpeg[encode] )
	libmediainfo? ( media-libs/libmediainfo )
	libzen? ( media-libs/libzen )
	mplayer? ( media-video/mplayer[encode] )
	rar2fs? ( sys-fs/rar2fs ) 
	tsmuxer? ( media-video/tsmuxer )
	vlc? ( media-video/vlc[encode] )
	systemd? ( sys-apps/systemd:0= )"

S=${WORKDIR}/ums-${PV}
UMS_HOME=/opt/${PN}

src_prepare() {
	if use multiuser; then
		cat > ${PN} <<-EOF
		#!/bin/sh
		if [ ! -e ~/.${PN} ]; then
			echo "Copying ${UMS_HOME} to ~/.${PN}"
			cp -pPR "${UMS_HOME}" ~/.${PN}
		fi
		export UMS_HOME=\${HOME}/.${PN}
		exec "\${UMS_HOME}/UMS.sh" "\$@"
		EOF
	else
		cat > ${PN} <<-EOF
		#!/bin/sh
		export UMS_HOME=${UMS_HOME}
		exec "\${UMS_HOME}/UMS.sh" "\$@"
		EOF
	fi

	cat > ${PN}.desktop <<-EOF
	[Desktop Entry]
	Name=Universal Media Server
	GenericName=Media Server
	Exec=${PN}
	Icon=${PN}
	Type=Application
	Categories=Network;
	EOF

	unzip -j ums.jar resources/images/icon-{32,256}.png || die
	
	eapply_user
}

src_install() {
	dobin ${PN}

	exeinto ${UMS_HOME}
	doexe UMS.sh

	insinto ${UMS_HOME}
	doins -r ums.jar *.conf documentation plugins renderers *.xml
	use tsmuxer && dosym /opt/tsmuxer/bin/tsMuxeR ${UMS_HOME}/linux/tsMuxeR
	#dodoc CHANGELOG.txt README.txt

	newicon -s 32 icon-32.png ${PN}.png
	newicon -s 256 icon-256.png ${PN}.png

	domenu ${PN}.desktop

	newconfd "${FILESDIR}/${PN}.confd" ${PN}
	newinitd "${FILESDIR}/${PN}.initd" ${PN}
	systemd_newunit "${FILESDIR}"/universalmediaserver-rar2fs_at.service 'universalmediaserver-rar2fs@.service'
}

pkg_postinst() {
	if [[ -z ${REPLACING_VERSIONS} ]]; then
		ewarn "Don't forget to disable transcoding engines for software"
		ewarn "that you don't have installed (such as having the ffmpeg"
		ewarn "transcoding engine enabled when you only have mencoder)."
		ewarn ""
		ewarn "Also don´t forget to edit /etc/conf.d/universalmediaserver-rar2fs"
		ewarn ""
		ewarn "systemd users have to start service with username, like so"
		ewarn "systemctl start|enable universalmediaserver-rar2fs@user.service"
	elif use multiuser; then
		ewarn "Remember to refresh the files in ~/.config/UMS/"
	fi
}
