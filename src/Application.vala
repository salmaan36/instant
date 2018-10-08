/*
* Authored by: salmaan <>
*/

using Gtk;

namespace instant {
    public class instant : Gtk.Application {

        public instant () {
            Object(
                application_id: "com.github.salmaan36.instant",
                flags: ApplicationFlags.FLAGS_NONE
            );
        }

        protected override void activate (){

            var window = new Gtk.ApplicationWindow (this);

            var button_hello = new Gtk.Button.with_label ("Click Me!");
            button_hello.margin = 12;
            button_hello.clicked.connect (() => {
              button_hello.label = "Hello World!";
              button_hello.sensitive = false;
            });

            window.title = "instant";
            window.set_default_size (440, 700);
            window.add (button_hello);
            window.show_all ();
        }

        public static int main (string[] args) {
            var app = new instant ();
            return app.run (args);
        }
    }
}
