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
  version "0.8.0-dev.14+e109452"
  license :cannot_represent

  on_macos do
    on_arm do
      url "https://github.com/adesso-ai/homebrew-streb-dev/releases/download/v0.8.0-dev.14+e109452/streb-dev_darwin_arm64.tar.gz"
      sha256 "4671914cd83fe61999ebd8ea39d9ed6a5751deee3d38cab4fc85c5def7376a0f"
    end
    on_intel do
      url "https://github.com/adesso-ai/homebrew-streb-dev/releases/download/v0.8.0-dev.14+e109452/streb-dev_darwin_amd64.tar.gz"
      sha256 "02fa5b980e48f849be85ee28970f8f14c44ddce1b8f19e88630c2ff56e892e67"
    end
  end

  on_linux do
    on_intel do
      url "https://github.com/adesso-ai/homebrew-streb-dev/releases/download/v0.8.0-dev.14+e109452/streb-dev_linux_amd64.tar.gz"
      sha256 "27ee2004ae234f06b021271656ed42ef0275d1e0d2bbd6c7f511ffa645d52ec2"
    end
  end

  def install
    bin.install "streb-dev"
  end

  test do
    assert_match "streb-dev version", shell_output("#{bin}/streb-dev --version")
  end
end
