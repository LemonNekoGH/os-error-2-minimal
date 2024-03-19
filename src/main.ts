import { createApp } from 'vue'
import { createVuetify } from 'vuetify'

import 'vuetify/styles'
import '@unocss/reset/tailwind.css'
import './styles/main.css'
import 'uno.css'
import '@mdi/font/css/materialdesignicons.css'

import * as components from 'vuetify/components'
import * as directives from 'vuetify/directives'
import App from './App.vue'

const app = createApp(App)
app.use(createVuetify({ components, directives }))
app.mount('#app')
