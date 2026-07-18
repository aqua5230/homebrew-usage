cask "usage" do
  version "0.28.12"
  sha256 "22940e7f43b11a68521f76287f91203c69e1bf8762e1b0ca4b39825677ae187b"

  url "https://github.com/aqua5230/usage/releases/download/v#{version}/usage.app.zip"
  name "usage"
  desc "Menu bar Claude Code + Codex quota monitor"
  homepage "https://github.com/aqua5230/usage"

  depends_on :macos

  app "usage.app"

  caveats <<~EOS
    usage is ad-hoc signed (not notarized). On first launch, right-click
    usage.app in your Applications folder and choose "Open" to pass Gatekeeper.
  EOS
end
