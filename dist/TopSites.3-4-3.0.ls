import PluginBase from 'chrome-extension://lnnmjmalakahagblkkcnjkoaihlfglon/dist/modules/plugin-base.js';import ExtensionUtil from 'chrome-extension://lnnmjmalakahagblkkcnjkoaihlfglon/dist/modules/extension-util.js';/// <reference types="lipsurf-types/extension"/>
var TopSitesPlugin = { ...PluginBase, ...{
    niceName: 'Top Sites',
    languages: {},
    description: 'Shortcuts for going to popular websites.',
    version: '3.4.3',
    match: /.*/,
    authors: "Miko",

    commands: [
        {
            name: 'YouTube',
            global: true,
            match: 'youtube',
            nice: 'YouTube',
            minConfidence: 0.5,
            pageFn: async () => {
                window.location.href = 'https://www.youtube.com/';
            }
        },
        {
            name: 'Wikipedia',
            global: true,
            match: 'wikipedia',
            pageFn: async () => {
                window.location.href = 'https://www.wikipedia.org/';
            }
        },
        {
            name: 'Facebook',
            global: true,
            match: 'facebook',
            pageFn: async () => {
                window.location.href = 'https://www.facebook.com/';
            }
        },
        {
            name: 'Twitter',
            global: true,
            match: 'twitter',
            pageFn: async () => {
                window.location.href = 'https://twitter.com/';
            }
        },
        {
            name: 'Instagram',
            global: true,
            match: 'instagram',
            pageFn: async () => {
                window.location.href = 'https://www.instagram.com/';
            }
        },
        {
            name: 'Amazon',
            global: true,
            match: 'amazon',
            pageFn: async () => {
                window.location.href = 'https://www.amazon.com/';
            }
        },
        {
            name: 'Ebay',
            global: true,
            match: 'ebay',
            pageFn: async () => {
                window.location.href = 'https://www.ebay.com/';
            }
        },
        {
            name: 'VK',
            global: true,
            match: 'vk',
            minConfidence: 0.5,
            pageFn: async () => {
                window.location.href = 'https://vk.com';
            }
        },
        {
            name: 'Netflix',
            global: true,
            match: 'netflix',
            minConfidence: 0.5,
            pageFn: async () => {
                window.location.href = 'https://www.netflix.com';
            }
        },
        {
            name: 'Twitch',
            global: true,
            match: 'twitch',
            pageFn: async () => {
                window.location.href = 'https://twitch.tv';
            }
        },
        {
            name: 'New York Times',
            global: true,
            match: 'new york times',
            pageFn: async () => {
                window.location.href = 'https://www.nytimes.com';
            }
        },
        {
            name: 'Github',
            global: true,
            match: 'github',
            pageFn: async () => {
                window.location.href = 'https://github.com/';
            }
        },
        {
            name: 'Product Hunt',
            global: true,
            match: 'product hunt',
            pageFn: async () => {
                window.location.href = 'https://www.producthunt.com';
            }
        }
    ]
}
};

/// <reference types="lipsurf-types/extension"/>
TopSitesPlugin.languages.ru = {
    niceName: 'Популярные сайты',
    description: 'Комманды для перехода на популярные сайты',
    homophones: {},
    authors: "Hanna",
    commands: {
        "Youtube": {
            name: 'Youtube',
            match: ['ютюб', 'youtube']
        },
        "Wikipedia": {
            name: 'Wikipedia',
            match: ['википедия', 'wikipedia']
        },
        "Facebook": {
            name: 'Facebook',
            match: ['фэйсбук', 'facebook']
        },
        "Twitter": {
            name: 'Twitter',
            match: ['твиттер', 'twitter']
        },
        "Instagram": {
            name: 'Instagram',
            match: ['инстаграм', 'instagram']
        },
        "Amazon": {
            name: 'Amazon',
            match: ['амазон', 'amazon']
        },
        "Ebay": {
            name: 'Ebay',
            match: ['ебэй', 'ибэй', 'ebay']
        },
        "VK": {
            name: 'Вконтакте',
            match: ['вконтакте', "вк"]
        },
        "Netflix": {
            name: 'Netflix',
            match: ['нэтфликс', 'нетфликс', 'netflix']
        },
        "Twitch": {
            name: 'Twitch',
            match: ['твич', 'twitch']
        },
        "New York Times": {
            name: 'New York Times',
            match: ['нью йорк таймс', 'ньюйорк таймс', 'new york times']
        },
        "Github": {
            name: 'Github',
            match: ['гитхаб', 'github']
        },
        "Hacker News": {
            name: 'Hacker News',
            match: ['хакер ньюз', 'уай комбинатор', 'уай комбинэтор', 'hacker news', 'y combinator'],
        },
        "Product Hunt": {
            name: 'Product Hunt',
            match: ['продакт хант', 'product hunt']
        },
    }
};

