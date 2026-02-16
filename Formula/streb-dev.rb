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
  version "0.8.0-dev.96+f913b9a"
  license :cannot_represent

  on_macos do
    on_arm do
      url "https://github.com/adesso-ai/homebrew-streb-dev/releases/download/v0.8.0-dev.96+f913b9a/streb-dev_darwin_arm64.tar.gz"
      sha256 "d07f2b86b5f6e00f6a9cc84c69ce587913612cc572361b1c5f4cd7e024543f61"
    end
    on_intel do
      url "https://github.com/adesso-ai/homebrew-streb-dev/releases/download/v0.8.0-dev.96+f913b9a/streb-dev_darwin_amd64.tar.gz"
      sha256 "a7db2ad430fe75eaab69f81dc70b7f976b75c50bb3e10c4ab9f96cf8a7a12c2e"
    end
  end

  on_linux do
    on_intel do
      url "https://github.com/adesso-ai/homebrew-streb-dev/releases/download/v0.8.0-dev.96+f913b9a/streb-dev_linux_amd64.tar.gz"
      sha256 "e9a7a4397c262ebaa28e97d35477c08bd10f97e91494abfe0b79bde4ddd10c22"
    end
  end

  def install
    bin.install "streb-dev"
  end

  test do
    assert_match "streb-dev version", shell_output("#{bin}/streb-dev --version")
  end
end
