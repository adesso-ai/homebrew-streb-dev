# Homebrew formula for strebdev (development builds)
#
# Installation:
#   brew tap adesso-ai/streb-dev https://github.com/adesso-ai/homebrew-streb-dev
#   brew install strebdev
#
# Auto-updated by GitHub Actions on each push to develop.

class StrebDev < Formula
  desc "CLI tool for bootstrapping Claude Code development environments (dev build)"
  homepage "https://strebcli.dev"
  version "0.7.18-dev.18+baaf3bb"
  license :cannot_represent

  on_macos do
    on_arm do
      url "https://github.com/adesso-ai/homebrew-streb-dev/releases/download/v0.7.18-dev.18+baaf3bb/streb-dev_darwin_arm64.tar.gz"
      sha256 "ab9d3102596e9edfe1662db5c6b125cced5009217f5a65c55ce8ae8caf76ce6a"
    end
    on_intel do
      url "https://github.com/adesso-ai/homebrew-streb-dev/releases/download/v0.7.18-dev.18+baaf3bb/streb-dev_darwin_amd64.tar.gz"
      sha256 "a16c2dcf43f58e8b5c72959243f4565aaee89a36d6e9aa79cc0b696fb0e0f901"
    end
  end

  on_linux do
    on_intel do
      url "https://github.com/adesso-ai/homebrew-streb-dev/releases/download/v0.7.18-dev.18+baaf3bb/streb-dev_linux_amd64.tar.gz"
      sha256 "f76e0fbf1ad1a591eb460999fd896498669d012f5dc2a019c6e2ccd7de8caacd"
    end
  end

  def install
    bin.install "streb-dev"
  end

  test do
    assert_match "streb-dev version", shell_output("#{bin}/streb-dev --version")
  end
end
