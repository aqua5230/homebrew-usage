class Usage < Formula
  desc "macOS menu bar Claude Code + Codex quota monitor"
  homepage "https://github.com/aqua5230/usage"
  url "https://github.com/aqua5230/usage/releases/download/v0.11.10/usage.app.zip"
  sha256 "d067da77f6248afa6c3653372386ae5d5749e6a1a80bfd344a3a00ea27a087ab"
  version "0.11.10"
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
