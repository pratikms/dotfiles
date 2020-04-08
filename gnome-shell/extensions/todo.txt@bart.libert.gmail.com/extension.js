// This extension was developed by Bart Libert
//
// Based on code by :
// * Baptiste Saleil http://bsaleil.org/
// * Arnaud Bonatti https://github.com/Obsidien
//
// Licence: GPLv2+

const Extension = imports.misc.extensionUtils.getCurrentExtension();
const TodoTxtManager = Extension.imports.todoTxtManager;
const Utils = Extension.imports.utils;

/* exported init */
function init(ignored_metadata) {
    const path = Utils.getFirstValidChild(Extension, ['path', 'metadata.path']);
    const theme = imports.gi.Gtk.IconTheme.get_default();
    theme.append_search_path(`${path}/icons`);
    Utils.initTranslations(Extension);
    const logger = Utils.getDefaultLogger();
    return new TodoTxtManager.TodoTxtManager(logger);
}

/* vi: set expandtab tabstop=4 shiftwidth=4: */
