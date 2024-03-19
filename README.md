This project is private but I removed all sensitive code.

You can run `docker build . -t test` to check build result, because we use gitlab ci, so building code running in a container.

Or you can install all dependencies according docker build instruction then run `pnpm tauri build --target x86_64-pc-windows-msvc`.
