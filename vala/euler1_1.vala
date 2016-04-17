// Euler1 in Vala

using Gtk;

int euler1(int size) {
    int result = 0;
    for (int i = 0; i < size; i++) {
        if (i%3==0 || i%5==0) {
            result += i;
        }
    }    
    return result;
}

int main (string[] args) {
    Gtk.init (ref args);

    var window = new Window ();
    window.title = "Euler1 in Vala";
    window.border_width = 10;
    window.window_position = WindowPosition.CENTER;
    window.set_default_size (350, 70);
    var entry = new Entry ();
    entry.text = euler1(1000).to_string();
    window.add (entry);
    window.destroy.connect (Gtk.main_quit);
    window.show_all ();

    Gtk.main ();
    return 0;
}