# Copyright 1999-2024 Gentoo Authors
# Distributed under the terms of the GNU General Public License v2

# Autogenerated by pycargoebuild 0.10

EAPI=8

CRATES="
	adler32@1.2.0
	adler@1.0.2
	aes@0.8.3
	aho-corasick@1.1.2
	android-tzdata@0.1.1
	android_system_properties@0.1.5
	anstream@0.6.4
	anstyle-parse@0.2.2
	anstyle-query@1.0.0
	anstyle-wincon@3.0.1
	anstyle@1.0.4
	anyhow@1.0.75
	arc-swap@1.6.0
	arrayref@0.3.7
	arrayvec@0.7.4
	async-trait@0.1.73
	audio_checker@0.1.0
	autocfg@1.1.0
	base64@0.21.4
	base64ct@1.6.0
	bincode@1.3.3
	bit_field@0.10.2
	bitflags@1.3.2
	bitflags@2.4.0
	bk-tree@0.5.0
	blake3@1.5.0
	block-buffer@0.10.4
	block-padding@0.3.3
	block@0.1.6
	bumpalo@3.14.0
	bytemuck@1.14.0
	byteorder@1.5.0
	bzip2-sys@0.1.11+1.0.8
	bzip2@0.4.4
	cairo-rs@0.18.2
	cairo-sys-rs@0.18.2
	cbc@0.1.2
	cc@1.0.83
	cfb@0.7.3
	cfg-expr@0.15.5
	cfg-if@1.0.0
	chrono@0.4.31
	cipher@0.4.4
	clap@4.4.6
	clap_builder@4.4.6
	clap_derive@4.4.2
	clap_lex@0.5.1
	color_quant@1.1.0
	colorchoice@1.0.0
	const_fn@0.4.9
	constant_time_eq@0.1.5
	constant_time_eq@0.3.0
	core-foundation-sys@0.8.4
	cpufeatures@0.2.9
	crc32fast@1.3.2
	crossbeam-channel@0.5.8
	crossbeam-deque@0.8.3
	crossbeam-epoch@0.9.15
	crossbeam-utils@0.8.16
	crunchy@0.2.2
	crypto-common@0.1.6
	darling@0.14.4
	darling_core@0.14.4
	darling_macro@0.14.4
	dashmap@5.5.3
	datasize@0.2.15
	datasize_derive@0.2.15
	deflate@1.0.0
	deranged@0.3.9
	digest@0.10.7
	directories-next@2.0.0
	dirs-sys-next@0.1.2
	displaydoc@0.2.4
	doc-comment@0.3.3
	either@1.9.0
	encoding_rs@0.8.33
	enumn@0.1.12
	equivalent@1.0.1
	errno@0.3.5
	exr@1.71.0
	fastrand@2.0.1
	fax@0.2.0
	fax_derive@0.1.0
	fdeflate@0.3.0
	ffmpeg_cmdline_utils@0.1.3
	field-offset@0.3.6
	find-crate@0.6.3
	finl_unicode@1.2.0
	flate2@1.0.28
	fluent-bundle@0.15.2
	fluent-langneg@0.13.0
	fluent-syntax@0.11.0
	fluent@0.16.0
	flume@0.11.0
	fnv@1.0.7
	form_urlencoded@1.2.0
	four-cc@0.2.0
	fs_extra@1.3.0
	fun_time@0.3.3
	fun_time_derive@0.3.3
	futures-channel@0.3.28
	futures-core@0.3.28
	futures-executor@0.3.28
	futures-io@0.3.28
	futures-macro@0.3.28
	futures-sink@0.3.28
	futures-task@0.3.28
	futures-util@0.3.28
	futures@0.3.28
	gdk-pixbuf-sys@0.18.0
	gdk-pixbuf@0.18.0
	gdk4-sys@0.7.2
	gdk4@0.7.3
	generator@0.7.5
	generic-array@0.14.7
	getrandom@0.2.10
	gif@0.12.0
	gio-sys@0.18.1
	gio@0.18.2
	glib-macros@0.18.2
	glib-sys@0.18.1
	glib@0.18.2
	glob@0.3.1
	globalcache@0.2.0
	gobject-sys@0.18.0
	graphene-rs@0.18.1
	graphene-sys@0.18.1
	gsk4-sys@0.7.3
	gsk4@0.7.3
	gtk4-macros@0.7.2
	gtk4-sys@0.7.3
	gtk4@0.7.3
	half@2.2.1
	hamming@0.1.3
	handsome_logger@0.8.0
	hashbrown@0.12.3
	hashbrown@0.14.1
	heck@0.4.1
	hmac@0.12.1
	humansize@2.1.3
	i18n-config@0.4.6
	i18n-embed-fl@0.7.0
	i18n-embed-impl@0.8.2
	i18n-embed@0.14.1
	iana-time-zone-haiku@0.1.2
	iana-time-zone@0.1.57
	ident_case@1.0.1
	idna@0.4.0
	image@0.24.7
	image_hasher@1.2.0
	imagepipe@0.5.0
	indexmap@1.9.3
	indexmap@2.0.2
	infer@0.15.0
	inflate@0.4.5
	inout@0.1.3
	intl-memoizer@0.5.1
	intl_pluralrules@7.0.2
	is-docker@0.2.0
	is-wsl@0.4.0
	istring@0.3.4
	itertools@0.10.5
	itoa@1.0.9
	jpeg-decoder@0.3.0
	js-sys@0.3.64
	lazy_static@1.4.0
	lebe@0.5.2
	libc@0.2.149
	libheif-rs@0.18.0
	libheif-sys@1.14.2
	libm@0.2.8
	linked-hash-map@0.5.6
	linux-raw-sys@0.4.10
	locale_config@0.3.0
	lock_api@0.4.10
	lofty@0.16.0
	lofty_attr@0.9.0
	log@0.4.20
	loom@0.5.6
	malloc_buf@0.0.6
	matchers@0.1.0
	md5@0.7.0
	memchr@2.6.4
	memoffset@0.9.0
	mime@0.3.17
	mime_guess@2.0.4
	miniz_oxide@0.7.1
	multicache@0.6.1
	nu-ansi-term@0.46.0
	num-complex@0.3.1
	num-complex@0.4.4
	num-integer@0.1.45
	num-rational@0.4.1
	num-traits@0.2.17
	num_threads@0.1.6
	objc-foundation@0.1.1
	objc@0.2.7
	objc_id@0.1.1
	ogg_pager@0.5.0
	once_cell@1.18.0
	open@5.0.0
	overload@0.1.1
	pango-sys@0.18.0
	pango@0.18.0
	parking_lot@0.12.1
	parking_lot_core@0.9.8
	password-hash@0.4.2
	paste@1.0.14
	pathdiff@0.2.1
	pbkdf2@0.11.0
	pdf@0.8.1
	pdf_derive@0.1.22
	percent-encoding@2.3.0
	pin-project-lite@0.2.13
	pin-utils@0.1.0
	pkg-config@0.3.27
	png@0.17.10
	powerfmt@0.2.0
	ppv-lite86@0.2.17
	primal-check@0.3.3
	proc-macro-crate@1.3.1
	proc-macro-error-attr@1.0.4
	proc-macro-error@1.0.4
	proc-macro2@1.0.69
	qoi@0.4.1
	quote@1.0.33
	rand@0.8.5
	rand_chacha@0.3.1
	rand_core@0.6.4
	rawloader@0.37.1
	rayon-core@1.12.0
	rayon@1.8.0
	realfft@3.3.0
	redox_syscall@0.2.16
	redox_syscall@0.3.5
	redox_users@0.4.3
	regex-automata@0.1.10
	regex-automata@0.4.1
	regex-syntax@0.6.29
	regex-syntax@0.8.1
	regex@1.10.0
	rubato@0.12.0
	rust-embed-impl@8.0.0
	rust-embed-utils@8.0.0
	rust-embed@8.0.0
	rustc-hash@1.1.0
	rustc_version@0.4.0
	rustdct@0.6.0
	rustdct@0.7.1
	rustfft@5.1.1
	rustfft@6.1.0
	rustix@0.38.19
	rustversion@1.0.14
	rusty-chromaprint@0.1.3
	ryu@1.0.15
	same-file@1.0.6
	scoped-tls@1.0.1
	scopeguard@1.2.0
	self_cell@0.10.2
	semver@1.0.20
	serde@1.0.189
	serde_derive@1.0.189
	serde_json@1.0.107
	serde_spanned@0.6.3
	serde_yaml@0.8.26
	sha1@0.10.6
	sha2@0.10.8
	sharded-slab@0.1.7
	simd-adler32@0.3.7
	slab@0.4.9
	smallvec@1.11.1
	snafu-derive@0.7.5
	snafu@0.7.5
	spin@0.9.8
	state@0.6.0
	strength_reduce@0.2.4
	stringprep@0.1.4
	strsim@0.10.0
	subtle@2.5.0
	symphonia-bundle-flac@0.5.3
	symphonia-bundle-mp3@0.5.3
	symphonia-codec-aac@0.5.3
	symphonia-codec-adpcm@0.5.3
	symphonia-codec-alac@0.5.3
	symphonia-codec-pcm@0.5.3
	symphonia-codec-vorbis@0.5.3
	symphonia-core@0.5.3
	symphonia-format-isomp4@0.5.3
	symphonia-format-mkv@0.5.3
	symphonia-format-ogg@0.5.3
	symphonia-format-wav@0.5.3
	symphonia-metadata@0.5.3
	symphonia-utils-xiph@0.5.3
	symphonia@0.5.3
	syn@1.0.109
	syn@2.0.38
	system-deps@6.1.2
	target-lexicon@0.12.11
	tempfile@3.8.0
	termcolor@1.3.0
	thiserror-impl@1.0.49
	thiserror@1.0.49
	thread_local@1.1.7
	tiff@0.9.0
	time-core@0.1.2
	time-macros@0.2.15
	time@0.3.30
	tinystr@0.7.4
	tinyvec@1.6.0
	tinyvec_macros@0.1.1
	toml@0.5.11
	toml@0.8.2
	toml_datetime@0.6.3
	toml_edit@0.19.15
	toml_edit@0.20.2
	tracing-attributes@0.1.27
	tracing-core@0.1.32
	tracing-log@0.1.3
	tracing-subscriber@0.3.17
	tracing@0.1.39
	transpose@0.2.2
	trash@3.1.0
	triple_accel@0.3.4
	type-map@0.4.0
	typenum@1.17.0
	tz-rs@0.6.14
	unic-langid-impl@0.9.1
	unic-langid@0.9.1
	unicase@2.7.0
	unicode-bidi@0.3.13
	unicode-ident@1.0.12
	unicode-normalization@0.1.22
	url@2.4.1
	utf8parse@0.2.1
	uuid@1.4.1
	valuable@0.1.0
	version-compare@0.1.1
	version_check@0.9.4
	vid_dup_finder_lib@0.1.1
	walkdir@2.4.0
	wasi@0.11.0+wasi-snapshot-preview1
	wasm-bindgen-backend@0.2.87
	wasm-bindgen-macro-support@0.2.87
	wasm-bindgen-macro@0.2.87
	wasm-bindgen-shared@0.2.87
	wasm-bindgen@0.2.87
	weezl@0.1.7
	winapi-i686-pc-windows-gnu@0.4.0
	winapi-util@0.1.6
	winapi-x86_64-pc-windows-gnu@0.4.0
	winapi@0.3.9
	windows-sys@0.48.0
	windows-targets@0.42.2
	windows-targets@0.48.5
	windows@0.44.0
	windows@0.48.0
	windows_aarch64_gnullvm@0.42.2
	windows_aarch64_gnullvm@0.48.5
	windows_aarch64_msvc@0.42.2
	windows_aarch64_msvc@0.48.5
	windows_i686_gnu@0.42.2
	windows_i686_gnu@0.48.5
	windows_i686_msvc@0.42.2
	windows_i686_msvc@0.48.5
	windows_x86_64_gnu@0.42.2
	windows_x86_64_gnu@0.48.5
	windows_x86_64_gnullvm@0.42.2
	windows_x86_64_gnullvm@0.48.5
	windows_x86_64_msvc@0.42.2
	windows_x86_64_msvc@0.48.5
	winnow@0.5.17
	xxhash-rust@0.8.7
	yaml-rust@0.4.5
	zip@0.6.6
	zune-inflate@0.2.54
