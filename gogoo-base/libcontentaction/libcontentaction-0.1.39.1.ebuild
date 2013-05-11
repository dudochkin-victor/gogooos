# Copyright 1999-2011 Gentoo Foundation
# Distributed under the terms of the GNU General Public License v2
# $Header: $

EAPI=4

inherit gnome2-utils cmake-utils

DESCRIPTION="Library for associating content with actions"
HOMEPAGE="https://launchpad.net/indicator-session"
#EBZR_REPO_URI="lp:indicator-session"
SRC_URI="${P}.tar.bz2"
LICENSE="GPL-3"
SLOT="0"
KEYWORDS="~amd64 ~x86"
IUSE="nls"

RDEPEND="
	dev-libs/dbus-glib
	dev-libs/glib:2
	>=dev-libs/libdbusmenu-0.5.90:3[gtk]
	sys-fs/udev[gudev]
	x11-libs/gtk+:3
	dev-db/tinycdb
	>=meego-base/libmeegotouch-0.21.4.1
	dev-qt/qttest
	dev-qt/qtcore
	dev-qt/qtxmlpatterns
	dev-qt/qtdbus"
# QtTest QtCore QtXml QtDbus Glib meegotouch
DEPEND="${RDEPEND}
	dev-util/intltool
	dev-util/pkgconfig
	nls? ( sys-devel/gettext )"

src_configure() {
#	local mycmakeargs=(
#	    -DGSETTINGS_COMPILE=OFF
#		-DVALA_EXECUTABLE="$(type -p valac-0.18)"
#	)

	cmake-utils_src_configure
}
