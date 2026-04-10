{
  lib,
  fetchFromGitHub,
  fftw,
  glib,
  gtk4-layer-shell,
  installShellFiles,
  libpulseaudio,
  libxkbcommon,
  nix-update-script,
  pipewire,
  pkg-config,
  rustPlatform,
  stdenv,
  udev,
  wrapGAppsHook4,
}:
rustPlatform.buildRustPackage (finalAttrs: {
  pname = "wayle";
  version = "0.1.2";

  src = fetchFromGitHub {
    owner = "wayle-rs";
    repo = "wayle";
    tag = "v${finalAttrs.version}";
    hash = "sha256-iZddhPdskoyyAYT3J92S5cRRKkkR8KyqIyBBPE+Lg18=";
  };

  cargoHash = "sha256-bOc4BpzxqZBIwPVlJQr1Blo+0+8UyyTUAiGz2Ao8f+s=";
  RUSTC_BOOTSTRAP = true;

  nativeBuildInputs = [
    glib
    wrapGAppsHook4
    pkg-config
    rustPlatform.bindgenHook
    installShellFiles
  ];
  buildInputs = [
    libxkbcommon.dev
    gtk4-layer-shell.dev
    udev

    # for generating libcava bindings
    pipewire.dev
    fftw.dev
    libpulseaudio
  ];

  cargoBuildFlags = ["--bin=wayle"];

  preCheck = ''
    export HOME=$(mktemp -d)
  '';
  checkFlags = [
    # GTK4 failed to initialize (requires GUI?)
    "--skip=tests::css_loads_into_gtk4"
  ];

  preInstall = ''
    mkdir -p "$out/share/icons"
    cp -r resources/icons "$out/share"
  '';
  postInstall =
    lib.optionalString (stdenv.buildPlatform.canExecute stdenv.hostPlatform)
    # bash
    ''
      installShellCompletion --cmd wayle \
        --bash <($out/bin/wayle completions bash) \
        --fish <($out/bin/wayle completions fish) \
        --zsh <($out/bin/wayle completions zsh)
    '';

  passthru.updateScript = nix-update-script {};

  meta = {
    description = "Wayland Elements - A compositor agnostic shell with extensive customization";
    homepage = "https://github.com/wayle-rs/wayle/";
    license = lib.licenses.mit;
    maintainers = with lib.maintainers; [PerchunPak];
    mainProgram = "wayle";
    platforms = lib.platforms.linux;
  };
})
