/**
 * Copyright (C) 2016 Balázs Meskó <meskobalazs at gmail dot com>
 * 
 * This program is free software: you can redistribute it and/or modify
 * it under the terms of the GNU General Public License as published by
 * the Free Software Foundation, either version 3 of the License, or
 * (at your option) any later version.
 * 
 * This program is distributed in the hope that it will be useful,
 * but WITHOUT ANY WARRANTY; without even the implied warranty of
 * MERCHANTABILITY or FITNESS FOR A PARTICULAR PURPOSE.  See the
 * GNU General Public License for more details.
 * 
 * You should have received a copy of the GNU General Public License
 * along with this program.  If not, see <http://www.gnu.org/licenses/>.
 */


[GtkTemplate (ui = "/hu/meskobalazs/quiz-runner/main-window.ui")]
public class QuizRunnerWindow : Gtk.ApplicationWindow {

	[GtkChild]
	public Gtk.Statusbar main_statusbar;

	public QuizRunnerWindow (Gtk.Application app) {
		Object (application: app);
	}

	[GtkCallback]
	public void about_dialog () {
		var copyright = _("Copyright 2016 Balázs Meskó");
		string[] artists = {
			"Balázs Meskó <meskobalazs at gmail dot com>"
		};
		string[] authors = {
			"Balázs Meskó <meskobalazs at gmail dot com>"
		};

		Gtk.show_about_dialog (this,
				"artists", artists,
				"authors", authors,
				"translator-credits", _("translator-credits"),
				"program-name", _("Quiz Runner"),
				"title", _("About Quiz Runner"),
				"comments", _("Quiz Runner Application"),
				"copyright", copyright,
				"license-type", Gtk.License.GPL_3_0,
				"logo-icon-name", "quiz-runner",
				"version", Config.PACKAGE_VERSION,
				"wrap-license", true);
	}

	[GtkCallback]
	public void quit () {
		Process.exit (0);
	}

}
