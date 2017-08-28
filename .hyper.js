'use strict';

module.exports = {
  config: {
    // default font size in pixels for all tabs
    fontSize: 14,

    // font family with optional fallbacks
    fontFamily: '"Menlo Regular for Powerline", Menlo, "DejaVu Sans Mono", "Lucida Console", monospace',

    // terminal cursor background color and opacity (hex, rgb, hsl, hsv, hwb or cmyk)
    cursorColor: 'rgba(248, 248, 240, 0.5)',

    // `BEAM` for |, `UNDERLINE` for _, `BLOCK` for █
    cursorShape: 'BLOCK',

    // color of the text
    foregroundColor: '#fff',

    // terminal background color
    backgroundColor: '#000d20',

    // border color (window, tabs)
    borderColor: '#051336',

    // custom css to embed in the main window
    css: ``,

    // custom css to embed in the terminal window
    termCSS: '',

    // set to `false` if you want to hide the minimize, maximize and close buttons
    // additionally, set to `'left'` if you want them on the left, like in Ubuntu
    // default: `true` on windows and Linux (ignored on macOS)
    showWindowControls: '',

    // custom padding (css format, i.e.: `top right bottom left`)
    padding: '0px 0px',

    // the full list. if you're going to provide the full color palette,
    // including the 6 x 6 color cubes and the grayscale map, just provide
    // an array here instead of a color map object
    colors: {
      black: '#001128',
      red: '#fe4386',
      green: '#a6e32d',
      yellow: '#f2fb00',
      blue: '#0094d9',
      magenta: '#9b37ff',
      cyan: '#50b7d9',
      white: '#c7c7c7',
      lightBlack: '#686868',
      lightRed: '#fa80ac',
      lightGreen: '#bde371',
      lightYellow: '#fff27f',
      lightBlue: '#00beff',
      lightMagenta: '#be9efff',
      lightCyan: '#5ed7ff',
      lightWhite: '#ffffff'
    },

    // the shell to run when spawning a new session (i.e. /usr/local/bin/fish)
    // if left empty, your system's login shell will be used by default
    shell: '',

    // for setting shell arguments (i.e. for using interactive shellArgs: ['-i'])
    // by default ['--login'] will be used
    shellArgs: ['--login'],

    // for environment variables
    env: {},

    // set to false for no bell
    bell: false,

    // if true, selected text will automatically be copied to the clipboard
    copyOnSelect: false

    // for advanced config flags please refer to https://hyper.is/#cfg
  },

  hyperlinks: {
    defaultBrowser: true
  },
  // a list of plugins to fetch and install from npm
  // format: [@org/]project[#version]
  // examples:
  //   `hyperpower`
  //   `@company/project`
  //   `project#1.0.1`
  plugins: [
    'hyperlinks'
  //  'hyper-simple-vibrancy'
  ],

  // in development, you can create a directory under
  // `~/.hyper_plugins/local/` and include it here
  // to load it and avoid it being `npm install`ed
  localPlugins: []
};
