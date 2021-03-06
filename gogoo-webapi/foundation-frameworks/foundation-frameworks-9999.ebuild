# Copyright 1999-2011 Gentoo Foundation
# Distributed under the terms of the GNU General Public License v2
# $Header: $

EAPI=4

inherit git-2

DESCRIPTION="openWebOS foundation frameworks used by core-apps & app-services"
HOMEPAGE="https://github.com/openwebos/${PN}"
EGIT_REPO_URI="https://github.com/openwebos/${PN}"
#EGIT_BRANCH="submissions/2"

LICENSE="GPL-3"
SLOT="0"
KEYWORDS="~amd64 ~x86"
IUSE="nls"

RDEPEND="
    gogoo-webapi/cmake-modules-webos
    gogoo-webapi/luna-sysmgr-ipc
    "
DEPEND="${RDEPEND}
	sys-devel/libtool
	dev-util/pkgconfig
	nls? ( sys-devel/gettext )"


src_install(){
        mkdir -p ${ED}/usr/palm/frameworks/
        cd ${WORKDIR}/${P}
	for FRAMEWORK in `ls -d1 foundations*` ; do
	    mkdir -p ${ED}/usr/palm/frameworks/${FRAMEWORK}/version/1.0/
	    cp -rf ${FRAMEWORK}/* ${ED}/usr/palm/frameworks/${FRAMEWORK}/version/1.0/
	done
}