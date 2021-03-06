class MyApp : Gtk.Application { 
    
    public MyApp() {
        Object (
            application_id: "com.github.Furyzer0.vala_tutorial",
            flags: ApplicationFlags.FLAGS_NONE
        );
    }

    protected override void activate() {
        var main_window = new Gtk.ApplicationWindow (this);
        main_window.set_default_size (400, 300);
        main_window.title = "Hello World";
        main_window.set_keep_above(true);

        var button_hello = new Gtk.Button.with_label ("Hello");
        button_hello.margin = 12;
        button_hello.clicked.connect(() => {
            button_hello.label = "Hello World!";
            button_hello.sensitive = false;
        });

        main_window.add (button_hello);
        main_window.show_all ();
    }

    public static int main (string[] args) {
        var app = new MyApp ();
        return app.run (args);
    }
}