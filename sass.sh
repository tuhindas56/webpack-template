#!/usr/bin/bash
npm remove tailwindcss @tailwindcss/forms prettier-plugin-tailwindcss
rm src/style.css src/ts/main.ts tailwind.config.js
npm i -D sass sass-loader
mkdir src/scss
echo "*, *::before, *::after {box-sizing: border-box;}* {margin: 0;}body {line-height: 1.5;-webkit-font-smoothing: antialiased;min-height: 100vh;}img, picture, video, canvas, svg {display: block;max-width: 100%;}input, button, textarea, select {font: inherit;}p, h1, h2, h3, h4, h5, h6 {overflow-wrap: break-word;}#root, #__next {isolation: isolate;}" > src/scss/_base.scss
echo "@use 'base';" > src/scss/main.scss
echo "import '../scss/main.scss'" > src/ts/main.ts
sed '3d' postcss.config.js > temp
rm postcss.config.js
cat temp > postcss.config.js && rm temp
sed '5d' .prettierrc > temp
rm .prettierrc
cat temp > .prettierrc && rm temp
sed "s/postcss-loader/postcss-loader', 'sass-loader/" webpack.common.js > temp
rm webpack.common.js
cat temp > webpack.common.js && rm temp
npx prettier .prettierrc --write
npx prettier postcss.config.js --write
npx prettier webpack.common.js --write
