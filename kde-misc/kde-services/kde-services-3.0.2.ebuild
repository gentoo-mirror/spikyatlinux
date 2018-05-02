# Copyright 1999-2017 Gentoo Foundation
# Distributed under the terms of the GNU General Public License v2

EAPI="6"

DESCRIPTION="kde-service multifunction"
HOMEPAGE="https://opendesktop.org/content/show.php/kde-services?content=147065"
SRC_URI="http://sourceforge.net/projects/${PN}/files/Source-Code/${PN}-${PV}.tar.bz2"

LICENSE="GPL"
SLOT="0"

inherit eutils

KEYWORDS="~amd64 ~x86"

RDEPEND=">=kde-frameworks/oxygen-icons-5.21:5"
DEPEND="${RDEPEND}
    app-accessibility/festival
    app-arch/tar
    app-arch/unrar
    app-arch/zip
    app-cdr/cdrtools
    app-cdr/isomd5sum
    app-crypt/gnupg
    app-misc/mc
    app-text/ghostscript-gpl
    app-text/poppler
    app-text/recode
    dev-haskell/iproute
    dev-qt/qtcore:4
    dev-util/platform-tools
    dev-util/pkgconfig
    kde-frameworks/kdelibs:4
    media-fonts/liberation-fonts
    media-gfx/imagemagick
    media-libs/exiftool
    media-sound/sox
    media-video/dvdauthor
    media-video/ffmpeg
    media-video/mkvtoolnix
    media-video/transcode
    media-video/vlc
    net-fs/cifs-utils
    net-fs/samba
    net-fs/sshfs
    net-misc/wget
    net-misc/youtube-dl
    sys-apps/diffutils
    sys-apps/dmidecode
    sys-apps/findutils
    sys-apps/pv
    sys-apps/gawk
    sys-apps/util-linux
    sys-fs/fuseiso
    sys-process/htop
    sys-process/procps
    sys-process/psmisc
    www-client/lynx
    x11-misc/shared-mime-info
    x11-misc/xdg-utils
    "
    
S=${WORKDIR}/${PN}-${PV}

#RESTRICT="strip"

src_compile() {
	cd "${S}"
    echo "${S}"
}

src_install() {
    cd "${S}"
    echo "${S}"
   sed -e '/mkdir\ -p \$\(PREFIXservicetypes5\)/ s/^#*/#/' -i Makefile
   sed -e '/servicetypes\/\*/ s/^#*/#/' -i Makefile
  
    sed -e '/xdg-mime/ s/system/user/' -i Makefile
    sed -e '/xdg-mime install/ s/^#*/#/' -i Makefile
    sed -e '/update-mime-database/ s/^#*/#/' -i Makefile
    sed -e '/xdg-icon-resource/ s/^#*/#/' -i Makefile
    sed -e '/xdg-desktop-menu/ s/^#*/#/' -i Makefile 
    
    emake "RPM_BUILD_ROOT=${D}" install 
    rm "${D}"/usr/share/applications/System_Tools*kernel*
    #rm "${D}"/usr/share/applications/*package*
   #cp "${S}"/ServiceMenus/System-Tools_addtoservicemenu.desktop "${D}"/usr/share/kde4/services/ServiceMenus/System-Tools_addtoservicemenu.desktop
}
