cask "lokyr" do
  version "1.3.0"
  sha256 "e97e84528e363b11a44b27372ebcb6740e30adc79ee9676f3daa7daa53c6127b"

  url "https://github.com/sephiroth74/lokyr/releases/download/v#{version}/Lokyr-#{version}.dmg"
  name "Lokyr"
  desc "Terminal emulator whose every feature is a plugin"
  homepage "https://lokyr.dev/"

  livecheck do
    url :url
    strategy :github_latest
  end

  auto_updates true
  depends_on arch: :arm64
  depends_on macos: :tahoe

  app "Lokyr.app"
  binary "#{appdir}/Lokyr.app/Contents/MacOS/lokyr"
  binary "#{appdir}/Lokyr.app/Contents/MacOS/sleip"

  zap trash: [
    "~/.config/lokyr",
    "~/Library/Application Support/lokyr",
    "~/Library/Caches/io.github.sephiroth74.lokyr",
    "~/Library/Caches/lokyr",
    "~/Library/HTTPStorages/io.github.sephiroth74.lokyr",
    "~/Library/Logs/Lokyr",
    "~/Library/Preferences/io.github.sephiroth74.lokyr.plist",
    "~/Library/Saved Application State/io.github.sephiroth74.lokyr.savedState",
  ]
end