"

inherit cargo desktop

DESCRIPTION="CLI frontend of Czkawka"
HOMEPAGE="https://github.com/qarmin/czkawka"
SRC_URI="
	https://github.com/qarmin/${PN}/archive/refs/tags/${PV}.tar.gz -> ${P}.tar.gz
	${CARGO_CRATE_URIS}"

LICENSE="MIT Apache-2.0 Apache-2.0-with-LLVM-exceptions BSD-2 BSD Boost-1.0 CC0-1.0 LGPL-2.1 LGPL-3
	MIT MPL-2.0 Unicode-DFS-2016 ZLIB"
SLOT="0"
KEYWORDS="~amd64"
IUSE="heif"

DEPEND="dev-libs/glib
	gui-libs/gtk
	x11-libs/cairo
	x11-libs/gdk-pixbuf
	x11-libs/pango
	heif? ( media-libs/libheif )"
RDEPEND="${DEPEND}"

QA_FLAGS_IGNORED="usr/bin/${PN}_cli usr/bin/${PN}_gui"

src_configure() {
	filter-lto
	local myfeatures=(
		"$(usev heif)"
	)
	cargo_src_configure
}

src_install() {
	dobin "target/release/${PN}"_{gui,cli}
	dosym "${PN}_cli" "/usr/bin/${PN}"
	doicon "snap/gui/${PN}.png"
	make_desktop_entry "${PN}_gui" "${PN^}" "${PN}" Utility
	einstalldocs
}
