cask "usage" do
  version "0.21.0"
  sha256 "a42847a330e88ae3c26b3c38dccf51cb78a4d4e0226bc5c1e5566e1a73d51213"

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
