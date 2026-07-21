cask "usage" do
  version "0.28.17"
  sha256 "4fd8d4d74484a4001c4c125cceb6d2c88479cd9f4e42dd0d6f3b693bbd219819"

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
