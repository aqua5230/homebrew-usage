cask "usage" do
  version "0.33.0"
  sha256 "62519d96363872e9706ecd5b5f56dc63daf60cf5ed2af33dca9479a0c3279e48"

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
