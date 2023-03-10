# Copyright 2023 Gentoo Authors
# Distributed under the terms of the GNU General Public License v2

EAPI="8"
ETYPE="sources"
K_GENPATCHES_VER="6"
K_SECURITY_UNSUPPORTED="1"
XANMOD_VERSION="1"
XANMOD_URI="https://github.com/xanmod/linux/releases/download"

HOMEPAGE="https://xanmod.org"
LICENSE+="CDDL"
KEYWORDS="~amd64"

inherit kernel-2
detect_version

DESCRIPTION="Kernel sources including xanmod and some other patches."
SRC_URI="
	${KERNEL_BASE_URI}/linux-${KV_MAJOR}.${KV_MINOR}.tar.xz
	${XANMOD_URI}/${OKV}-xanmod${XANMOD_VERSION}/patch-${OKV}-xanmod${XANMOD_VERSION}.xz
"
UNIPATCH_STRICTORDER="yes"
UNIPATCH_LIST+="${DISTDIR}/patch-${OKV}-xanmod${XANMOD_VERSION}.xz"

# Others
UNIPATCH_LIST+=" ${FILESDIR}/remove-expert-dependency-on-processor-select.patch ${FILESDIR}/0001-boot-6.1-add-support-the-uncompressed-kernel-to-spee.patch ${FILESDIR}/enable-optimization-level-3.patch"
