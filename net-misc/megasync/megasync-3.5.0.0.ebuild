# Copyright 1999-2017 Gentoo Foundation
# Distributed under the terms of the GNU General Public License v2

EAPI=6

inherit eutils multilib qmake-utils autotools versionator git-r3

DESCRIPTION="Automated syncing between your computers and your MEGA cloud drive"
HOMEPAGE="https://mega.nz/ https://github.com/meganz/MEGAsync"
EGIT_REPO_URI="https://github.com/meganz/MEGAsync.git"
EGIT_COMMIT="5eb57c4f35ad121aa05f640e74ace206114f0a86"

LICENSE="MEGA-Code-Review BSD-2"
SLOT="0"
KEYWORDS="~x86 ~amd64"

IUSE="+cryptopp +sqlite +zlib +curl freeimage readline examples threads qt5 java php python"

DEPEND="
	dev-lang/swig
	app-doc/doxygen
	!qt5? ( 
		dev-qt/qtcore:4
		dev-qt/qtgui:4
		dev-qt/qtdbus:4
		)
	qt5? ( 
		dev-qt/qtcore:5
		dev-qt/linguist-tools
		dev-qt/qtwidgets:5
		dev-qt/qtgui:5
		dev-qt/qtconcurrent:5
		dev-qt/qtnetwork:5
		dev-qt/qtdbus:5
		)"
RDEPEND="${DEPEND}
		dev-libs/sni-qt
		x11-themes/hicolor-icon-theme
		dev-libs/openssl
		dev-libs/libgcrypt
		media-libs/libpng
		net-dns/c-ares
		cryptopp? ( dev-libs/crypto++ )
		app-arch/xz-utils
		dev-libs/libuv
		sqlite? ( dev-db/sqlite:3 )
		dev-libs/libsodium
		zlib? ( sys-libs/zlib )
		curl? ( net-misc/curl[ssl,curl_ssl_openssl] )
		freeimage? ( media-libs/freeimage )
		readline? ( sys-libs/readline:0 )
		"

src_prepare() {
	default
    
    cp -r ../sdk-${SDK_COMMIT}/* src/MEGASync/mega
    EPATCH_OPTS="-p0" epatch "${FILESDIR}/MEGAsync-3.1.4.0_Linux.patch"

	cd src/MEGASync/mega || die
	eautoreconf
}

src_configure(){
	cd src/MEGASync/mega || die
	econf \
		"--disable-silent-rules" \
		"--disable-curl-checks" \
		"--disable-megaapi" \
		$(use_with zlib) \
		$(use_with sqlite) \
		$(use_with cryptopp) \
		"--with-cares" \
		$(use_with curl) \
		"--without-termcap" \
		$(use_enable threads posix-threads) \
		"--with-sodium" \
		$(use_with freeimage) \
		$(use_with readline) \
		$(use_enable examples) \
		$(use_enable java) \
		$(use_enable php) \
		$(use_enable python) \
		"--enable-chat" \
		"--enable-gcc-hardening" 
	cd ../..
	local myeqmakeargs=(
		MEGA.pro
		CONFIG+="release"
	)
	cd "${S}"/src
		if use qt5; then
		eqmake5 ${myeqmakeargs[@]}
		$(qt5_get_bindir)/lrelease MEGASync/MEGASync.pro
	else
		eqmake4 ${myeqmakeargs[@]}
		$(qt4_get_bindir)/lrelease MEGASync/MEGASync.pro
	fi
}

src_compile() {
	cd src || die
	emake INSTALL_ROOT="${D}" || die
}

src_install(){
	insinto usr/share/licenses/${PN}
	doins LICENCE.md installer/terms.txt
	cd src/MEGASync
	dobin ${PN}
	cd platform/linux/data
	insinto usr/share/applications
	doins ${PN}.desktop
	cd icons/hicolor
	for size in 16x16 32x32 48x48 128x128 256x256;do
		doicon -s $size $size/apps/mega.png
	done
}
