function getParentHighlighter() {
    if (typeof imports.ui.messageTray.URLHighlighter != 'undefined') {
        return imports.ui.messageTray.URLHighlighter;
    }
    try {
        return imports.ui.messageList.URLHighlighter;
    } catch (err) {
        return imports.ui.calendar.URLHighlighter;
    }
}
const Highlighter = getParentHighlighter();
const Util = imports.misc.util;
const getDefaultIfInvalid = imports.misc.extensionUtils.getCurrentExtension().imports.utils.getDefaultIfInvalid;

/* exported TaskURLHighlighter */
var TaskURLHighlighter = class extends Highlighter {
    constructor(text, lineWrap, allowMarkup, urlMarkupFunction) {
        super(text, lineWrap, allowMarkup);
        this.markupFunction = getDefaultIfInvalid(urlMarkupFunction, null);
        this._highlightUrls();
    }

    _highlightUrls() {
        if (typeof this.markupFunction === 'undefined') {
            // not initialized yet
            return;
        }
        const urls = Util.findUrls(this._text);
        let markup = '';
        let pos = 0;
        for (let i = 0; i < urls.length; i++) {
            const url = urls[i];
            const str = this._text.substr(pos, url.pos - pos);
            markup += str + this.markupFunction(url.url, this._linkColor);
            pos = url.pos + url.url.length;
        }
        markup += this._text.substr(pos);
        this.actor.clutter_text.set_markup(markup);
    }
};

/* vi: set expandtab tabstop=4 shiftwidth=4: */
