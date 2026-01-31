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
  version "0.8.0-dev.45+79a0755"
  license :cannot_represent

  on_macos do
    on_arm do
      url "https://github.com/adesso-ai/homebrew-streb-dev/releases/download/v0.8.0-dev.45+79a0755/streb-dev_darwin_arm64.tar.gz"
      sha256 "3a225b8e0c0dd01ebc88995d19a47144b69c3d083b5eb9e711d74dd1d3dc216d"
    end
    on_intel do
      url "https://github.com/adesso-ai/homebrew-streb-dev/releases/download/v0.8.0-dev.45+79a0755/streb-dev_darwin_amd64.tar.gz"
      sha256 "1864cb876137553e019b509bdd2cf9d34865216ff3eb0321b234e30c90647f13"
    end
  end

  on_linux do
    on_intel do
      url "https://github.com/adesso-ai/homebrew-streb-dev/releases/download/v0.8.0-dev.45+79a0755/streb-dev_linux_amd64.tar.gz"
      sha256 "dd3123a17d28af0ebdf990e9c7e1176b3de311cb3399bc2263ca840e8888966e"
    end
  end

  def install
    bin.install "streb-dev"
  end

  test do
    assert_match "streb-dev version", shell_output("#{bin}/streb-dev --version")
  end
end
