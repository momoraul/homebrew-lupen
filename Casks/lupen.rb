cask "lupen" do
  version "0.12.0"
  sha256 "d5d6846f92a62daa7bf355e1428a5f0fa839e48606a3d41a0b22dc2bfb77e4b8"

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
