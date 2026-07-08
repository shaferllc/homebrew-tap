cask "ledge" do
  version "0.3"
  sha256 "3e5e65a88790961dd915402288a7e0a64e4452f2ee50206d2af4790483b0f9ae"

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
