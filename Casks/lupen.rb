cask "lupen" do
  version "0.6.2"
  sha256 "8afa5b060454cff1b0da59a16ba24c28e6928214fdf9c5c6c12f6a11cc41caac"

  url "https://github.com/momoraul/Lupen/releases/download/v#{version}/Lupen-#{version}.dmg"
  name "Lupen"
  desc "Itemized cost receipts for Claude Code and Codex"
  homepage "https://github.com/momoraul/Lupen"

  depends_on macos: :tahoe   # macOS 26 (Tahoe) or later
  auto_updates true               # Sparkle handles in-app updates

  app "Lupen.app"
  binary "#{appdir}/Lupen.app/Contents/MacOS/Lupen", target: "lupen"

  zap trash: [
    "~/Library/Application Support/Lupen",
    "~/Library/Preferences/com.momoraul.lupen.plist",
    "~/Library/Caches/com.momoraul.lupen",
  ]
end
