# repo-name

`Project name`

## Setup

- Install dependencies: `npm i`
- Start dev server: `npm start`
- Build project: `npm run build`


## Notes

To remove TailwindCSS and setup Sass, run:

```
npm remove tailwindcss @tailwindcss/forms prettier-plugin-tailwindcss && rm src/style.css src/ts/main.ts tailwind.config.js && npm i -D sass sass-loader && mkdir src/scss && echo "@use 'base';" > src/scss/main.scss && echo "*, *::before, *::after {box-sizing: border-box;}* {margin: 0;}body {line-height: 1.5;-webkit-font-smoothing: antialiased;min-height: 100vh;}img, picture, video, canvas, svg {display: block;max-width: 100%;}input, button, textarea, select {font: inherit;}p, h1, h2, h3, h4, h5, h6 {overflow-wrap: break-word;}#root, #__next {isolation: isolate;}" > src/scss/_base.scss && echo "import '../scss/main.scss'" > src/ts/main.ts
```

Update **webpack.common.js**:

```diff
-  use: ['style-loader', 'css-loader', 'postcss-loader'],
+  use: ['style-loader', 'css-loader', 'postcss-loader', 'sass-loader'],
```

Update **postcss.config.js**:

```diff
-  plugins: { tailwindcss: {}, autoprefixer: {} },
+  plugins: { autoprefixer: {} },
```

Update **.prettierrc**:

```diff
- "plugins": ["prettier-plugin-tailwindcss"]
```
<hr/>

Allow read and write permissions for GitHub Actions to work!
