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
  version "0.8.0-dev.22+5ba23ce"
  license :cannot_represent

  on_macos do
    on_arm do
      url "https://github.com/adesso-ai/homebrew-streb-dev/releases/download/v0.8.0-dev.22+5ba23ce/streb-dev_darwin_arm64.tar.gz"
      sha256 "2f9ac0f34bf5cca0e383a7e13803307b858980257f922cf2b453910c12266dea"
    end
    on_intel do
      url "https://github.com/adesso-ai/homebrew-streb-dev/releases/download/v0.8.0-dev.22+5ba23ce/streb-dev_darwin_amd64.tar.gz"
      sha256 "b21b68df178fd2914b9ca54f9f1bf44b97b975ffec7c8a746f0d546647394561"
    end
  end

  on_linux do
    on_intel do
      url "https://github.com/adesso-ai/homebrew-streb-dev/releases/download/v0.8.0-dev.22+5ba23ce/streb-dev_linux_amd64.tar.gz"
      sha256 "5837825ce4cdd1961f12136027d626b25be574a30a360b74052fcde0a861cb69"
    end
  end

  def install
    bin.install "streb-dev"
  end

  test do
    assert_match "streb-dev version", shell_output("#{bin}/streb-dev --version")
  end
end
