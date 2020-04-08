// Library imports
const Gio = imports.gi.Gio;
const Lang = imports.lang;
const Main = imports.ui.main;
const Meta = imports.gi.Meta;
const Shell = imports.gi.Shell;
const St = imports.gi.St;
const Tweener = imports.ui.tweener;

// Extension imports
const Utils   = imports.misc.extensionUtils.getCurrentExtension().imports.utils;
const mySettings = Utils.getSettings();

// Globals
const key_bindings = {
    'key': function(){
        _startTilix();
    }
};

let text;

function _startTilix() {
    try {
        Main.Util.trySpawnCommandLine('env GDK_BACKEND=x11 tilix --quake');
    } catch(err) {
        Main.notify("Couldn't start tilix, is it installed?");
    }
}

function enable() {
    let key;
    for (key in key_bindings) {
        if (Main.wm.addKeybinding && Shell.ActionMode) { // introduced in 3.16
            Main.wm.addKeybinding(
                key,
                mySettings,
                Meta.KeyBindingFlags.NONE,
                Shell.ActionMode.NORMAL,
                key_bindings[key]
            );
        }
        else if (Main.wm.addKeybinding && Shell.KeyBindingMode) { // introduced in 3.7.5
            Main.wm.addKeybinding(
                key,
                mySettings,
                Meta.KeyBindingFlags.NONE,
                Shell.KeyBindingMode.NORMAL | Shell.KeyBindingMode.MESSAGE_TRAY,
                key_bindings[key]
            );
        }
        else {
            global.display.add_keybinding(
                key,
                mySettings,
                Meta.KeyBindingFlags.NONE,
                key_bindings[key]
            );
        }
        }

}

function disable() {
    let key;
    for (key in key_bindings) {
        if (Main.wm.removeKeybinding) { // introduced in 3.7.2
            Main.wm.removeKeybinding(key);
        }
        else {
            global.display.remove_keybinding(key);
        }
    }

    Main.panel._rightBox.remove_child(button);
}