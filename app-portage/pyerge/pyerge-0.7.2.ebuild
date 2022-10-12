# Copyright 1999-2022 Gentoo Authors
# Distributed under the terms of the GNU General Public License v2

EAPI=8

PYTHON_COMPAT=( python3_{8..11} )

inherit distutils-r1

DESCRIPTION="Wrapper tool for emerge - it can mount RAM disk and compile packages inside it."
HOMEPAGE="https://github.com/emcek/pyerge https://pypi.org/project/pyerge/"
SRC_URI="mirror://pypi/${PN:0:1}/${PN}/${P}.tar.gz"

LICENSE="MIT"
SLOT="0"
KEYWORDS="~amd64 ~x86"

RDEPEND=">dev-python/beautifulsoup4-4.5.0[${PYTHON_USEDEP}]"
BDEPEND="${RDEPEND}
	test? (
		dev-python/pytest[${PYTHON_USEDEP}]
		dev-python/mock[${PYTHON_USEDEP}]
	)"

distutils_enable_tests pytest

python_test() {
	py.test -v tests || die "tests fail with ${EPYTHON}"
}
