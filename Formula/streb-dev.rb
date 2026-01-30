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
  version "0.8.0-dev.11+f1eeaa7"
  license :cannot_represent

  on_macos do
    on_arm do
      url "https://github.com/adesso-ai/homebrew-streb-dev/releases/download/v0.8.0-dev.11+f1eeaa7/streb-dev_darwin_arm64.tar.gz"
      sha256 "060af884666b47706509f1374b36d0d19e1ee2e4d0214f514dc603c07164a793"
    end
    on_intel do
      url "https://github.com/adesso-ai/homebrew-streb-dev/releases/download/v0.8.0-dev.11+f1eeaa7/streb-dev_darwin_amd64.tar.gz"
      sha256 "90e2837bf5d6a7810dfb4d2703ee8df755bbb7ecf2d63847c42b93909394c768"
    end
  end

  on_linux do
    on_intel do
      url "https://github.com/adesso-ai/homebrew-streb-dev/releases/download/v0.8.0-dev.11+f1eeaa7/streb-dev_linux_amd64.tar.gz"
      sha256 "25f979ec14bd18585f81dbb91375c924e4a8c2c1a0464b965759be70b0e58093"
    end
  end

  def install
    bin.install "streb-dev"
  end

  test do
    assert_match "streb-dev version", shell_output("#{bin}/streb-dev --version")
  end
end
