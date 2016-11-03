iconsdir = $(datadir)/icons/hicolor/scalable/apps
icons_DATA = quiz-runner.svg

quiz-runner.desktop: quiz-runner.desktop.in
	$(AM_V_GEN)$(MSGFMT) --desktop --template $< -d $(top_srcdir)/po -o $@
desktopdir = $(datadir)/applications
desktop_DATA = quiz-runner.desktop

EXTRA_DIST = \
	$(icons_DATA) \
	quiz-runner.desktop.in

CLEANFILES = \
	$(desktop_DATA) \
	quiz-runner.desktop

-include $(top_srcdir)/git.mk
