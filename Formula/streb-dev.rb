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
  version "0.7.18-dev.14+dff881b"
  license :cannot_represent

  on_macos do
    on_arm do
      url "https://github.com/adesso-ai/homebrew-streb-dev/releases/download/v0.7.18-dev.14+dff881b/streb-dev_darwin_arm64.tar.gz"
      sha256 "9bd45b867e79c3feca32e20ef1c4d73f290302c9158afd20b1af1f1d321eca0c"
    end
    on_intel do
      url "https://github.com/adesso-ai/homebrew-streb-dev/releases/download/v0.7.18-dev.14+dff881b/streb-dev_darwin_amd64.tar.gz"
      sha256 "2a49f9a238f0ac987934de32cea944ac76ffb309448ac225e4c637d022bbf58a"
    end
  end

  on_linux do
    on_intel do
      url "https://github.com/adesso-ai/homebrew-streb-dev/releases/download/v0.7.18-dev.14+dff881b/streb-dev_linux_amd64.tar.gz"
      sha256 "c6972a97b44df2384527e8a395c5f785c6e333393ee98f82e1be7eca541b0882"
    end
  end

  def install
    bin.install "streb-dev"
  end

  test do
    assert_match "streb-dev version", shell_output("#{bin}/streb-dev --version")
  end
end
