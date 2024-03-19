FROM rust:1.76

RUN curl -fsSL "https://deb.nodesource.com/setup_18.x" | bash -
RUN apt install -y nodejs lld llvm nsis
RUN rm -rf /var/lib/apt/lists/*

# install Windows target
RUN rustup target add x86_64-pc-windows-msvc

# install Windows SDK
RUN cargo install xwin
RUN xwin --accept-license splat --output ~/.xwin

# enable pnpm
RUN corepack enable
RUN corepack prepare pnpm@latest-8 --activate

WORKDIR /app

COPY package.json package.json
COPY pnpm-lock.yaml pnpm-lock.yaml

RUN pnpm i

COPY src-tauri/Cargo.toml src-tauri/Cargo.toml
COPY src-tauri/Cargo.lock src-tauri/Cargo.lock

COPY . .

RUN pnpm tauri build --target x86_64-pc-windows-msvc
