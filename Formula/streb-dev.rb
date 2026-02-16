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
  version "0.8.0-dev.89+fe51bd0"
  license :cannot_represent

  on_macos do
    on_arm do
      url "https://github.com/adesso-ai/homebrew-streb-dev/releases/download/v0.8.0-dev.89+fe51bd0/streb-dev_darwin_arm64.tar.gz"
      sha256 "361c4397f185efe1c836b3ddfa56b1341c0572290b44b3a3a54508be78be6ec4"
    end
    on_intel do
      url "https://github.com/adesso-ai/homebrew-streb-dev/releases/download/v0.8.0-dev.89+fe51bd0/streb-dev_darwin_amd64.tar.gz"
      sha256 "aafc4929cf7e05527475ffade4b55a23b66677a0423b63158b6299c426d0d447"
    end
  end

  on_linux do
    on_intel do
      url "https://github.com/adesso-ai/homebrew-streb-dev/releases/download/v0.8.0-dev.89+fe51bd0/streb-dev_linux_amd64.tar.gz"
      sha256 "8cfbbfb9d42a15477162552c461b8432ccde01b5fbe663577742c43b4725090a"
    end
  end

  def install
    bin.install "streb-dev"
  end

  test do
    assert_match "streb-dev version", shell_output("#{bin}/streb-dev --version")
  end
end
