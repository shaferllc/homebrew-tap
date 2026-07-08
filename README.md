# shaferllc/homebrew-tap

Homebrew tap for [Shafer LLC](https://shaferllc.com) apps.

## Ledge

A native macOS notch dashboard — [github.com/shaferllc/ledge](https://github.com/shaferllc/ledge).

```sh
brew install --cask shaferllc/tap/ledge
```

Ledge is ad-hoc signed (not yet notarized). If macOS blocks it on first launch,
right-click Ledge in Applications → Open, or install with `--no-quarantine`:

```sh
brew install --cask --no-quarantine shaferllc/tap/ledge
```

## Wheelhouse

A native macOS fleet cockpit for solo founders — [github.com/shaferllc/wheelhouse](https://github.com/shaferllc/wheelhouse).

```sh
brew install --cask shaferllc/tap/wheelhouse
```

Requires the `claude` CLI. Ad-hoc signed — use `--no-quarantine` if Gatekeeper blocks first launch.
