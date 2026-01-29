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
  version "0.7.18-dev.21+32e2ff5"
  license :cannot_represent

  on_macos do
    on_arm do
      url "https://github.com/adesso-ai/homebrew-streb-dev/releases/download/v0.7.18-dev.21+32e2ff5/streb-dev_darwin_arm64.tar.gz"
      sha256 "bb780123462f1cf80003274c43f39be78ee3706f8aa733d4f4feaf68c7783792"
    end
    on_intel do
      url "https://github.com/adesso-ai/homebrew-streb-dev/releases/download/v0.7.18-dev.21+32e2ff5/streb-dev_darwin_amd64.tar.gz"
      sha256 "bea44ec8ad434ec4a079f46bb1b0081645c0cef5ed3a0737ed7c597c1626ae96"
    end
  end

  on_linux do
    on_intel do
      url "https://github.com/adesso-ai/homebrew-streb-dev/releases/download/v0.7.18-dev.21+32e2ff5/streb-dev_linux_amd64.tar.gz"
      sha256 "f01d48f6f286728b8737c33949e2583847640c29532cc54d428af7958eceebdf"
    end
  end

  def install
    bin.install "streb-dev"
  end

  test do
    assert_match "streb-dev version", shell_output("#{bin}/streb-dev --version")
  end
end
