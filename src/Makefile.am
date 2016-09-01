bin_PROGRAMS = quiz-runner

RESOURCES_FILE = $(top_builddir)/data/quiz-runner.gresource.xml
BUILT_SOURCES = resources.c

resources.c: $(RESOURCES_FILE) $(shell $(GLIB_COMPILE_RESOURCES) --generate-dependencies --sourcedir=$(top_srcdir)/data/ $(top_srcdir)/data/quiz-runner.gresource.xml)
	$(AM_V_GEN) $(GLIB_COMPILE_RESOURCES) --target=$@ --sourcedir=$(top_srcdir)/data/ --generate-source $<

quiz_runner_SOURCES = main.vala $(BUILT_SOURCES)

quiz_runner_VALAFLAGS = \
	--pkg glib-2.0 \
	--pkg posix \
	--pkg gtk+-3.0 \
	--pkg gmodule-2.0

quiz_runner_CPPFLAGS = \
	`pkg-config --cflags gtk+-3.0 glib-2.0` \
	$(AM_CPPFLAGS)

quiz_runner_LDFLAGS = \
	-rdynamic \
	`pkg-config --libs gtk+-3.0 glib-2.0` \
	$(AM_LDFLAGS)

-include $(top_srcdir)/git.mk
