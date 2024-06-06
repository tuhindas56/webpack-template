# repo-name

`Project name` built as part of <a href="">The Odin Project curriculum</a>.

## Setup

- Install dependencies: `npm i`
- Start dev server: `npm start`
- Build project: `npm run build`

### Notes

- To remove TailwindCSS and use Sass:

  1. Run `npm remove tailwindcss @tailwindcss/forms autoprefixer postcss postcss-loader prettier-plugin-tailwindcss && rm src/style.css src/ts/main.ts tailwind.config.js postcss.config.js && npm i -D sass sass-loader && touch src/styles.scss && echo import "'../styles.scss'" > src/ts/main.ts`
  2. Update **webpack.common.js**:

     ```
     - test: /\.css$/i
     + test: /\.scss$/i
     ```

     ```
     - 'postcss-loader'
     + 'sass-loader'
     ```

  3. Update **src/ts/main.ts**:
     ```
     - import '../style.css'
     + import '../styles.scss'
     ```
  4. Update **.prettierrc**:

     ```
     - "plugins": ["prettier-plugin-tailwindcss"]
     ```

- Allow read and write permissions for GitHub Actions to work!
