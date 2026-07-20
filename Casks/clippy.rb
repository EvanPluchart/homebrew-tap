cask "clippy" do
  version "1.3.1"
  sha256 "328e1d1b10289684d31599505a07a54d2ae47ae508cf5dd38574df80dc1d421f"

  url "https://github.com/EvanPluchart/Clippy/releases/download/v#{version}/Clippy-#{version}.dmg"
  name "Clippy"
  desc "Fast, private, native clipboard history"
  homepage "https://clippy.evanpluchart.fr/"

  livecheck do
    url :url
    strategy :github_latest
  end

  depends_on macos: :sonoma

  app "Clippy.app"

  uninstall quit: "com.evpl.clippy"

  zap trash: [
    "~/Library/Application Support/Clippy",
    "~/Library/Caches/com.evpl.clippy",
    "~/Library/Containers/com.evpl.clippy",
    "~/Library/Preferences/com.evpl.clippy.plist",
    "~/Library/Saved Application State/com.evpl.clippy.savedState",
  ]

  caveats <<~EOS
    Clippy is currently distributed without an Apple Developer ID signature or
    notarization. On first launch, macOS may block the app. Try opening Clippy
    once, then go to System Settings > Privacy & Security and click Open Anyway.

    Apple instructions: https://support.apple.com/102445
  EOS
end
