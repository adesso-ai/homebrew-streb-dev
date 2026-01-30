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
  version "0.8.0-dev.15+f3d5a24"
  license :cannot_represent

  on_macos do
    on_arm do
      url "https://github.com/adesso-ai/homebrew-streb-dev/releases/download/v0.8.0-dev.15+f3d5a24/streb-dev_darwin_arm64.tar.gz"
      sha256 "0792bba0e620f1a2a9bb9bf9b5743ef4a3a15b74398d27a6e442cc68d7674937"
    end
    on_intel do
      url "https://github.com/adesso-ai/homebrew-streb-dev/releases/download/v0.8.0-dev.15+f3d5a24/streb-dev_darwin_amd64.tar.gz"
      sha256 "ad85bc47908dcc3786f6d4174fff6488044b68cb1af87ea3d4b3c8f35d6804ba"
    end
  end

  on_linux do
    on_intel do
      url "https://github.com/adesso-ai/homebrew-streb-dev/releases/download/v0.8.0-dev.15+f3d5a24/streb-dev_linux_amd64.tar.gz"
      sha256 "e0f28f6c21c107cd7f3ac14f168f1a1b4d4d9713ae69007a767a7b456dce0b51"
    end
  end

  def install
    bin.install "streb-dev"
  end

  test do
    assert_match "streb-dev version", shell_output("#{bin}/streb-dev --version")
  end
end
