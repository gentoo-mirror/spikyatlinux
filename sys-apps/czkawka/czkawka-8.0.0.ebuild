# Copyright 1999-2025 Gentoo Authors
# Distributed under the terms of the GNU General Public License v2

# Autogenerated by pycargoebuild 0.10

EAPI=8

CRATES="
	ab_glyph@0.2.29
	ab_glyph_rasterizer@0.1.8
	adler2@2.0.0
	adler32@1.2.0
	adler@1.0.2
	aes@0.8.4
	ahash@0.8.11
	aho-corasick@1.1.3
	aligned-vec@0.5.0
	allocator-api2@0.2.18
	android-activity@0.6.0
	android-properties@0.2.2
	android-tzdata@0.1.1
	android_system_properties@0.1.5
	anstream@0.6.15
	anstyle-parse@0.2.5
	anstyle-query@1.1.1
	anstyle-wincon@3.0.4
	anstyle@1.0.8
	anyhow@1.0.89
	approx@0.5.1
	arbitrary@1.3.2
	arc-swap@1.7.1
	arg_enum_proc_macro@0.3.4
	arrayref@0.3.9
	arrayvec@0.7.6
	as-raw-xcb-connection@1.0.1
	ash@0.37.3+1.3.251
	ashpd@0.9.2
	async-broadcast@0.7.1
	async-channel@2.3.1
	async-executor@1.13.1
	async-fs@2.1.2
	async-io@2.3.4
	async-lock@3.4.0
	async-net@2.0.0
	async-process@2.3.0
	async-recursion@1.1.1
	async-signal@0.2.10
	async-task@4.7.1
	async-trait@0.1.83
	atomic-waker@1.1.2
	audio_checker@0.1.0
	auto_enums@0.8.6
	autocfg@1.4.0
	av-data@0.4.3
	av1-grain@0.2.3
	avif-serialize@0.8.1
	base64@0.22.1
	basic-toml@0.1.9
	bincode@1.3.3
	bindgen@0.69.5
	bit_field@0.10.2
	bitflags@1.3.2
	bitflags@2.6.0
	bitreader@0.3.10
	bitstream-io@2.5.3
	bk-tree@0.5.0
	blake3@1.5.4
	block-buffer@0.10.4
	block-padding@0.3.3
	block2@0.5.1
	block@0.1.6
	blocking@1.6.1
	borsh@1.5.1
	built@0.7.4
	bumpalo@3.16.0
	by_address@1.2.1
	byte-slice-cast@1.2.2
	bytemuck@1.18.0
	bytemuck_derive@1.8.0
	byteorder-lite@0.1.0
	byteorder@1.5.0
	bytes@1.7.2
	bzip2-sys@0.1.11+1.0.8
	bzip2@0.4.4
	cairo-rs@0.20.1
	cairo-sys-rs@0.20.0
	calloop-wayland-source@0.3.0
	calloop@0.13.0
	calloop@0.14.1
	cbc@0.1.2
	cc@1.1.28
	cesu8@1.1.0
	cexpr@0.6.0
	cfb@0.7.3
	cfg-expr@0.15.8
	cfg-expr@0.17.0
	cfg-if@1.0.0
	cfg_aliases@0.2.1
	cgl@0.3.2
	chrono@0.4.38
	cipher@0.4.4
	clang-sys@1.8.1
	clap@4.5.20
	clap_builder@4.5.20
	clap_derive@4.5.18
	clap_lex@0.7.2
	clipboard-win@3.1.1
	clru@0.6.2
	cocoa-foundation@0.1.2
	cocoa@0.25.0
	codemap-diagnostic@0.1.2
	codemap@0.1.3
	color_quant@1.1.0
	colorchoice@1.0.2
	combine@4.6.7
	concurrent-queue@2.5.0
	console@0.15.8
	const-field-offset-macro@0.1.5
	const-field-offset@0.1.5
	const_fn@0.4.10
	constant_time_eq@0.3.1
	convert_case@0.4.0
	copypasta@0.10.1
	core-foundation-sys@0.8.7
	core-foundation@0.10.0
	core-foundation@0.9.4
	core-graphics-types@0.1.3
	core-graphics-types@0.2.0
	core-graphics@0.23.2
	core-graphics@0.24.0
	core-text@20.1.0
	core2@0.4.0
	countme@3.0.1
	cpufeatures@0.2.14
	crc32fast@1.4.2
	critical-section@1.1.3
	crossbeam-channel@0.5.13
	crossbeam-deque@0.8.5
	crossbeam-epoch@0.9.18
	crossbeam-queue@0.3.11
	crossbeam-utils@0.8.20
	crunchy@0.2.2
	crypto-common@0.1.6
	ctor-lite@0.1.0
	ctrlc@3.4.5
	cursor-icon@1.1.0
	darling@0.14.4
	darling_core@0.14.4
	darling_macro@0.14.4
	dary_heap@0.3.6
	dashmap@6.1.0
	data-encoding@2.6.0
	data-url@0.3.1
	datasize@0.2.15
	datasize_derive@0.2.15
	dav1d-sys@0.8.2
	dav1d@0.10.3
	dcv-color-primitives@0.6.1
	deflate@1.0.0
	deranged@0.3.11
	derive_arbitrary@1.3.2
	derive_more@0.99.18
	derive_utils@0.14.2
	digest@0.10.7
	directories-next@2.0.0
	dirs-sys-next@0.1.2
	dispatch@0.2.0
	displaydoc@0.2.5
	dlib@0.5.2
	doc-comment@0.3.3
	downcast-rs@1.2.1
	dpi@0.1.1
	drm-ffi@0.8.0
	drm-fourcc@2.2.0
	drm-sys@0.7.0
	drm@0.12.0
	dwrote@0.11.2
	either@1.13.0
	encode_unicode@0.3.6
	encoding_rs@0.8.34
	endi@1.1.0
	enumflags2@0.7.10
	enumflags2_derive@0.7.10
	enumn@0.1.14
	equivalent@1.0.1
	errno@0.3.9
	euclid@0.22.11
	event-listener-strategy@0.5.2
	event-listener@5.3.1
	exr@1.72.0
	extended@0.1.0
	fallible_collections@0.4.9
	fastrand@2.1.1
	fax@0.2.4
	fax_derive@0.1.0
	fdeflate@0.3.5
	femtovg@0.9.2
	ffmpeg_cmdline_utils@0.1.3
	field-offset@0.3.6
	file-id@0.2.1
	filetime@0.2.25
	find-crate@0.6.3
	flate2@1.0.34
	float-cmp@0.9.0
	fluent-bundle@0.15.3
	fluent-langneg@0.13.0
	fluent-syntax@0.11.1
	fluent@0.16.1
	flume@0.11.0
	fnv@1.0.7
	fontconfig-parser@0.5.7
	fontdb@0.18.0
	fontdue@0.9.2
	foreign-types-macros@0.2.3
	foreign-types-shared@0.3.1
	foreign-types@0.5.0
	form_urlencoded@1.2.1
	four-cc@0.2.0
	fs_extra@1.3.0
	fun_time@0.3.4
	fun_time_derive@0.3.4
	futures-channel@0.3.31
	futures-core@0.3.31
	futures-executor@0.3.31
	futures-io@0.3.31
	futures-lite@2.3.0
	futures-macro@0.3.31
	futures-sink@0.3.31
	futures-task@0.3.31
	futures-util@0.3.31
	gbm-sys@0.3.1
	gbm@0.15.0
	gdk-pixbuf-sys@0.20.4
	gdk-pixbuf@0.20.4
	gdk4-sys@0.9.2
	gdk4@0.9.2
	generator@0.7.5
	generic-array@0.14.7
	geo-types@0.7.13
	gethostname@0.4.3
	getrandom@0.2.15
	gif@0.13.1
	gio-sys@0.20.4
	gio@0.20.4
	gl_generator@0.14.0
	glib-macros@0.20.4
	glib-sys@0.20.4
	glib@0.20.4
	glob@0.3.1
	globalcache@0.2.4
	glow@0.13.1
	glutin-winit@0.5.0
	glutin@0.32.1
	glutin_egl_sys@0.7.0
	glutin_glx_sys@0.6.0
	glutin_wgl_sys@0.6.0
	gobject-sys@0.20.4
	graphene-rs@0.20.4
	graphene-sys@0.20.4
	gsk4-sys@0.9.2
	gsk4@0.9.2
	gtk4-macros@0.9.1
	gtk4-sys@0.9.2
	gtk4@0.9.2
	half@2.4.1
	hamming@0.1.3
	handsome_logger@0.8.0
	hashbrown@0.12.3
	hashbrown@0.13.2
	hashbrown@0.14.5
	hashbrown@0.15.0
	heck@0.4.1
	heck@0.5.0
	hermit-abi@0.3.9
	hermit-abi@0.4.0
	hex@0.4.3
	hmac@0.12.1
	home@0.5.9
	humansize@2.1.3
	i-slint-backend-linuxkms@1.8.0
	i-slint-backend-selector@1.8.0
	i-slint-backend-winit@1.8.0
	i-slint-common@1.8.0
	i-slint-compiler@1.8.0
	i-slint-core-macros@1.8.0
	i-slint-core@1.8.0
	i-slint-renderer-femtovg@1.8.0
	i-slint-renderer-skia@1.8.0
	i18n-config@0.4.7
	i18n-embed-fl@0.9.1
	i18n-embed-impl@0.8.3
	i18n-embed@0.15.0
	iana-time-zone-haiku@0.1.2
	iana-time-zone@0.1.61
	ident_case@1.0.1
	idna@0.5.0
	image-webp@0.1.3
	image@0.24.9
	image@0.25.2
	image_hasher@2.0.0
	imagepipe@0.5.0
	imagesize@0.12.0
	imgref@1.10.1
	indexmap@1.9.3
	indexmap@2.6.0
	indicatif@0.17.8
	infer@0.16.0
	inout@0.1.3
	input-sys@1.18.0
	input@0.9.1
	instant@0.1.13
	integer-sqrt@0.1.5
	interpolate_name@0.2.4
	intl-memoizer@0.5.2
	intl_pluralrules@7.0.2
	io-lifetimes@1.0.11
	is-docker@0.2.0
	is-wsl@0.4.0
	is_terminal_polyfill@1.70.1
	iso6709parse@0.1.0
	istring@0.3.4
	itertools@0.10.5
	itertools@0.12.1
	itertools@0.13.0
	itoa@1.0.11
	jni-sys@0.3.0
	jni@0.21.1
	jobserver@0.1.32
	jpeg-decoder@0.3.1
	js-sys@0.3.71
	jxl-bitstream@0.4.1
	jxl-coding@0.4.1
	jxl-color@0.8.0
	jxl-frame@0.10.0
	jxl-grid@0.5.0
	jxl-image@0.10.0
	jxl-modular@0.8.0
	jxl-oxide@0.9.0
	jxl-render@0.9.0
	jxl-threadpool@0.1.1
	jxl-vardct@0.8.0
	khronos_api@3.1.0
	kurbo@0.11.1
	lazy-bytes-cast@5.0.1
	lazy_static@1.5.0
	lazycell@1.3.0
	lebe@0.5.2
	libc@0.2.159
	libflate@2.1.0
	libflate_lz77@2.1.0
	libfuzzer-sys@0.4.7
	libheif-rs@0.18.0
	libheif-sys@1.14.2
	libloading@0.7.4
	libloading@0.8.5
	libm@0.2.8
	libraw-rs-sys@0.0.4+libraw-0.20.1
	libraw-rs@0.0.4
	libredox@0.0.2
	libredox@0.1.3
	libudev-sys@0.1.4
	linked-hash-map@0.5.6
	linked_hash_set@0.1.4
	linux-raw-sys@0.4.14
	linux-raw-sys@0.6.5
	locale_config@0.3.0
	lock_api@0.4.12
	lockfree-object-pool@0.1.6
	lofty@0.21.1
	lofty_attr@0.11.0
	log@0.4.22
	loom@0.5.6
	loop9@0.1.5
	lru@0.12.5
	lyon_algorithms@1.0.4
	lyon_extra@1.0.2
	lyon_geom@1.0.5
	lyon_path@1.0.5
	malloc_buf@0.0.6
	matchers@0.1.0
	maybe-rayon@0.1.1
	md5@0.7.0
	memchr@2.7.4
	memmap2@0.9.5
	memoffset@0.9.1
	metal@0.27.0
	mime@0.3.17
	mime_guess@2.0.5
	minimal-lexical@0.2.1
	miniz_oxide@0.7.4
	miniz_oxide@0.8.0
	mp4parse@0.17.0
	multicache@0.6.1
	ndk-context@0.1.1
	ndk-sys@0.6.0+11769913
	ndk@0.9.0
	new_debug_unreachable@1.0.6
	nix@0.29.0
	nom-exif@2.1.0
	nom@7.1.3
	noop_proc_macro@0.3.0
	nu-ansi-term@0.46.0
	num-bigint@0.4.6
	num-complex@0.3.1
	num-complex@0.4.6
	num-conv@0.1.0
	num-derive@0.4.2
	num-integer@0.1.46
	num-rational@0.4.2
	num-traits@0.2.19
	num_enum@0.7.3
	num_enum_derive@0.7.3
	num_threads@0.1.7
	number_prefix@0.4.0
	objc-foundation@0.1.1
	objc-sys@0.3.5
	objc2-app-kit@0.2.2
	objc2-cloud-kit@0.2.2
	objc2-contacts@0.2.2
	objc2-core-data@0.2.2
	objc2-core-image@0.2.2
	objc2-core-location@0.2.2
	objc2-encode@4.0.3
	objc2-foundation@0.2.2
	objc2-link-presentation@0.2.2
	objc2-metal@0.2.2
	objc2-quartz-core@0.2.2
	objc2-symbols@0.2.2
	objc2-ui-kit@0.2.2
	objc2-uniform-type-identifiers@0.2.2
	objc2-user-notifications@0.2.2
	objc2@0.5.2
	objc@0.2.7
	objc_exception@0.1.2
	objc_id@0.1.1
	ogg_pager@0.6.1
	once_cell@1.20.2
	open@5.3.0
	orbclient@0.3.47
	ordered-stream@0.2.0
	os_info@3.8.2
	overload@0.1.1
	owned_ttf_parser@0.25.0
	pango-sys@0.20.4
	pango@0.20.4
	parking@2.2.1
	parking_lot@0.12.3
	parking_lot_core@0.9.10
	paste@1.0.15
	pathdiff@0.2.1
	pbkdf2@0.12.2
	pdf@0.9.0
	pdf_derive@0.2.0
	percent-encoding@2.3.1
	pico-args@0.5.0
	pin-project-internal@1.1.6
	pin-project-lite@0.2.14
	pin-project@1.1.6
	pin-utils@0.1.0
	pin-weak@1.1.0
	piper@0.2.4
	pkg-config@0.3.31
	png@0.17.14
	polling@3.7.3
	pollster@0.3.0
	portable-atomic@1.9.0
	powerfmt@0.2.0
	ppv-lite86@0.2.20
	prettyplease@0.2.22
	primal-check@0.3.4
	proc-macro-crate@3.2.0
	proc-macro-error-attr@1.0.4
	proc-macro-error@1.0.4
	proc-macro2@1.0.87
	profiling-procmacros@1.0.15
	profiling@1.0.15
	qoi@0.4.1
	quick-error@2.0.1
	quick-xml@0.36.2
	quote@1.0.37
	rand@0.8.5
	rand_chacha@0.3.1
	rand_core@0.6.4
	rav1e@0.7.1
	ravif@0.11.10
	raw-window-handle@0.5.2
	raw-window-handle@0.6.2
	raw-window-metal@1.0.0
	rawloader@0.37.1
	rayon-core@1.12.1
	rayon@1.10.0
	realfft@3.4.0
	redox_syscall@0.4.1
	redox_syscall@0.5.7
	redox_users@0.4.6
	regex-automata@0.1.10
	regex-automata@0.4.8
	regex-syntax@0.6.29
	regex-syntax@0.8.5
	regex@1.11.0
	resvg@0.42.0
	rfd@0.15.0
	rgb@0.8.50
	rle-decode-fast@1.0.3
	rowan@0.15.16
	roxmltree@0.20.0
	rubato@0.14.1
	rust-embed-impl@8.5.0
	rust-embed-utils@8.5.0
	rust-embed@8.5.0
	rustc-hash@1.1.0
	rustc_version@0.4.1
	rustdct@0.6.0
	rustdct@0.7.1
	rustfft@5.1.1
	rustfft@6.2.0
	rustix@0.38.37
	rustversion@1.0.17
	rusty-chromaprint@0.2.0
	rustybuzz@0.14.1
	ryu@1.0.18
	same-file@1.0.6
	scoped-tls-hkt@0.1.5
	scoped-tls@1.0.1
	scopeguard@1.2.0
	sctk-adwaita@0.10.1
	self_cell@0.10.3
	self_cell@1.0.4
	semver@1.0.23
	serde@1.0.210
	serde_derive@1.0.210
	serde_json@1.0.128
	serde_repr@0.1.19
	serde_spanned@0.6.8
	serde_yaml@0.8.26
	sha1@0.10.6
	sha2@0.10.8
	sharded-slab@0.1.7
	shlex@1.3.0
	signal-hook-registry@1.4.2
	simd-adler32@0.3.7
	simd_helpers@0.1.0
	simplecss@0.2.1
	siphasher@1.0.1
	skia-bindings@0.78.2
	skia-safe@0.78.2
	slab@0.4.9
	slint-build@1.8.0
	slint-macros@1.8.0
	slint@1.8.0
	slotmap@1.0.7
	smallvec@1.13.2
	smithay-client-toolkit@0.19.2
	smithay-clipboard@0.7.2
	smol_str@0.2.2
	smol_str@0.3.1
	snafu-derive@0.7.5
	snafu@0.7.5
	softbuffer@0.4.6
	spin@0.9.8
	spin_on@0.1.1
	stable_deref_trait@1.2.0
	state@0.6.0
	static_assertions@1.1.0
	strength_reduce@0.2.4
	strict-num@0.1.1
	stringprep@0.1.5
	strsim@0.10.0
	strsim@0.11.1
	strum@0.26.3
	strum_macros@0.26.4
	subtle@2.6.1
	svgtypes@0.15.2
	symphonia-bundle-flac@0.5.4
	symphonia-bundle-mp3@0.5.4
	symphonia-codec-aac@0.5.4
	symphonia-codec-adpcm@0.5.4
	symphonia-codec-alac@0.5.4
	symphonia-codec-pcm@0.5.4
	symphonia-codec-vorbis@0.5.4
	symphonia-core@0.5.4
	symphonia-format-caf@0.5.4
	symphonia-format-isomp4@0.5.4
	symphonia-format-mkv@0.5.4
	symphonia-format-ogg@0.5.4
	symphonia-format-riff@0.5.4
	symphonia-metadata@0.5.4
	symphonia-utils-xiph@0.5.4
	symphonia@0.5.4
	syn@1.0.109
	syn@2.0.79
	system-deps@6.2.2
	system-deps@7.0.3
	tar@0.4.42
	target-lexicon@0.12.16
	tempfile@3.13.0
	termcolor@1.4.1
	text-size@1.1.1
	thiserror-impl@1.0.64
	thiserror@1.0.64
	thread_local@1.1.8
	tiff@0.9.1
	time-core@0.1.2
	time-macros@0.2.18
	time@0.3.36
	tiny-skia-path@0.11.4
	tiny-skia@0.11.4
	tiny-xlib@0.2.3
	tinystr@0.7.6
	tinyvec@1.8.0
	tinyvec_macros@0.1.1
	toml@0.5.11
	toml@0.8.19
	toml_datetime@0.6.8
	toml_edit@0.22.22
	tracing-attributes@0.1.27
	tracing-core@0.1.32
	tracing-log@0.2.0
	tracing-subscriber@0.3.18
	tracing@0.1.40
	transpose@0.2.3
	trash@5.1.1
	triple_accel@0.3.4
	ttf-parser@0.21.1
	ttf-parser@0.25.0
	tuple@0.5.2
	type-map@0.5.0
	typenum@1.17.0
	tz-rs@0.6.14
	udev@0.9.0
	uds_windows@1.1.0
	unic-langid-impl@0.9.5
	unic-langid@0.9.5
	unicase@2.7.0
	unicode-bidi-mirroring@0.2.0
	unicode-bidi@0.3.17
	unicode-ccc@0.2.0
	unicode-ident@1.0.13
	unicode-linebreak@0.1.5
	unicode-normalization@0.1.24
	unicode-properties@0.1.3
	unicode-script@0.5.7
	unicode-segmentation@1.12.0
	unicode-vo@0.1.0
	unicode-width@0.1.14
	url@2.5.2
	urlencoding@2.1.3
	usvg@0.42.0
	utf8parse@0.2.2
	uuid@1.10.0
	v_frame@0.3.8
	valuable@0.1.0
	version-compare@0.2.0
	version_check@0.9.5
	vid_dup_finder_lib@0.1.1
	vk-parse@0.12.0
	vtable-macro@0.2.0
	vtable@0.2.0
	vulkano@0.34.1
	walkdir@2.5.0
	wasi@0.11.0+wasi-snapshot-preview1
	wasm-bindgen-backend@0.2.94
	wasm-bindgen-futures@0.4.44
	wasm-bindgen-macro-support@0.2.94
	wasm-bindgen-macro@0.2.94
	wasm-bindgen-shared@0.2.94
	wasm-bindgen@0.2.94
	wayland-backend@0.3.7
	wayland-client@0.31.6
	wayland-csd-frame@0.3.0
	wayland-cursor@0.31.6
	wayland-protocols-plasma@0.3.4
	wayland-protocols-wlr@0.3.4
	wayland-protocols@0.32.4
	wayland-scanner@0.31.5
	wayland-sys@0.31.5
	web-sys@0.3.71
	web-time@1.1.0
	weezl@0.1.8
	which@4.4.2
	winapi-i686-pc-windows-gnu@0.4.0
	winapi-util@0.1.9
	winapi-x86_64-pc-windows-gnu@0.4.0
	winapi@0.3.9
	windows-core@0.52.0
	windows-core@0.56.0
	windows-core@0.58.0
	windows-implement@0.56.0
	windows-implement@0.58.0
	windows-interface@0.56.0
	windows-interface@0.58.0
	windows-result@0.1.2
	windows-result@0.2.0
	windows-strings@0.1.0
	windows-sys@0.45.0
	windows-sys@0.48.0
	windows-sys@0.52.0
	windows-sys@0.59.0
	windows-targets@0.42.2
	windows-targets@0.48.5
	windows-targets@0.52.6
	windows@0.48.0
	windows@0.56.0
	windows@0.58.0
	windows_aarch64_gnullvm@0.42.2
	windows_aarch64_gnullvm@0.48.5
	windows_aarch64_gnullvm@0.52.6
	windows_aarch64_msvc@0.42.2
	windows_aarch64_msvc@0.48.5
	windows_aarch64_msvc@0.52.6
	windows_i686_gnu@0.42.2
	windows_i686_gnu@0.48.5
	windows_i686_gnu@0.52.6
	windows_i686_gnullvm@0.52.6
	windows_i686_msvc@0.42.2
	windows_i686_msvc@0.48.5
	windows_i686_msvc@0.52.6
	windows_x86_64_gnu@0.42.2
	windows_x86_64_gnu@0.48.5
	windows_x86_64_gnu@0.52.6
	windows_x86_64_gnullvm@0.42.2
	windows_x86_64_gnullvm@0.48.5
	windows_x86_64_gnullvm@0.52.6
	windows_x86_64_msvc@0.42.2
	windows_x86_64_msvc@0.48.5
	windows_x86_64_msvc@0.52.6
	winit@0.30.5
	winnow@0.6.20
	wio@0.2.2
	x11-clipboard@0.9.2
	x11-dl@2.21.0
	x11rb-protocol@0.13.1
	x11rb@0.13.1
	xattr@1.3.1
	xcursor@0.3.8
	xdg-home@1.3.0
	xkbcommon-dl@0.4.2
	xkbcommon@0.8.0
	xkeysym@0.2.1
	xml-rs@0.8.22
	xmlwriter@0.1.0
	xxhash-rust@0.8.12
	yaml-rust@0.4.5
	zbus@4.4.0
	zbus_macros@4.4.0
	zbus_names@3.0.0
	zerocopy-derive@0.7.35
	zerocopy@0.7.35
	zeroize@1.8.1
	zeroize_derive@1.4.2
	zip@2.2.0
	zopfli@0.8.1
	zune-core@0.4.12
	zune-inflate@0.2.54
	zune-jpeg@0.4.13
	zvariant@4.2.0
	zvariant_derive@4.2.0
	zvariant_utils@2.1.0
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
	dobin "target/x86_64-unknown-linux-gnu/release/${PN}"_{gui,cli}
	dosym "${PN}_cli" "/usr/bin/${PN}"
	doicon "snap/gui/${PN}.png"
	make_desktop_entry "${PN}_gui" "${PN^}" "${PN}" Utility
	einstalldocs
}
