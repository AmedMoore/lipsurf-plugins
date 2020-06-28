import PluginBase from 'chrome-extension://lnnmjmalakahagblkkcnjkoaihlfglon/dist/modules/plugin-base.js';import ExtensionUtil from 'chrome-extension://lnnmjmalakahagblkkcnjkoaihlfglon/dist/modules/extension-util.js';/// <reference types="lipsurf-types/extension"/>
var Anki = { ...PluginBase, ...{
    niceName: 'Anki',
    languages: {},
    description: 'Anki web flashcard functionality.',
    version: '3.4.3',
    match: [/^https:\/\/ankiweb\.net/, /^https:\/\/ankiuser\.net/],

    homophones: {
        'and key': 'anki',
        'show insta': 'show answer',
        'show enter': 'show answer',
        'show cancer': 'show answer',
        'should i answer': 'show answer',
        'show me answer': 'show answer',
    },

    authors: "Miko",

    commands: [
        {
            name: 'Anki',
            description: 'Go to ankiweb decks page.',
            match: 'anki',
            global: true,
            pageFn: async () => {
                window.location.href = 'https://ankiweb.net/decks/';
            }
        },
        {
            name: 'Select Answer Difficulty',
            description: "Select the ease level after seeing the answer.",
            // only works with the default ease levels...
            match: ['again', 'hard', 'good', 'easy'],
            pageFn: async (transcript) => {
                let capitalized = transcript.charAt(0).toUpperCase() + transcript.slice(1);
                document.evaluate(`//*[@id='easebuts']//button[contains(text(), "${capitalized}")]`, document, null, XPathResult.FIRST_ORDERED_NODE_TYPE).singleNodeValue.click();
            }
        },
        {
            name: 'Show Answer',
            description: "Show the other side of the flash card.",
            match: 'show answer',
            pageFn: async () => {
                document.querySelector('#ansbuta').click();
            }
        }
    ]
} };

export default Anki;LS-SPLITallPlugins.Anki = (() => { /// <reference types="lipsurf-types/extension"/>
var Anki = { ...PluginBase, ...{
    commands: {
        "Anki": {
            pageFn: async () => {
                window.location.href = 'https://ankiweb.net/decks/';
            }
        },

        "Select Answer Difficulty": {
            pageFn: async (transcript) => {
                let capitalized = transcript.charAt(0).toUpperCase() + transcript.slice(1);
                document.evaluate(`//*[@id='easebuts']//button[contains(text(), "${capitalized}")]`, document, null, XPathResult.FIRST_ORDERED_NODE_TYPE).singleNodeValue.click();
            }
        },

        "Show Answer": {
            pageFn: async () => {
                document.querySelector('#ansbuta').click();
            }
        }
    }
} };

return Anki;
 })()LS-SPLITallPlugins.Anki = (() => { /// <reference types="lipsurf-types/extension"/>
var Anki = { ...PluginBase, ...{
    commands: {
        "Anki": {
            pageFn: async () => {
                window.location.href = 'https://ankiweb.net/decks/';
            }
        }
    }
} };

return Anki;
 })()