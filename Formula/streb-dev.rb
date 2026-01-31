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
  version "0.8.0-dev.40+9bf74ea"
  license :cannot_represent

  on_macos do
    on_arm do
      url "https://github.com/adesso-ai/homebrew-streb-dev/releases/download/v0.8.0-dev.40+9bf74ea/streb-dev_darwin_arm64.tar.gz"
      sha256 "3d6a4b504c405c4320f841d6f8fcdebca251a99c9b496da95bc8080d809c90f5"
    end
    on_intel do
      url "https://github.com/adesso-ai/homebrew-streb-dev/releases/download/v0.8.0-dev.40+9bf74ea/streb-dev_darwin_amd64.tar.gz"
      sha256 "9612d7a116e9d520fa4640bb67f402d1b276477cb996404408425c95408d6f4b"
    end
  end

  on_linux do
    on_intel do
      url "https://github.com/adesso-ai/homebrew-streb-dev/releases/download/v0.8.0-dev.40+9bf74ea/streb-dev_linux_amd64.tar.gz"
      sha256 "cd234061526d18bc1de696b14bb787590e25000e48692e972e07f457508d80a6"
    end
  end

  def install
    bin.install "streb-dev"
  end

  test do
    assert_match "streb-dev version", shell_output("#{bin}/streb-dev --version")
  end
end
