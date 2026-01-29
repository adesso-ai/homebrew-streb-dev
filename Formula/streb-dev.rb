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
  version "0.7.18-dev.17+d67f40a"
  license :cannot_represent

  on_macos do
    on_arm do
      url "https://github.com/adesso-ai/homebrew-streb-dev/releases/download/v0.7.18-dev.17+d67f40a/streb-dev_darwin_arm64.tar.gz"
      sha256 "9f51c1d06e17c8dc4297a7824b92e9dfdcd8bc9fa2ebeb55a8f045ae2476f198"
    end
    on_intel do
      url "https://github.com/adesso-ai/homebrew-streb-dev/releases/download/v0.7.18-dev.17+d67f40a/streb-dev_darwin_amd64.tar.gz"
      sha256 "69683577e7a71cfcce9b20aeb13c8c3c5b2df0b0a66e2c84ac05c1b41147bd5b"
    end
  end

  on_linux do
    on_intel do
      url "https://github.com/adesso-ai/homebrew-streb-dev/releases/download/v0.7.18-dev.17+d67f40a/streb-dev_linux_amd64.tar.gz"
      sha256 "b89795a7577e4c13c6970714c766419ddea1baae40d518b35ce190894605577b"
    end
  end

  def install
    bin.install "streb-dev"
  end

  test do
    assert_match "streb-dev version", shell_output("#{bin}/streb-dev --version")
  end
end
