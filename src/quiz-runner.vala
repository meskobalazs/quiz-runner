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

public class QuizRunner : Gtk.Application {

	private QuizRunnerWindow window { get; private set; }

	public QuizRunner () {
		Object (application_id: "quiz.runner", flags: ApplicationFlags.FLAGS_NONE);
	}

	public override void activate () {
		this.window = new QuizRunnerWindow (this);
		window.show_all();
	}

	public static int main (string[] args) {
		Intl.bindtextdomain (Config.GETTEXT_PACKAGE, Config.LOCALEDIR);
		Intl.bind_textdomain_codeset (Config.GETTEXT_PACKAGE, "UTF-8");
		Intl.textdomain (Config.GETTEXT_PACKAGE);

		var app = new QuizRunner ();
		return app.run (args);
	}

}

