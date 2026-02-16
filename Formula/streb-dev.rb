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
  version "0.8.0-dev.80+eb2548f"
  license :cannot_represent

  on_macos do
    on_arm do
      url "https://github.com/adesso-ai/homebrew-streb-dev/releases/download/v0.8.0-dev.80+eb2548f/streb-dev_darwin_arm64.tar.gz"
      sha256 "18256ede0b171eda3e6d868e31a91cbbac54864743f3c40e01aa64d4f9018407"
    end
    on_intel do
      url "https://github.com/adesso-ai/homebrew-streb-dev/releases/download/v0.8.0-dev.80+eb2548f/streb-dev_darwin_amd64.tar.gz"
      sha256 "90e26a371618c5d250cd57b3fd3e5ceb2820dad47f8b58bb426ba01154a23a75"
    end
  end

  on_linux do
    on_intel do
      url "https://github.com/adesso-ai/homebrew-streb-dev/releases/download/v0.8.0-dev.80+eb2548f/streb-dev_linux_amd64.tar.gz"
      sha256 "baac42ac191e02e56b1ec2ef8234e8189e93d62709991d5f1547d2d897db3cf6"
    end
  end

  def install
    bin.install "streb-dev"
  end

  test do
    assert_match "streb-dev version", shell_output("#{bin}/streb-dev --version")
  end
end
