bin_PROGRAMS = quiz-runner

quiz_runner_SOURCES = main.vala

quiz_runner_VALAFLAGS = \
	--pkg glib-2.0 \
	--pkg posix \
	--pkg gtk+-3.0

quiz_runner_CPPFLAGS = \
	`pkg-config --cflags --libs glib-2.0` \
	$(AM_CPPFLAGS)

-include $(top_srcdir)/git.mk
