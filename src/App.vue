<script setup lang="ts">
import AppBar from './components/AppBar.vue'
</script>

<template>
  <VLayout
    h-full font-mono
  >
    <AppBar />
    <VMain bg-white p-4>
      Hello
    </VMain>
    <VOverlay :model-value="loading" items-center justify-center>
      <VProgressCircular
        color="blue"
        indeterminate
        size="64"
      />
    </VOverlay>
    <VSnackbar v-model="showingSnackbar" color="blue" origin="top" :text="snackbarText" />
  </VLayout>
</template>
