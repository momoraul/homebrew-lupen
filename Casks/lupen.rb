cask "lupen" do
  version "0.3.0"
  sha256 "03875ffb4cb91a77840eca55c7e80fbdf989ca48236d613f3be6033181dac3e2"

  url "https://github.com/momoraul/Lupen/releases/download/v#{version}/Lupen-#{version}.dmg"
  name "Lupen"
  desc "Itemized cost receipts for Claude Code and Codex"
  homepage "https://github.com/momoraul/Lupen"

  depends_on macos: ">= :tahoe"   # macOS 26
  auto_updates true               # Sparkle handles in-app updates

  app "Lupen.app"

  zap trash: [
    "~/Library/Application Support/Lupen",
    "~/Library/Preferences/com.momoraul.lupen.plist",
    "~/Library/Caches/com.momoraul.lupen",
  ]
end
