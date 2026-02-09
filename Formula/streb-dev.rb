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
  version "0.8.0-dev.66+3ebe9dc"
  license :cannot_represent

  on_macos do
    on_arm do
      url "https://github.com/adesso-ai/homebrew-streb-dev/releases/download/v0.8.0-dev.66+3ebe9dc/streb-dev_darwin_arm64.tar.gz"
      sha256 "3d41457ef6913f8073b0b54a51b90294d9d47f08b9377ce2214645631ec3c74b"
    end
    on_intel do
      url "https://github.com/adesso-ai/homebrew-streb-dev/releases/download/v0.8.0-dev.66+3ebe9dc/streb-dev_darwin_amd64.tar.gz"
      sha256 "017e339e8304c51fce893444f08007cc9c17ab69d3a451f79e24dfda76354f35"
    end
  end

  on_linux do
    on_intel do
      url "https://github.com/adesso-ai/homebrew-streb-dev/releases/download/v0.8.0-dev.66+3ebe9dc/streb-dev_linux_amd64.tar.gz"
      sha256 "be868ca38eb20bc837adf56ef634555feca8adbed46ef818f741849dbad5b5ff"
    end
  end

  def install
    bin.install "streb-dev"
  end

  test do
    assert_match "streb-dev version", shell_output("#{bin}/streb-dev --version")
  end
end
