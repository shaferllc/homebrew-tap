cask "ledge" do
  version "1.1"
  sha256 "43e675d969aac6decc544949085e27504d1fc07d39ea80d8491596d27ddd7dd2"

  url "https://dl.shafer.llc/ledge/Ledge-#{version}.dmg"
  name "Ledge"
  desc "Turns the MacBook notch into a hover-expand dashboard"
  homepage "https://ledge.shafer.llc/"

  livecheck do
    url "https://dl.shafer.llc/ledge/appcast.xml"
    strategy :sparkle
  end

  auto_updates true
  depends_on macos: :sonoma

  app "Ledge.app"

  zap trash: "~/Library/Preferences/com.tomshafer.ledge.plist"
end
