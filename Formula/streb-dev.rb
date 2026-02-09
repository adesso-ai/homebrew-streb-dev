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
  version "0.8.0-dev.59+b3efc20"
  license :cannot_represent

  on_macos do
    on_arm do
      url "https://github.com/adesso-ai/homebrew-streb-dev/releases/download/v0.8.0-dev.59+b3efc20/streb-dev_darwin_arm64.tar.gz"
      sha256 "fedc177bcf4d6d5d9ebc2a7cb4c14b41d2c7945e8fdf8336db50462376f0d046"
    end
    on_intel do
      url "https://github.com/adesso-ai/homebrew-streb-dev/releases/download/v0.8.0-dev.59+b3efc20/streb-dev_darwin_amd64.tar.gz"
      sha256 "eb1c7fcc084098a2cc8d9e2ce2f138ca0ab23fa6cc4c53a2a8c610938df67231"
    end
  end

  on_linux do
    on_intel do
      url "https://github.com/adesso-ai/homebrew-streb-dev/releases/download/v0.8.0-dev.59+b3efc20/streb-dev_linux_amd64.tar.gz"
      sha256 "225d19cca3a391a6a4e1257ac5c6c9b612b5328de232e96aca0e733c67c02e36"
    end
  end

  def install
    bin.install "streb-dev"
  end

  test do
    assert_match "streb-dev version", shell_output("#{bin}/streb-dev --version")
  end
end
