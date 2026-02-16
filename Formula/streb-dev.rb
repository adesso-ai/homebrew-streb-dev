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
  version "0.8.0-dev.85+b739da9"
  license :cannot_represent

  on_macos do
    on_arm do
      url "https://github.com/adesso-ai/homebrew-streb-dev/releases/download/v0.8.0-dev.85+b739da9/streb-dev_darwin_arm64.tar.gz"
      sha256 "9b33d1f8fe498088221109193cba432ddb0de025a56041e754b592bd43d30d20"
    end
    on_intel do
      url "https://github.com/adesso-ai/homebrew-streb-dev/releases/download/v0.8.0-dev.85+b739da9/streb-dev_darwin_amd64.tar.gz"
      sha256 "5d7ac0f878fcd9fa265be38e5317433461653e4ab85ec2a429bdadf6ff9aa80c"
    end
  end

  on_linux do
    on_intel do
      url "https://github.com/adesso-ai/homebrew-streb-dev/releases/download/v0.8.0-dev.85+b739da9/streb-dev_linux_amd64.tar.gz"
      sha256 "1bb16d08b430d2aee390eea835eb9822273bb6fbd39c4569b257a43e6332cbc4"
    end
  end

  def install
    bin.install "streb-dev"
  end

  test do
    assert_match "streb-dev version", shell_output("#{bin}/streb-dev --version")
  end
end
