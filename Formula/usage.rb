class Usage < Formula
  desc "macOS menu bar Claude Code + Codex quota monitor"
  homepage "https://github.com/aqua5230/usage"
  url "https://github.com/aqua5230/usage/releases/download/v0.11.11/usage.app.zip"
  sha256 "edca96a00490a6fb43a20162c7c3b7307d97e0d52d0be7093be418a3d1628227"
  version "0.11.11"
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
