cask "wheelhouse" do
  version "0.1.1"
  sha256 :no_check

  url "https://github.com/shaferllc/wheelhouse/releases/download/v#{version}/Wheelhouse.dmg",
      verified: "github.com/shaferllc/wheelhouse/"
  name "Wheelhouse"
  desc "Native macOS cockpit for steering a fleet of products"
  homepage "https://shafer.llc/wheelhouse"

  livecheck do
    url :url
    strategy :github_latest
  end

  depends_on macos: :sonoma

  app "Wheelhouse.app"

  zap trash: [
    "~/Library/Application Support/default.store",
    "~/Library/Application Support/default.store-shm",
    "~/Library/Application Support/default.store-wal",
  ]

  caveats <<~EOS
    Wheelhouse is ad-hoc signed (not yet notarized). If macOS blocks it on first
    launch, right-click Wheelhouse in Applications and choose Open — or install
    skipping the quarantine:
      brew install --cask --no-quarantine shaferllc/tap/wheelhouse

    Requires the Claude Code CLI (`claude`) on your PATH.
  EOS
end
