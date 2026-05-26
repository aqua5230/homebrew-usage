class Usage < Formula
  desc "macOS menu bar Claude Code + Codex quota monitor"
  homepage "https://github.com/aqua5230/usage"
  url "https://github.com/aqua5230/usage/releases/download/v0.11.7/usage.app.zip"
  sha256 "f509c5b0e2a503867dd9f7de3ee20af733bd4a652c50dc63007ad1f2b29558cf"
  version "0.11.7"
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
