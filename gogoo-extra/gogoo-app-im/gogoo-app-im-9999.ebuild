# Copyright 1999-2011 Gentoo Foundation
# Distributed under the terms of the GNU General Public License v2
# $Header: $

EAPI=4

inherit gnome2-utils qt4-r2 git-2

DESCRIPTION="GoGoo Instant Messaging Application"
HOMEPAGE="https://github.com/dudochkin-victor/${PN}"
EGIT_REPO_URI="https://github.com/dudochkin-victor/${PN}"

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
	gogoo-base/qml-launcher
	>=gogoo-base/ux-components-0.2.8.7
	>=gogoo-base/telepathy-qt4-yell-0.1.4
	>=media-libs/qt-gstreamer-0.10.2
	>=net-libs/telepathy-logger-qt-0.6.0"
DEPEND="${RDEPEND}
	dev-util/intltool
	dev-util/pkgconfig
	nls? ( sys-devel/gettext )"

src_configure() {
    eqmake4
}
