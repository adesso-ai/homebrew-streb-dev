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
  version "0.8.0-dev.17+8cdc49f"
  license :cannot_represent

  on_macos do
    on_arm do
      url "https://github.com/adesso-ai/homebrew-streb-dev/releases/download/v0.8.0-dev.17+8cdc49f/streb-dev_darwin_arm64.tar.gz"
      sha256 "7e4a8d7f7bd2c7da40b787a3afa38de7ececb88ce930b98ba36373f390b297f2"
    end
    on_intel do
      url "https://github.com/adesso-ai/homebrew-streb-dev/releases/download/v0.8.0-dev.17+8cdc49f/streb-dev_darwin_amd64.tar.gz"
      sha256 "00983e77c5fbfa9a5db4129316ce6c5856dc863fdaefde1755410e71bc2ce05c"
    end
  end

  on_linux do
    on_intel do
      url "https://github.com/adesso-ai/homebrew-streb-dev/releases/download/v0.8.0-dev.17+8cdc49f/streb-dev_linux_amd64.tar.gz"
      sha256 "978a24bd5d060634a16211fcba8b6033aebda6cce3d49f57c4634f99a5df6c55"
    end
  end

  def install
    bin.install "streb-dev"
  end

  test do
    assert_match "streb-dev version", shell_output("#{bin}/streb-dev --version")
  end
end
