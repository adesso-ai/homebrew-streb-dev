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
  version "0.8.0-dev.44+1e000d0"
  license :cannot_represent

  on_macos do
    on_arm do
      url "https://github.com/adesso-ai/homebrew-streb-dev/releases/download/v0.8.0-dev.44+1e000d0/streb-dev_darwin_arm64.tar.gz"
      sha256 "d2f28678477daa4b4a9fb54779b7404178aa04434b79565834d3725f20d7e414"
    end
    on_intel do
      url "https://github.com/adesso-ai/homebrew-streb-dev/releases/download/v0.8.0-dev.44+1e000d0/streb-dev_darwin_amd64.tar.gz"
      sha256 "986a3063a9e457fcfec07bc2d85fa4a61be4745c5ecf219bc26502b0d7adacb2"
    end
  end

  on_linux do
    on_intel do
      url "https://github.com/adesso-ai/homebrew-streb-dev/releases/download/v0.8.0-dev.44+1e000d0/streb-dev_linux_amd64.tar.gz"
      sha256 "b7c31105c46a2fe51edaf1ce8e172d3cdd82ee7c99d3c8ef204802ec60a89d52"
    end
  end

  def install
    bin.install "streb-dev"
  end

  test do
    assert_match "streb-dev version", shell_output("#{bin}/streb-dev --version")
  end
end
