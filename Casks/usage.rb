cask "usage" do
  version "0.29.31"
  sha256 "640d1d64c44e9c2bdbdd1715f3e914ae8a0ca4c633d70bc1f7c74debcf36f16c"

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
