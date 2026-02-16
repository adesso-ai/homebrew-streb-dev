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
  version "0.8.0-dev.90+257a037"
  license :cannot_represent

  on_macos do
    on_arm do
      url "https://github.com/adesso-ai/homebrew-streb-dev/releases/download/v0.8.0-dev.90+257a037/streb-dev_darwin_arm64.tar.gz"
      sha256 "53a4ccc129acf4c5f47bce19c1ce194af620113461418ffc78a18b901f08e28e"
    end
    on_intel do
      url "https://github.com/adesso-ai/homebrew-streb-dev/releases/download/v0.8.0-dev.90+257a037/streb-dev_darwin_amd64.tar.gz"
      sha256 "d1df63fc45d08d43066097333b4cadd0414cb0abdf25a48178c3e20501f054a5"
    end
  end

  on_linux do
    on_intel do
      url "https://github.com/adesso-ai/homebrew-streb-dev/releases/download/v0.8.0-dev.90+257a037/streb-dev_linux_amd64.tar.gz"
      sha256 "d480f16d04ac419690dbca61f018c397c28a9a364d3e997ec1fad9f3fdfdf7c7"
    end
  end

  def install
    bin.install "streb-dev"
  end

  test do
    assert_match "streb-dev version", shell_output("#{bin}/streb-dev --version")
  end
end
