namespace Example
{
    public class Application : Gtk.Application
    {
        private ApplicationWindow window;
        
        public Application ()
        {
            Object (
                application_id: "org.gtk.example",
                flags: ApplicationFlags.FLAGS_NONE                
            );
        }
        
        public override void activate ()
        {
            window = new ApplicationWindow (this);
            window.show_all ();
        }       
        
        public override void open(GLib.File[] files, string hint)
        {
            if(window == null)
                window = new ApplicationWindow (this);
                
            foreach (var file in files) {
                window.open(file);
            }
            
            window.show_all ();
        }
    }
}
