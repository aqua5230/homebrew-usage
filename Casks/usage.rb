cask "usage" do
  version "0.32.6"
  sha256 "406d85badf8747c333f9bee06ebd94445df7ed2bf3bede2f403840c20749b0c7"

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
