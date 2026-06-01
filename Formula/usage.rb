class Usage < Formula
  desc "macOS menu bar Claude Code + Codex quota monitor"
  homepage "https://github.com/aqua5230/usage"
  url "https://github.com/aqua5230/usage/releases/download/v0.15.0/usage.app.zip"
  sha256 "c9504ef0da137310ced08a4a55f6cd4b4d3f09cee13c46c4d6dda989925328a3"
  version "0.15.0"
  license "AGPL-3.0-only"

  def install
    prefix.install "usage.app"
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
