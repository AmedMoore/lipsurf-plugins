import PluginBase from 'chrome-extension://lnnmjmalakahagblkkcnjkoaihlfglon/dist/modules/plugin-base.js';import ExtensionUtil from 'chrome-extension://lnnmjmalakahagblkkcnjkoaihlfglon/dist/modules/extension-util.js';/// <reference types="lipsurf-types/extension"/>
var Google = { ...PluginBase, ...{
    niceName: 'Google',
    languages: {},
    description: 'The google search engine.',
    version: '3.4.3',
    match: /.*\.google\.com/,

    homophones: {
        'search': 'google',
    },

    authors: "Miko",

    commands: [{
            name: 'Search',
            description: "Do a google search.",
            global: true,
            match: 'google *',
            pageFn: async (transcript, searchQuery) => {
                window.location.href = `https://www.google.com/search?q=${searchQuery}`;
            }
        },
        {
            name: "I'm Feeling Lucky",
            description: 'Equivalent to hitting the "I\'m feeling lucky" button for a Google search. Goes to the first result of the search query if Google feels confident with the results.',
            global: true,
            match: 'feeling lucky *',
            pageFn: async (transcript, searchQuery) => {
                window.location.href = `https://www.google.com/search?btnI=I%27m+Feeling+Lucky&q=${searchQuery}`;
            }
        }, {
            name: 'Google Calendar',
            global: true,
            match: 'google calendar',
            pageFn: async () => {
                window.location.href = `https://calendar.google.com/calendar/r`;
            }
        },
        {
            name: 'Add Event to Google Calendar',
            global: true,
            match: ['add event to google calendar', 'add to google calendar'],
            pageFn: async () => {
                window.location.href = `https://calendar.google.com/calendar/r/eventedit`;
            }
        },]
} };

/// <reference types="lipsurf-types/extension"/>
Google.languages.ja = {
    niceName: "ググる",
    description: "Googleで検索します",
    authors: "Miko",
    homophones: {
        'google': 'ぐぐる'
    },
    commands: {
        "Search": {
            name: "検索します",
            description: "ググる「空欄を埋めて下さい」",
            match: "ぐぐる*",
        }
    }
};

/// <reference types="lipsurf-types/extension"/>
Google.languages.ru = {
    niceName: "Гугл",
    description: "Поиск в Google",
    authors: "Hanna",
    homophones: {
        "google": "гугл"
    },
    commands: {
        "Search": {
            name: "Поиск в Google",
            description: "Сказажите \"Гугл\" и задайте свой вопрос",
            match: ["гугл *", "искать *", "найти *"]
        },
        "Google Calendar": {
            name: "Google Календарь",
            description: "Открывает Google Календарь",
            match: ["гугл календарь", "google calendar"]
        },
        "Add Event to Google Calendar": {
            name: "Добавить событие в Google Calendar",
            description: "Добавляет событие в Google Календарь",
            match: ["добавить в гугл календарь", "добавить в google calendar"]
        }
    }
};

export default Google;LS-SPLITallPlugins.Google = (() => { /// <reference types="lipsurf-types/extension"/>
var Google = { ...PluginBase, ...{
    commands: {
        "Search": {
            pageFn: async (transcript, searchQuery) => {
                window.location.href = `https://www.google.com/search?q=${searchQuery}`;
            }
        },

        "I'm Feeling Lucky": {
            pageFn: async (transcript, searchQuery) => {
                window.location.href = `https://www.google.com/search?btnI=I%27m+Feeling+Lucky&q=${searchQuery}`;
            }
        },

        "Google Calendar": {
            pageFn: async () => {
                window.location.href = `https://calendar.google.com/calendar/r`;
            }
        },

        "Add Event to Google Calendar": {
            pageFn: async () => {
                window.location.href = `https://calendar.google.com/calendar/r/eventedit`;
            }
        }
    }
} };

return Google;
 })()LS-SPLITallPlugins.Google = (() => { /// <reference types="lipsurf-types/extension"/>
var Google = { ...PluginBase, ...{
    commands: {
        "Search": {
            pageFn: async (transcript, searchQuery) => {
                window.location.href = `https://www.google.com/search?q=${searchQuery}`;
            }
        },

        "I'm Feeling Lucky": {
            pageFn: async (transcript, searchQuery) => {
                window.location.href = `https://www.google.com/search?btnI=I%27m+Feeling+Lucky&q=${searchQuery}`;
            }
        },

        "Google Calendar": {
            pageFn: async () => {
                window.location.href = `https://calendar.google.com/calendar/r`;
            }
        },

        "Add Event to Google Calendar": {
            pageFn: async () => {
                window.location.href = `https://calendar.google.com/calendar/r/eventedit`;
            }
        }
    }
} };

return Google;
 })()