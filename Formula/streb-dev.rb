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
  version "0.8.0-dev.121+550b8c7"
  license :cannot_represent

  on_macos do
    on_arm do
      url "https://github.com/adesso-ai/homebrew-streb-dev/releases/download/v0.8.0-dev.121+550b8c7/streb-dev_darwin_arm64.tar.gz"
      sha256 "55608ae9b8a6895d828bf6cb5754a51c4a5ce809ef62c053bf2f9dd19af0fc3c"
    end
    on_intel do
      url "https://github.com/adesso-ai/homebrew-streb-dev/releases/download/v0.8.0-dev.121+550b8c7/streb-dev_darwin_amd64.tar.gz"
      sha256 "2f19d48965d5f71c0dc4b45bf4e7c6f21e9000877c9412b3c2c3c8a931a4e53b"
    end
  end

  on_linux do
    on_intel do
      url "https://github.com/adesso-ai/homebrew-streb-dev/releases/download/v0.8.0-dev.121+550b8c7/streb-dev_linux_amd64.tar.gz"
      sha256 "51f29df43a3d330b704af94204d537184f5f691c6f185adf80d7508297565570"
    end
  end

  def install
    bin.install "streb-dev"
  end

  test do
    assert_match "streb-dev version", shell_output("#{bin}/streb-dev --version")
  end
end
