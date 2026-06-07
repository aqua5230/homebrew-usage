class Usage < Formula
  desc "macOS menu bar Claude Code + Codex quota monitor"
  homepage "https://github.com/aqua5230/usage"
  url "https://github.com/aqua5230/usage/releases/download/v0.16.0/usage.app.zip"
  sha256 "18e29a22aad7cb9b33822b19d6f02bf8e5a64494d2b140d39f5dadf42527bf3f"
  version "0.16.0"
  license "AGPL-3.0-only"

  def install
    prefix.install buildpath/"usage.app"
  end

  def caveats
    <<~EOS
      usage.app has been installed to:
        #{prefix}/usage.app

      To add it to your Applications folder:
        ln -s #{prefix}/usage.app /Applications/usage.app

      First launch may require right-clicking and selecting "Open"
      to bypass macOS Gatekeeper.
    EOS
  end
end
