#!/bin/bash
#
#	Post instalación de Debian Wheezy.
#
#	Realizado por Ing. Edgard Decena.
#	3 de Septiembre de 2013.
#
#	1) Configurar el sources.list -> nano /etc/apt/sources.list
#	2) Configurar el archivo sudoers -> nano /etc/sudoers
#		root    ALL=(ALL:ALL) ALL
#		edgard  ALL=(ALL:ALL) ALL
#		Defaults secure_path="/usr/local/sbin:/usr/local/bin:/usr/sbin:/usr/bin:/sbin:/bin"
#
# Actualización.
# https://pulpolibre.wordpress.com/2016/12/02/sources-list%E2%80%8E-debian-9-stretch-actualizados/

#=====> ACTUALIZO LOS REPOSITORIOS.
sudo apt-get install aptitude;
aptitude update && aptitude full-upgrade;

#=====> FUNDAMENTALES.
#aptitude install deborphan;
#aptitude install localepurge;
aptitude install rcconf;
aptitude install firmware-linux-nonfree;
aptitude install firmware-linux-free;
aptitude install firmware-ralink; # Binary firmware for Ralink wireless cards.
aptitude install wireless-tools;
aptitude install synaptic;
aptitude install gdebi;
#aptitude install dconf-tools;
#aptitude install gconf-editor;
#aptitude install gnome-tweak-tool;
aptitude install rar unrar zip unzip unace bzip2 lzop p7zip-full p7zip-rar;
aptitude install mc; # Navegador de archivos en modo cónsola.
aptitude install gcalctool; # Calculadora gráfica con modos financiero, lógico y científico.
aptitude install gimp; # Advanced picture editor.
aptitude install gedit;
aptitude install gedit-plugins;
aptitude install aspell-es; # Diccionario español de GNU.
aptitude install file-roller; # "Extraer aquí" para Nautilus.
# aptitude install nautilus-open-terminal; # "Abrir terminal aquí" para Nautilus.
aptitude install nautilus-dropbox; # Soporte de Dropbox para Nautilus.
aptitude install rsync;
#aptitude install grsync;
#aptitude install hardinfo;
aptitude install lm-sensors;
sensors-detect;

#aptitude install flashplugin-nonfree;
#aptitude install deb-multimedia-keyring; # Previamente agregar el repositorio multimedia al sources.list.

#=====> CODECS.
#aptitude install w64codecs libdvdcss2 gstreamer0.10-fluendo-mp3 ffmpeg sox twolame vorbis-tools lame faad gstreamer0.10-ffmpeg gstreamer0.10-plugins-bad avifile-divx-plugin libfacc0;

#aptitude install faad gstreamer0.10-ffmpeg gstreamer0.10-x gstreamer0.10-fluendo-mp3 gstreamer0.10-plugins-base gstreamer0.10-plugins-good gstreamer0.10-plugins-bad gstreamer0.10-plugins-ugly ffmpeg lame twolame vorbis-tools libquicktime2 libfaac0 libmp3lame0 libxine1-all-plugins libxine2-all-plugins libdvdread4 libdvdnav4 libmad0 libavutil51 sox libxvidcore4 libavcodec53 libavcodec54 libavdevice53 libavdevice54 libstdc++5;

#=====> FONTS.
aptitude install fonts-freefont-ttf;	# Freefont Serif, Sans and Mono Truetype fonts.
aptitude install ttf-mscorefonts-installer; # Fuentes de Microsoft.

#=====> VARIOS.
#aptitude install gnome-themes-standard gnome-session-fallback;
#aptitude install gnome-documents;
#aptitude install gnome-tweak-tool; # Allows the adjustment of several advanced GNOME.
aptitude install gtk-recordmydesktop; # Record My Desktop.
aptitude install gnome-screenshot;
aptitude install gnome-system-monitor;
aptitude install gnome-disk-utility;
#aptitude install bleachbit;
aptitude install disk-manager;
aptitude install gparted;
# aptitude install syslinux syslinux-common mtools; # Utilidades para la creación de USB booteables.

#aptitude install icedove icedove-l10n-es-es
#aptitude install chromium-browser chromium-browser-l10n;
#aptitude install luckybackup;
aptitude install cheese;
#aptitude install shutter;
#aptitude install filezilla;
#aptitude install zenmap;
#aptitude install deluge;
aptitude install unetbootin;
#aptitude install pidgin;
#aptitude install terminator;
aptitude install vlc;
aptitude install sqlite3;
aptitude install xchm; # Lector de archivos de ayuda CHM.
aptitude install faenza-icon-theme;
aptitude install build-essential; # Necesario para programar.
aptitude install git;

#=====> VIRTUALBOX.
#aptitude install virtualbox;
#aptitude install virtualbox-guest-dkms;
#aptitude install virtualbox-guest-utils;
# sudo aptitude install virtualbox virtualbox-guest-x11
sudo aptitude install cups-pdf # Impresora virtual PDF => http://unbrutocondebian.blogspot.com/2013/01/instalar-una-impresora-virtual-pdf.html

echo
echo "-> Listo!"
echo "Presione ENTER para finalizar."
read