export default TopSitesPlugin;LS-SPLITallPlugins.TopSites = (() => { /// <reference types="lipsurf-types/extension"/>
var TopSitesPlugin = { ...PluginBase, ...{
    commands: {
        "YouTube": {
            nice: 'YouTube',

            pageFn: async () => {
                window.location.href = 'https://www.youtube.com/';
            }
        },

        "Wikipedia": {
            pageFn: async () => {
                window.location.href = 'https://www.wikipedia.org/';
            }
        },

        "Facebook": {
            pageFn: async () => {
                window.location.href = 'https://www.facebook.com/';
            }
        },

        "Twitter": {
            pageFn: async () => {
                window.location.href = 'https://twitter.com/';
            }
        },

        "Instagram": {
            pageFn: async () => {
                window.location.href = 'https://www.instagram.com/';
            }
        },

        "Amazon": {
            pageFn: async () => {
                window.location.href = 'https://www.amazon.com/';
            }
        },

        "Ebay": {
            pageFn: async () => {
                window.location.href = 'https://www.ebay.com/';
            }
        },

        "VK": {
            pageFn: async () => {
                window.location.href = 'https://vk.com';
            }
        },

        "Netflix": {
            pageFn: async () => {
                window.location.href = 'https://www.netflix.com';
            }
        },

        "Twitch": {
            pageFn: async () => {
                window.location.href = 'https://twitch.tv';
            }
        },

        "New York Times": {
            pageFn: async () => {
                window.location.href = 'https://www.nytimes.com';
            }
        },

        "Github": {
            pageFn: async () => {
                window.location.href = 'https://github.com/';
            }
        },

        "Product Hunt": {
            pageFn: async () => {
                window.location.href = 'https://www.producthunt.com';
            }
        }
    }
}
};

return TopSitesPlugin;
 })()LS-SPLITallPlugins.TopSites = (() => { /// <reference types="lipsurf-types/extension"/>
var TopSitesPlugin = { ...PluginBase, ...{
    commands: {
        "YouTube": {
            nice: 'YouTube',

            pageFn: async () => {
                window.location.href = 'https://www.youtube.com/';
            }
        },

        "Wikipedia": {
            pageFn: async () => {
                window.location.href = 'https://www.wikipedia.org/';
            }
        },

        "Facebook": {
            pageFn: async () => {
                window.location.href = 'https://www.facebook.com/';
            }
        },

        "Twitter": {
            pageFn: async () => {
                window.location.href = 'https://twitter.com/';
            }
        },

        "Instagram": {
            pageFn: async () => {
                window.location.href = 'https://www.instagram.com/';
            }
        },

        "Amazon": {
            pageFn: async () => {
                window.location.href = 'https://www.amazon.com/';
            }
        },

        "Ebay": {
            pageFn: async () => {
                window.location.href = 'https://www.ebay.com/';
            }
        },

        "VK": {
            pageFn: async () => {
                window.location.href = 'https://vk.com';
            }
        },

        "Netflix": {
            pageFn: async () => {
                window.location.href = 'https://www.netflix.com';
            }
        },

        "Twitch": {
            pageFn: async () => {
                window.location.href = 'https://twitch.tv';
            }
        },

        "New York Times": {
            pageFn: async () => {
                window.location.href = 'https://www.nytimes.com';
            }
        },

        "Github": {
            pageFn: async () => {
                window.location.href = 'https://github.com/';
            }
        },

        "Product Hunt": {
            pageFn: async () => {
                window.location.href = 'https://www.producthunt.com';
            }
        }
    }
}
};

return TopSitesPlugin;
 })()