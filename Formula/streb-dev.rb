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
  version "0.8.0-dev.65+6b06d6f"
  license :cannot_represent

  on_macos do
    on_arm do
      url "https://github.com/adesso-ai/homebrew-streb-dev/releases/download/v0.8.0-dev.65+6b06d6f/streb-dev_darwin_arm64.tar.gz"
      sha256 "08d5b04a0483976fb4c38b06b98a2800cee04cb574362fe2845681a65fbc6840"
    end
    on_intel do
      url "https://github.com/adesso-ai/homebrew-streb-dev/releases/download/v0.8.0-dev.65+6b06d6f/streb-dev_darwin_amd64.tar.gz"
      sha256 "17e20f07184b368b998b3e3ef3c6f344c3ec67a9e53ba08bb285ba3ef1975445"
    end
  end

  on_linux do
    on_intel do
      url "https://github.com/adesso-ai/homebrew-streb-dev/releases/download/v0.8.0-dev.65+6b06d6f/streb-dev_linux_amd64.tar.gz"
      sha256 "b860044d1290a76eae050ff5802d8c581a9eb8de56db40548c10bee04076f701"
    end
  end

  def install
    bin.install "streb-dev"
  end

  test do
    assert_match "streb-dev version", shell_output("#{bin}/streb-dev --version")
  end
end
