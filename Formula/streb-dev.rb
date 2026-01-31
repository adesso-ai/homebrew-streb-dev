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
  version "0.8.0-dev.46+fe61513"
  license :cannot_represent

  on_macos do
    on_arm do
      url "https://github.com/adesso-ai/homebrew-streb-dev/releases/download/v0.8.0-dev.46+fe61513/streb-dev_darwin_arm64.tar.gz"
      sha256 "8573bde3719db5e5c058ce4d9f435d2e8afc3de0332153b62b25af3ca698d046"
    end
    on_intel do
      url "https://github.com/adesso-ai/homebrew-streb-dev/releases/download/v0.8.0-dev.46+fe61513/streb-dev_darwin_amd64.tar.gz"
      sha256 "51127748e0b455eb2930c88329965f00d9369a3562cf4e2d2eae9cafb9565c08"
    end
  end

  on_linux do
    on_intel do
      url "https://github.com/adesso-ai/homebrew-streb-dev/releases/download/v0.8.0-dev.46+fe61513/streb-dev_linux_amd64.tar.gz"
      sha256 "127a2e85a14a7aeb41ad5516fee11d0c9d02dc01419218c4d34ae3ba6dda0f08"
    end
  end

  def install
    bin.install "streb-dev"
  end

  test do
    assert_match "streb-dev version", shell_output("#{bin}/streb-dev --version")
  end
end
