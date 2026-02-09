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
  version "0.8.0-dev.69+0c45673"
  license :cannot_represent

  on_macos do
    on_arm do
      url "https://github.com/adesso-ai/homebrew-streb-dev/releases/download/v0.8.0-dev.69+0c45673/streb-dev_darwin_arm64.tar.gz"
      sha256 "9324d8f66498e3e3f7608a50967823b38ae62b1582bcb7c35b9a43ef4acf46fb"
    end
    on_intel do
      url "https://github.com/adesso-ai/homebrew-streb-dev/releases/download/v0.8.0-dev.69+0c45673/streb-dev_darwin_amd64.tar.gz"
      sha256 "7aa71b811335080cbbc504e2c330619ee288eb134f57ba6a66b50109af07c68a"
    end
  end

  on_linux do
    on_intel do
      url "https://github.com/adesso-ai/homebrew-streb-dev/releases/download/v0.8.0-dev.69+0c45673/streb-dev_linux_amd64.tar.gz"
      sha256 "38abb7d894e108622505d62ad0de19faba3ed03bb97fada547e2d1202ca05b06"
    end
  end

  def install
    bin.install "streb-dev"
  end

  test do
    assert_match "streb-dev version", shell_output("#{bin}/streb-dev --version")
  end
end
