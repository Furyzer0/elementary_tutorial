namespace Example
{
    [GtkTemplate (ui = "/org/gtk/exampleapp/window.ui")]
    public class ApplicationWindow : Gtk.ApplicationWindow
    {
        public ApplicationWindow (Gtk.Application application)
        {
            Object (application: application);
        }
        
        public void open (GLib.File file)
        {
        }
    }
}
