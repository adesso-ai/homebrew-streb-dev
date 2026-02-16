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
  version "0.8.0-dev.101+1afa9ca"
  license :cannot_represent

  on_macos do
    on_arm do
      url "https://github.com/adesso-ai/homebrew-streb-dev/releases/download/v0.8.0-dev.101+1afa9ca/streb-dev_darwin_arm64.tar.gz"
      sha256 "79f0a4b0d353d33071ee7a3e0475000eb4b979036443cf83839524bd00344801"
    end
    on_intel do
      url "https://github.com/adesso-ai/homebrew-streb-dev/releases/download/v0.8.0-dev.101+1afa9ca/streb-dev_darwin_amd64.tar.gz"
      sha256 "3857cfa417f5d8c06dd8c8db20b30feb37e1448869432bb290f8f14052e6b092"
    end
  end

  on_linux do
    on_intel do
      url "https://github.com/adesso-ai/homebrew-streb-dev/releases/download/v0.8.0-dev.101+1afa9ca/streb-dev_linux_amd64.tar.gz"
      sha256 "4e1e5eafb20b72a01742576c710ddab89b8d3b99d6cee4de6ebdb0d7125e6b2f"
    end
  end

  def install
    bin.install "streb-dev"
  end

  test do
    assert_match "streb-dev version", shell_output("#{bin}/streb-dev --version")
  end
end
