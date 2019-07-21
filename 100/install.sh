#!/bin/sh
#
#  This program is free software; you can redistribute it and/or
#  modify it under the terms of the GNU General Public License as
#  published by the Free Software Foundation; either version 2 of the
#  License, or (at your option) any later version.
#
#  This program is distributed in the hope that it will be useful,
#  but WITHOUT ANY WARRANTY; without even the implied warranty of
#  MERCHANTABILITY or FITNESS FOR A PARTICULAR PURPOSE.  See the
#  GNU General Public License for more details.
#
#  You should have received a copy of the GNU General Public License
#  along with this program; if not, write to the Free Software Foundation,
#  Inc., 51 Franklin St, Fifth Floor, Boston, MA 02110-1301, USA

if [ "$1" = "uninstall" ]; then
   	rm -f /etc/grub.d/06_sparky_theme_100
	rm -f /etc/xdg/menus/applications-merged/sparky-100-en.menu
	rm -f /etc/xdg/menus/applications-merged/sparky-100-pl.menu
	rm -f /opt/panel/sparky-menu100.png
	rm -f /opt/artwork/sparky-100*
	rm -f /usr/share/applications/sparky-1-*
	rm -f /usr/share/applications/sparky-2-*
	rm -f /usr/share/applications/sparky-3-*
	rm -f /usr/share/applications/sparky-4-*
	rm -f /usr/share/applications/sparky-5-*
	rm -f /usr/share/applications/sparky-6-*
	rm -f /usr/share/applications/sparky-7-*
	rm -f /usr/share/applications/sparky-8-*
	rm -f /usr/share/applications/sparky-9-*
	rm -f /usr/share/applications/sparky-10-*
	rm -f /usr/share/applications/sparky-11-*
	rm -f /usr/share/applications/sparky-12-*
	rm -f /usr/share/applications/sparky-13-*
	rm -f /usr/share/applications/sparky-14-*
	rm -f /usr/share/desktop-base/sparky100_grub_background.sh
	rm -f /usr/share/desktop-directories/sparky-100-*
	rm -rf /usr/share/plymouth/themes/sparky-100
else
	cp grub.d/* /etc/grub.d/
	if [ ! -d /etc/xdg/menus/applications-merged ]; then
		mkdir -p /etc/xdg/menus/applications-merged
	fi
	cp applications-merged/* /etc/xdg/menus/applications-merged/
	if [ ! -d /opt/panel ]; then
		mkdir -p /opt/panel
	fi
	cp opt/sparky-menu100.png /opt/panel/
	if [ ! -d /opt/artwork ]; then
		mkdir -p /opt/artwork
	fi
	cp opt/sparky-100* /opt/artwork/
	cp applications/* /usr/share/applications/
	cp desktop-base/* /usr/share/desktop-base/
	cp desktop-directories/* /usr/share/desktop-directories/
	if [ ! -d /usr/share/plymouth/themes/sparky-100 ]; then
		mkdir -p /usr/share/plymouth/themes/sparky-100
	fi
	cp sparky-100/* /usr/share/plymouth/themes/sparky-100/
fi
