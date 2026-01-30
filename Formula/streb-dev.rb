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
  version "0.8.0-dev.2+976e72e"
  license :cannot_represent

  on_macos do
    on_arm do
      url "https://github.com/adesso-ai/homebrew-streb-dev/releases/download/v0.8.0-dev.2+976e72e/streb-dev_darwin_arm64.tar.gz"
      sha256 "89cb38f8a77a8c39a0a9cded62d55d75ae320c3430b27e98da9ffaf1df0ed236"
    end
    on_intel do
      url "https://github.com/adesso-ai/homebrew-streb-dev/releases/download/v0.8.0-dev.2+976e72e/streb-dev_darwin_amd64.tar.gz"
      sha256 "9411eb9b30e1bb342bcfbab23882252163431b83b851865a5d324e1c2f021505"
    end
  end

  on_linux do
    on_intel do
      url "https://github.com/adesso-ai/homebrew-streb-dev/releases/download/v0.8.0-dev.2+976e72e/streb-dev_linux_amd64.tar.gz"
      sha256 "da8bcbcb0ebc076161b0c23bae8e3f1d28d6790b220c5afac2da9a9b1da3a117"
    end
  end

  def install
    bin.install "streb-dev"
  end

  test do
    assert_match "streb-dev version", shell_output("#{bin}/streb-dev --version")
  end
end
