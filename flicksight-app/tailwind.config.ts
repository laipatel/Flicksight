import type { Config } from 'tailwindcss';
const { heroui } = require('@heroui/react');

const config: Config = {
  content: [
    './src/pages/**/*.{js,ts,jsx,tsx,mdx}',
    './src/components/**/*.{js,ts,jsx,tsx,mdx}',
    './src/app/**/*.{js,ts,jsx,tsx,mdx}',
    './node_modules/@heroui/theme/dist/**/*.{js,ts,jsx,tsx}',
  ],
  theme: {
    extend: {
      fontFamily: {
        sans: ['var(--font-inter)'],
        display: ['var(--font-poppins)'],
      },
    },
  },
  darkMode: 'class',
  plugins: [
    heroui({
      addCommonColors: false,
      defaultTheme: 'dark',
      defaultExtendTheme: 'dark',
      layout: {},
      themes: {
        dark: {
          colors: {
            background: '#001A33',
            foreground: '#FFFFFF',
            primary: {
              50: '#FFF7E6',
              100: '#FFEECC',
              200: '#FFD899',
              300: '#FFBC66',
              400: '#FFA13F',
              500: '#FF7500',
              600: '#DB5800',
              700: '#B74000',
              800: '#932C00',
              900: '#7A1D00',
            },
            success: {
              50: '#E8FFEA',
              100: '#F1FDDE',
              200: '#E0FCBE',
              300: '#C8F89C',
              400: '#B0F182',
              500: '#8CE85A',
              600: '#68C741',
              700: '#48A72D',
              800: '#2E861C',
              900: '#1A6F11',
            },
            warning: {
              50: '#FFFDEC',
              100: '#FFFAD9',
              200: '#FFF5B4',
              300: '#FFEE8E',
              400: '#FFE772',
              500: '#FFDC44',
              600: '#DBB831',
              700: '#B79522',
              800: '#937415',
              900: '#7A5D0D',
            },
            danger: {
              50: '#FFF4ED',
              100: '#FFE8DB',
              200: '#FFCCB8',
              300: '#FFAA95',
              400: '#FF897A',
              500: '#FF544F',
              600: '#DB3942',
              700: '#B7273C',
              800: '#931935',
              900: '#7A0F30',
            },
          },
        },
      },
    }),
  ],
};

export default config;
