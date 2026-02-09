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
  version "0.8.0-dev.55+c30f031"
  license :cannot_represent

  on_macos do
    on_arm do
      url "https://github.com/adesso-ai/homebrew-streb-dev/releases/download/v0.8.0-dev.55+c30f031/streb-dev_darwin_arm64.tar.gz"
      sha256 "d8385c8e9e4cd40e29df008b7de194411d6b11b09de46fe2621bbeae8d3008e3"
    end
    on_intel do
      url "https://github.com/adesso-ai/homebrew-streb-dev/releases/download/v0.8.0-dev.55+c30f031/streb-dev_darwin_amd64.tar.gz"
      sha256 "20d63576998564dfeb23cb41c06b0adf5cccc4a1d75a7964c20c32e6609000ea"
    end
  end

  on_linux do
    on_intel do
      url "https://github.com/adesso-ai/homebrew-streb-dev/releases/download/v0.8.0-dev.55+c30f031/streb-dev_linux_amd64.tar.gz"
      sha256 "d101743f8b00c52a25d04030ee17ecc3bcaf38e2c87545ecc4061bc88754f8fd"
    end
  end

  def install
    bin.install "streb-dev"
  end

  test do
    assert_match "streb-dev version", shell_output("#{bin}/streb-dev --version")
  end
end
