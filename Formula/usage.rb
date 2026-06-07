class Usage < Formula
  desc "macOS menu bar Claude Code + Codex quota monitor"
  homepage "https://github.com/aqua5230/usage"
  url "https://github.com/aqua5230/usage/releases/download/v0.16.1/usage.app.zip"
  sha256 "ee30bd73e0930ba316340412baae7c22ef6f1ce9dc4bbbb5379e40c40555a46d"
  version "0.16.1"
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
