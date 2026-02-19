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
  version "0.8.0-dev.126+aa35e98"
  license :cannot_represent

  on_macos do
    on_arm do
      url "https://github.com/adesso-ai/homebrew-streb-dev/releases/download/v0.8.0-dev.126+aa35e98/streb-dev_darwin_arm64.tar.gz"
      sha256 "b83f9d4d85ab8900c761ee28015993b77f8610b6b94fbef5a2fce33c6808d6f3"
    end
    on_intel do
      url "https://github.com/adesso-ai/homebrew-streb-dev/releases/download/v0.8.0-dev.126+aa35e98/streb-dev_darwin_amd64.tar.gz"
      sha256 "c6ba0d2b45e1372358b4d3716abca34164521d0126b3a23c00c5ceca5c209652"
    end
  end

  on_linux do
    on_intel do
      url "https://github.com/adesso-ai/homebrew-streb-dev/releases/download/v0.8.0-dev.126+aa35e98/streb-dev_linux_amd64.tar.gz"
      sha256 "7c1ddc3c5011cc2d8c14322d3f06f952b663b22cfd2880c6cf7194e0ef68bf1c"
    end
  end

  def install
    bin.install "streb-dev"
  end

  test do
    assert_match "streb-dev version", shell_output("#{bin}/streb-dev --version")
  end
end
