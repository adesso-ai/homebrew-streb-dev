# Homebrew formula for strebdev (development builds)
#
# Installation:
#   brew tap adesso-ai/streb-dev https://github.com/adesso-ai/homebrew-streb-dev
#   brew install strebdev
#
# Auto-updated by GitHub Actions on each push to develop.

class Strebdev < Formula
  desc "CLI tool for bootstrapping Claude Code development environments (dev build)"
  homepage "https://strebcli.dev"
  version "0.7.18-dev.12+3c4887c"
  license :cannot_represent

  on_macos do
    on_arm do
      url "https://github.com/adesso-ai/homebrew-streb-dev/releases/download/v0.7.18-dev.12+3c4887c/streb-dev_darwin_arm64.tar.gz"
      sha256 "798f18ebf261a66dbdda9a09c1adec956f3fdfb9fadc0d131074d72319287213"
    end
    on_intel do
      url "https://github.com/adesso-ai/homebrew-streb-dev/releases/download/v0.7.18-dev.12+3c4887c/streb-dev_darwin_amd64.tar.gz"
      sha256 "1b3752a800f55b8953ba725fb25cfecae8c0914cb68181d6ba733c1e7c76094f"
    end
  end

  on_linux do
    on_intel do
      url "https://github.com/adesso-ai/homebrew-streb-dev/releases/download/v0.7.18-dev.12+3c4887c/streb-dev_linux_amd64.tar.gz"
      sha256 "e550cc56056c07d298e9fa12837b11a97054a52cca8eeadc31270d3e7c0415c3"
    end
  end

  def install
    bin.install "streb-dev"
  end

  test do
    assert_match "streb-dev version", shell_output("#{bin}/streb-dev --version")
  end
end
