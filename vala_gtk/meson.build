project ('valaapp', 'c', 'vala')

add_project_arguments('--gresources=' + meson.current_source_dir() + '/exampleapp.gresource.xml', language: 'vala')
add_project_arguments('--target-glib=2.38', language: 'vala')

glib = dependency('glib-2.0')
gio = dependency('gio-2.0')
gobject = dependency('gobject-2.0')
gtk = dependency('gtk+-3.0')

src = ['application.vala', 'application_window.vala', 'main.vala', 'resources.c']

executable('valaapp', src, dependencies: [glib, gio, gobject, gtk])
