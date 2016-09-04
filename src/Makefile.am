bin_PROGRAMS = quiz-runner

GRESOURCES_FILE = $(top_builddir)/data/quiz-runner.gresource.xml
BUILT_SOURCES = resources.c

resources.c: $(GRESOURCES_FILE) $(shell $(GLIB_COMPILE_RESOURCES) --generate-dependencies --sourcedir=$(top_srcdir)/data/ $(top_srcdir)/data/quiz-runner.gresource.xml)
	$(AM_V_GEN) $(GLIB_COMPILE_RESOURCES) --target=$@ --sourcedir=$(top_srcdir)/data/ --generate-source $<

quiz_runner_SOURCES = \
	quiz-runner.vala \
	quiz-runner-window.vala \
	$(BUILT_SOURCES)

INCLUDES = \
	-include config.h \
	-DLOCALEDIR=\""$(localedir)"\" \
	-DPKGDATADIR=\""$(pkgdatadir)"\" \
	-DPKGLIBDIR=\""$(pkglibdir)"\"

quiz_runner_VALAFLAGS = \
	--vapidir=$(top_srcdir)/vapi \
	--pkg config \
	--pkg glib-2.0 \
	--target-glib=2.38 \
	--pkg posix \
	--pkg gtk+-3.0 \
	--pkg gmodule-2.0 \
	--gresources $(top_srcdir)/data/quiz-runner.gresource.xml

quiz_runner_CPPFLAGS = \
	`pkg-config --cflags gtk+-3.0 glib-2.0` \
	$(AM_CPPFLAGS)

quiz_runner_LDFLAGS = \
	-rdynamic \
	`pkg-config --libs gtk+-3.0 glib-2.0` \
	$(AM_LDFLAGS)

-include $(top_srcdir)/git.mk
