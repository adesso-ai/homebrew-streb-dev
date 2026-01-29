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
  version "0.7.18-dev.20+90dab01"
  license :cannot_represent

  on_macos do
    on_arm do
      url "https://github.com/adesso-ai/homebrew-streb-dev/releases/download/v0.7.18-dev.20+90dab01/streb-dev_darwin_arm64.tar.gz"
      sha256 "30465f6b5a4e4d7b80a409edc1f8d584b81f080bdd2e8f713f6b15fe9eb52172"
    end
    on_intel do
      url "https://github.com/adesso-ai/homebrew-streb-dev/releases/download/v0.7.18-dev.20+90dab01/streb-dev_darwin_amd64.tar.gz"
      sha256 "ae7fc6cc739cde9aa76145230b32a9a373c9aa2a92a37587460dce971bf50c62"
    end
  end

  on_linux do
    on_intel do
      url "https://github.com/adesso-ai/homebrew-streb-dev/releases/download/v0.7.18-dev.20+90dab01/streb-dev_linux_amd64.tar.gz"
      sha256 "77bb57cfb05ff3d38b190bd2e1862bcc9e1f8683a38ea2926b1dc38ef40e4fd9"
    end
  end

  def install
    bin.install "streb-dev"
  end

  test do
    assert_match "streb-dev version", shell_output("#{bin}/streb-dev --version")
  end
end
