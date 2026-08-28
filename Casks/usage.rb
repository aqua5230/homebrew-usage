cask "usage" do
  version "0.30.3"
  sha256 "ffae096b2a65e761871a21321bddc825d9c9ee239c12628210bff181e6891aad"

  url "https://github.com/aqua5230/usage/releases/download/v#{version}/usage.app.zip"
  name "usage"
  desc "Menu bar monitor for Claude Code, Codex, and Antigravity quota"
  homepage "https://github.com/aqua5230/usage"

  depends_on :macos

  app "usage.app"

  caveats <<~EOS
    usage is ad-hoc signed (not notarized). On first launch, right-click
    usage.app in your Applications folder and choose "Open" to pass Gatekeeper.
  EOS
end
