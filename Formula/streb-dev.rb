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
  version "0.8.0-dev.5+9a92d05"
  license :cannot_represent

  on_macos do
    on_arm do
      url "https://github.com/adesso-ai/homebrew-streb-dev/releases/download/v0.8.0-dev.5+9a92d05/streb-dev_darwin_arm64.tar.gz"
      sha256 "09336b5c3662d627bae75435caafbfc23e83fc10c916d5a5c6dfc9eda0d4db83"
    end
    on_intel do
      url "https://github.com/adesso-ai/homebrew-streb-dev/releases/download/v0.8.0-dev.5+9a92d05/streb-dev_darwin_amd64.tar.gz"
      sha256 "aa14579d93b510e792990ee4ad476f8012818fcef42e25ba1d931c5ae7ef8a2e"
    end
  end

  on_linux do
    on_intel do
      url "https://github.com/adesso-ai/homebrew-streb-dev/releases/download/v0.8.0-dev.5+9a92d05/streb-dev_linux_amd64.tar.gz"
      sha256 "d89866a210f4218e764e4cd0deb3d0be4637b2ef820aac20ab915ead91bd5bae"
    end
  end

  def install
    bin.install "streb-dev"
  end

  test do
    assert_match "streb-dev version", shell_output("#{bin}/streb-dev --version")
  end
end
