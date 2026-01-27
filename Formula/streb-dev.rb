# Homebrew formula for strebdev (development builds)
#
# Installation:
#   brew tap adesso-ai/streb-dev https://github.com/adesso-ai/homebrew-streb-dev
#   brew install strebdev
#
# Auto-updated by GitHub Actions on each push to develop.

class Strebdev < Formula
  desc "CLI tool for bootstrapping Claude Code development environments (dev build)"
  homepage "https://strebcli.dev"
  version "0.7.18-dev.8+7dc452a"
  license :cannot_represent

  on_macos do
    on_arm do
      url "https://github.com/adesso-ai/homebrew-streb-dev/releases/download/v0.7.18-dev.8+7dc452a/streb-dev_darwin_arm64.tar.gz"
      sha256 "b21276341f361ec0ccbe24b0a4e6f5520e1fb34896aa401b399056029ed22f1f"
    end
    on_intel do
      url "https://github.com/adesso-ai/homebrew-streb-dev/releases/download/v0.7.18-dev.8+7dc452a/streb-dev_darwin_amd64.tar.gz"
      sha256 "db725f471c289bd227dbadcdec31c5b1c9a8a6e62ca0e138bb27d9a88e2adfba"
    end
  end

  on_linux do
    on_intel do
      url "https://github.com/adesso-ai/homebrew-streb-dev/releases/download/v0.7.18-dev.8+7dc452a/streb-dev_linux_amd64.tar.gz"
      sha256 "991f6df38fe272d4b494bdbaad32011757c5af0b1e84b6c45709dcecc117f1eb"
    end
  end

  def install
    bin.install "streb-dev"
  end

  test do
    assert_match "streb-dev version", shell_output("#{bin}/streb-dev --version")
  end
end
