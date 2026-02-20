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
  version "0.8.0-dev.149+07de0d7"
  license :cannot_represent

  on_macos do
    on_arm do
      url "https://github.com/adesso-ai/homebrew-streb-dev/releases/download/v0.8.0-dev.149+07de0d7/streb-dev_darwin_arm64.tar.gz"
      sha256 "6e659ff7649ae372d421e2eb125460f397ebfa00b3ebb0e907bebce4c8ef4a6a"
    end
    on_intel do
      url "https://github.com/adesso-ai/homebrew-streb-dev/releases/download/v0.8.0-dev.149+07de0d7/streb-dev_darwin_amd64.tar.gz"
      sha256 "378276fa2e77aa0bd8b7d550c2c759900060144eed204c1f8c3232f1f27d1a6c"
    end
  end

  on_linux do
    on_intel do
      url "https://github.com/adesso-ai/homebrew-streb-dev/releases/download/v0.8.0-dev.149+07de0d7/streb-dev_linux_amd64.tar.gz"
      sha256 "440c48d49c363a17d3f41e5f05895b5d39ffeeca1fdfe78b235b868490000ec5"
    end
  end

  def install
    bin.install "streb-dev"
  end

  test do
    assert_match "streb-dev version", shell_output("#{bin}/streb-dev --version")
  end
end
