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
  version "0.8.0-dev.8+fa5bb26"
  license :cannot_represent

  on_macos do
    on_arm do
      url "https://github.com/adesso-ai/homebrew-streb-dev/releases/download/v0.8.0-dev.8+fa5bb26/streb-dev_darwin_arm64.tar.gz"
      sha256 "477e13521b8859c0db0bf71b3257614d52220a474f728d5a34dd3e6eb696f739"
    end
    on_intel do
      url "https://github.com/adesso-ai/homebrew-streb-dev/releases/download/v0.8.0-dev.8+fa5bb26/streb-dev_darwin_amd64.tar.gz"
      sha256 "ab188c781cd559388180087b455e0a828ecb0e21a4ae0d959ad0209fa8d2b469"
    end
  end

  on_linux do
    on_intel do
      url "https://github.com/adesso-ai/homebrew-streb-dev/releases/download/v0.8.0-dev.8+fa5bb26/streb-dev_linux_amd64.tar.gz"
      sha256 "91ea318708bf3a6cc74301af323ec1645fb6af3c2df5e5bfad3bd9ac0e998f41"
    end
  end

  def install
    bin.install "streb-dev"
  end

  test do
    assert_match "streb-dev version", shell_output("#{bin}/streb-dev --version")
  end
end
