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
  version "0.8.0-dev.87+b620e0b"
  license :cannot_represent

  on_macos do
    on_arm do
      url "https://github.com/adesso-ai/homebrew-streb-dev/releases/download/v0.8.0-dev.87+b620e0b/streb-dev_darwin_arm64.tar.gz"
      sha256 "1ad8c779446d4821407d30d93d712b8e26341ba1808688b68cc8c7463059cc63"
    end
    on_intel do
      url "https://github.com/adesso-ai/homebrew-streb-dev/releases/download/v0.8.0-dev.87+b620e0b/streb-dev_darwin_amd64.tar.gz"
      sha256 "2ad2005551b37bf78d2b5e3aa59cafa5d1dd36fcefd4df10049897acbb0e8eb2"
    end
  end

  on_linux do
    on_intel do
      url "https://github.com/adesso-ai/homebrew-streb-dev/releases/download/v0.8.0-dev.87+b620e0b/streb-dev_linux_amd64.tar.gz"
      sha256 "d3bd3d02adff6541796759101ec417ff0a4949023a9de7d297fee2e28361c9f1"
    end
  end

  def install
    bin.install "streb-dev"
  end

  test do
    assert_match "streb-dev version", shell_output("#{bin}/streb-dev --version")
  end
end
