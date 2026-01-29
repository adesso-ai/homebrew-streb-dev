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
  version "0.7.18-dev.15+ebf37e0"
  license :cannot_represent

  on_macos do
    on_arm do
      url "https://github.com/adesso-ai/homebrew-streb-dev/releases/download/v0.7.18-dev.15+ebf37e0/streb-dev_darwin_arm64.tar.gz"
      sha256 "3580f0f616fc1f1dc3fdb5af8ab35c9c94fee1cdf1783838dee65eb0933de3d3"
    end
    on_intel do
      url "https://github.com/adesso-ai/homebrew-streb-dev/releases/download/v0.7.18-dev.15+ebf37e0/streb-dev_darwin_amd64.tar.gz"
      sha256 "83340f2913420cca5386d99347ac05bc3d27682239b2557b7e2b021641b87ea5"
    end
  end

  on_linux do
    on_intel do
      url "https://github.com/adesso-ai/homebrew-streb-dev/releases/download/v0.7.18-dev.15+ebf37e0/streb-dev_linux_amd64.tar.gz"
      sha256 "364864c72086f395fb3586ee7beb708ea2f5401915fd88cdb11c3d0adb58161a"
    end
  end

  def install
    bin.install "streb-dev"
  end

  test do
    assert_match "streb-dev version", shell_output("#{bin}/streb-dev --version")
  end
end
