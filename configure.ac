AC_PREREQ([2.69])


dnl ***********************************************************************
dnl Define Versioning Information
dnl ***********************************************************************
m4_define([major_version],[0])
m4_define([minor_version],[1])
m4_define([micro_version],[0])
m4_define([package_version],[major_version.minor_version.micro_version])
m4_define([bug_report_url],[https://bugzilla.gnome.org/enter_bug.cgi?product=quiz-runner])
m4_define([api_version],[0])

AX_IS_RELEASE([micro-version])

dnl ***********************************************************************
dnl Initialize autoconf
dnl ***********************************************************************
AC_INIT([quiz-runner],[package_version],[bug_report_url])
AC_CONFIG_HEADERS([config.h])
AC_CONFIG_SRCDIR([NEWS])
AC_CONFIG_MACRO_DIR([m4])
AC_CONFIG_AUX_DIR([build-aux])
AC_SUBST([ACLOCAL_AMFLAGS], "-I m4")
AC_CANONICAL_HOST


dnl ***********************************************************************
dnl Make version information available to autoconf files
dnl ***********************************************************************
AC_SUBST([MAJOR_VERSION],major_version)
AC_SUBST([MINOR_VERSION],minor_version)
AC_SUBST([MICRO_VERSION],micro_version)
AC_SUBST([API_VERSION],api_version)


dnl ***********************************************************************
dnl Initialize automake
dnl ***********************************************************************
AM_SILENT_RULES([yes])
AM_INIT_AUTOMAKE([1.11 foreign subdir-objects tar-ustar no-dist-gzip dist-xz -Wno-portability])


dnl ***********************************************************************
dnl Internationalization
dnl ***********************************************************************
GETTEXT_PACKAGE=AC_PACKAGE_TARNAME
AC_SUBST([GETTEXT_PACKAGE])
AC_DEFINE_UNQUOTED([GETTEXT_PACKAGE], ["$GETTEXT_PACKAGE"], [GETTEXT package name])

AM_GNU_GETTEXT_VERSION([0.19.3])
AM_GNU_GETTEXT([external])


dnl ***********************************************************************
dnl Check for required programs
dnl ***********************************************************************
AC_PROG_CC
AC_PROG_INSTALL
AC_PATH_PROG([GLIB_GENMARSHAL],[glib-genmarshal])
AC_PATH_PROG([GLIB_MKENUMS],[glib-mkenums])
AC_PATH_PROG([GLIB_COMPILE_RESOURCES],[glib-compile-resources])
PKG_PROG_PKG_CONFIG([0.22])
GLIB_GSETTINGS
AM_PROG_VALAC([0.32])
GOBJECT_INTROSPECTION_REQUIRE([1.36.0])
VAPIGEN_CHECK


AX_COMPILER_FLAGS


dnl ***********************************************************************
dnl Check for required packages
dnl ***********************************************************************
GLIB_REQUIRED=2.42
GTK_REQUIRED=3.14
PKG_CHECK_MODULES(QUIZ_RUNNER, [glib-2.0 >= $GLIB_REQUIRED])
PKG_CHECK_MODULES(QUIZ_RUNNER, [gio-2.0 >= $GLIB_REQUIRED])
PKG_CHECK_MODULES(QUIZ_RUNNER, [gtk+-3.0 >= $GTK_REQUIRED])


dnl ***********************************************************************
dnl Initialize Libtool
dnl ***********************************************************************
LT_PACKAGE_VERSION = 50
LT_PREREQ([2.2])
LT_INIT


dnl ***********************************************************************
dnl Process .in Files
dnl ***********************************************************************
AC_CONFIG_FILES([
	Makefile

	src/Makefile

	vapi/Makefile

	data/Makefile

	po/Makefile.in

],[],
[API_VERSION='$API_VERSION'])
AC_OUTPUT


echo ""
echo " ${PACKAGE} - ${VERSION}"
echo ""
echo " Options"
echo ""
echo "  Prefix ............................... : ${prefix}"
echo "  Libdir ............................... : ${libdir}"
echo ""
