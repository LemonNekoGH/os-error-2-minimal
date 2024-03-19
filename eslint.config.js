import antfu from '@antfu/eslint-config'
import unocss from '@unocss/eslint-plugin'

export default antfu(
  {
    ignores: ['.pnpm-store/**', 'node_modules/**', 'dist/**', 'public/**'],
  },
  unocss.configs.flat,
)
