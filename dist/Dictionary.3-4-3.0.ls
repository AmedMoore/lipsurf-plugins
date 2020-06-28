import PluginBase from 'chrome-extension://lnnmjmalakahagblkkcnjkoaihlfglon/dist/modules/plugin-base.js';import ExtensionUtil from 'chrome-extension://lnnmjmalakahagblkkcnjkoaihlfglon/dist/modules/extension-util.js';/// <reference types="lipsurf-types/extension"/>
var Dictionary = { ...PluginBase, ...{
    niceName: 'Dictionary',
    languages: {},
    description: 'Quickly lookup words in an English dictionary. Switch to another language to lookup words in the language\'s respective dictionary.',
    version: '3.4.3',
    match: [/https?:\/\/www\.merriam-webster\.com/, /https?:\/\/www\.weblio\.jp/],
    authors: "Miko",

    commands: [{
            name: 'Lookup Word',
            description: "Lookup a word in the dictionary.",
            global: true,
            match: 'dictionary *',
            pageFn: async (transcript, query) => {
                let selectedLang = PluginBase.util.getLanguage();
                if (selectedLang.startsWith('en')) {
                    window.location.href = `https://www.merriam-webster.com/dictionary/${query}`;
                }
                else {
                    window.location.href = `https://www.weblio.jp/content/${query}`;
                }
            }
        },
    ]
} };

/// <reference types="lipsurf-types/extension"/>
Dictionary.languages.ja = {
    niceName: "辞書",
    description: "辞書で言葉をひいてごらん",
    authors: "Miko",
    homophones: {},
    commands: {
        "Lookup Word": {
            name: "言葉を検索します",
            description: "「言葉」をひいて",
            // TODO: need to handle inflections for Japanese
            match: "*をひく",
        }
    }
};

export default Dictionary;LS-SPLITallPlugins.Dictionary = (() => { /// <reference types="lipsurf-types/extension"/>
var Dictionary = { ...PluginBase, ...{
    commands: {
        "Lookup Word": {
            pageFn: async (transcript, query) => {
                let selectedLang = PluginBase.util.getLanguage();
                if (selectedLang.startsWith('en')) {
                    window.location.href = `https://www.merriam-webster.com/dictionary/${query}`;
                }
                else {
                    window.location.href = `https://www.weblio.jp/content/${query}`;
                }
            }
        }
    }
} };

return Dictionary;
 })()LS-SPLITallPlugins.Dictionary = (() => { /// <reference types="lipsurf-types/extension"/>
var Dictionary = { ...PluginBase, ...{
    commands: {
        "Lookup Word": {
            pageFn: async (transcript, query) => {
                let selectedLang = PluginBase.util.getLanguage();
                if (selectedLang.startsWith('en')) {
                    window.location.href = `https://www.merriam-webster.com/dictionary/${query}`;
                }
                else {
                    window.location.href = `https://www.weblio.jp/content/${query}`;
                }
            }
        }
    }
} };

return Dictionary;
 })()