using Gtk;

public void about_dialog_cb (Gtk.MenuItem source) {
	// TODO: add about dialog here
}

public int main (string[] args) {
	Gtk.init (ref args);

	try {
		var builder = new Builder ();
		builder.add_from_resource ("/hu/meskobalazs/quiz-runner/main-window.ui");
		builder.connect_signals (null);
		var window = builder.get_object ("main_window") as Window;
		window.show_all ();
		Gtk.main ();
	} catch (Error e) {
		stderr.printf ("Could not load UI: %s\n", e.message);
		return 1;
	}
	return 0;
}

