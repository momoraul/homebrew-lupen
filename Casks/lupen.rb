cask "lupen" do
  version "0.8.0"
  sha256 "d25b6c94c16aee04b51cedf318ece462f9046affc168a0a630a29a5d82027a7d"

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
