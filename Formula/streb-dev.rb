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
  version "0.8.0-dev.139+d43542a"
  license :cannot_represent

  on_macos do
    on_arm do
      url "https://github.com/adesso-ai/homebrew-streb-dev/releases/download/v0.8.0-dev.139+d43542a/streb-dev_darwin_arm64.tar.gz"
      sha256 "911bf650987029f8f8a8250c054549a562efd1ca7be1e9d45c765d1fc25ee998"
    end
    on_intel do
      url "https://github.com/adesso-ai/homebrew-streb-dev/releases/download/v0.8.0-dev.139+d43542a/streb-dev_darwin_amd64.tar.gz"
      sha256 "9037bd590620ffad57d0ebcb5c6bffe96e658df93656ea68f987f6aeb2fb1712"
    end
  end

  on_linux do
    on_intel do
      url "https://github.com/adesso-ai/homebrew-streb-dev/releases/download/v0.8.0-dev.139+d43542a/streb-dev_linux_amd64.tar.gz"
      sha256 "151c4b067c3d22fc4d954ea4eea93736df4ca6aaa941a144b1ced816a7504708"
    end
  end

  def install
    bin.install "streb-dev"
  end

  test do
    assert_match "streb-dev version", shell_output("#{bin}/streb-dev --version")
  end
end
