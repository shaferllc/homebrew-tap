cask "ledge" do
  version "0.4"
  sha256 "b184e7f5e7304230c45d10a88d956918eec3a1283353bea90acc4e837cd1889f"

  url "https://github.com/shaferllc/ledge/releases/download/v#{version}/Ledge.dmg",
      verified: "github.com/shaferllc/ledge/"
  name "Ledge"
  desc "Turns the MacBook notch into a hover-expand dashboard"
  homepage "https://github.com/shaferllc/ledge"

  livecheck do
    url :url
    strategy :github_latest
  end

  depends_on macos: :sonoma

  app "Ledge.app"

  zap trash: "~/Library/Preferences/com.tomshafer.ledge.plist"

  caveats <<~EOS
    Ledge is ad-hoc signed (not yet notarized). If macOS blocks it on first
    launch, right-click Ledge in Applications and choose Open — or install
    skipping the quarantine:
      brew install --cask --no-quarantine shaferllc/tap/ledge
  EOS
end
