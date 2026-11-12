# Lokyr's Homebrew tap

The [Homebrew](https://brew.sh) tap of [Lokyr](https://lokyr.dev), a terminal emulator for macOS whose every feature is a plugin, and of Sleip, its plugins' package manager.

```sh
brew install --cask sephiroth74/tap/lokyr
```

The cask installs `Lokyr.app` of the latest release's DMG, from [the releases](https://github.com/sephiroth74/lokyr/releases), and links `lokyr` and `sleip` into Homebrew's `bin`. Lokyr updates itself through Sparkle, so the cask leaves its updates to it; `brew uninstall --zap --cask lokyr` takes away the app, its config, its plugins and its caches.

Lokyr's release writes `Casks/lokyr.rb` of each version, its DMG's SHA-256 its own: the cask follows the releases alone.
