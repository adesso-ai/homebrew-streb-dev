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
  version "0.7.18-dev.19+b44266d"
  license :cannot_represent

  on_macos do
    on_arm do
      url "https://github.com/adesso-ai/homebrew-streb-dev/releases/download/v0.7.18-dev.19+b44266d/streb-dev_darwin_arm64.tar.gz"
      sha256 "765fe2d5cde9281607b1b4c6b335800c72a2a05e2f69f97ebf71f0882ab64a84"
    end
    on_intel do
      url "https://github.com/adesso-ai/homebrew-streb-dev/releases/download/v0.7.18-dev.19+b44266d/streb-dev_darwin_amd64.tar.gz"
      sha256 "96d4305ebd375a315476e28d0ade491befdd2ea8432a3481313b9ec5ffdb4c01"
    end
  end

  on_linux do
    on_intel do
      url "https://github.com/adesso-ai/homebrew-streb-dev/releases/download/v0.7.18-dev.19+b44266d/streb-dev_linux_amd64.tar.gz"
      sha256 "f059a9601d6f68cc0fdc5251b059e3875ed6b7987eda1e7896ef26f6e0456015"
    end
  end

  def install
    bin.install "streb-dev"
  end

  test do
    assert_match "streb-dev version", shell_output("#{bin}/streb-dev --version")
  end
end
