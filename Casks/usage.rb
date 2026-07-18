cask "usage" do
  version "0.28.13"
  sha256 "6dfc149c5b643ae36f0417a9d1ca690343f3a1b2cbdc1d5044e1bd965e3d73de"

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
