<template>
  <VAppBar
    color="blue"
    flat
    extension-height="64"
  >
    <div h-full flex items-center pl-4 text-6>
      {{ `B.D.S.M ${recordingMode ? 'Recorder' : 'Player'} ${heartRateDeviceConnected ? `[Heart Rate: ${current.heartRate} Battery Level: ${currentBatteryLevel}]` : ''}` }}
    </div>

    <!-- for window dragging -->
    <div data-tauri-drag-region p-20 class="titlebar">
      <div id="titlebar-minimize" class="titlebar-button" /> <!-- don't remove this line -->
      <div id="titlebar-maximize" class="titlebar-button" /> <!-- don't remove this line -->
      <div id="titlebar-close" class="titlebar-button" /> <!-- don't remove this line -->
    </div>

    <v-spacer />
    <div z-1 h-full>
      <div h-8 flex>
        <div hover="bg-#1E88E5" active="bg-#1976D2" w-10 flex items-center justify-center @click="appWindow.minimize()">
          <v-icon size="x-small">
            mdi-window-minimize
          </v-icon>
        </div>
        <div hover="bg-#1E88E5" active="bg-#1976D2" w-10 flex items-center justify-center @click="appWindow.toggleMaximize()">
          <v-icon size="x-small">
            mdi-window-maximize
          </v-icon>
        </div>
        <div hover="bg-#F44336" active="bg-#D32F2F" w-10 flex items-center justify-center @click="appWindow.close()">
          <v-icon size="x-small">
            mdi-close
          </v-icon>
        </div>
      </div>
    </div>

    <template #extension>
      <VBtn color="white" variant="outlined" ml-4>Tools</VBtn>
    </template>
  </VAppBar>
</template>
