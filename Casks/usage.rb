cask "usage" do
  version "0.24.3"
  sha256 "b4e245f621ef3278f914bb2b5aca22d2839f244cde28981f3c1ceb9e9fa9b976"

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
