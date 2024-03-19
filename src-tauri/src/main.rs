// Prevents additional console window on Windows in release, DO NOT REMOVE!!
#![cfg_attr(not(debug_assertions), windows_subsystem = "windows")]

fn main() {
    tauri::Builder::default()
        .device_event_filter(tauri::DeviceEventFilter::Always) // capture key event even the window was focused
        .run(tauri::generate_context!())
        .expect("error while running tauri application");
}
