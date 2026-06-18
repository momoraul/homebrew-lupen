cask "lupen" do
  version "0.4.0"
  sha256 "434217f7eb298ba05c7fb0d5d1ffe0da2b3b71e4924435ee8a2209a782e582d5"

  url "https://github.com/momoraul/Lupen/releases/download/v#{version}/Lupen-#{version}.dmg"
  name "Lupen"
  desc "Itemized cost receipts for Claude Code and Codex"
  homepage "https://github.com/momoraul/Lupen"

  depends_on macos: ">= :tahoe"   # macOS 26
  auto_updates true               # Sparkle handles in-app updates

  app "Lupen.app"
  binary "#{appdir}/Lupen.app/Contents/MacOS/Lupen", target: "lupen"

  zap trash: [
    "~/Library/Application Support/Lupen",
    "~/Library/Preferences/com.momoraul.lupen.plist",
    "~/Library/Caches/com.momoraul.lupen",
  ]
end
