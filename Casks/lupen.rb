cask "lupen" do
  version "0.6.1"
  sha256 "05aedfa779a07cc2900e1821a13953d53f8a0ac41382bf8a345f875a32fe4d72"

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
