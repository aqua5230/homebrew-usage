cask "usage" do
  version "0.34.21"
  sha256 "ee4d318dfb01600ad5afd5ff35c0502918e82c7d943c1f40e87c37f07b363d41"

  url "https://github.com/aqua5230/usage/releases/download/v#{version}/usage.app.zip"
  name "usage"
  desc "Menu bar monitor for Claude Code, Codex, and Antigravity quota"
  homepage "https://github.com/aqua5230/usage"

  depends_on :macos

  app "usage.app"

  caveats <<~EOS
    usage is ad-hoc signed (not notarized). On first launch, open usage.app
    once. If macOS blocks it, go to System Settings > Privacy & Security,
    scroll down, and click "Open Anyway". On macOS 14 or earlier,
    right-click usage.app and choose "Open" instead.
  EOS
end
