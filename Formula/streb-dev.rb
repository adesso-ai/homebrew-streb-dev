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
  version "0.7.18-dev.9+a7bc1e7"
  license :cannot_represent

  on_macos do
    on_arm do
      url "https://github.com/adesso-ai/homebrew-streb-dev/releases/download/v0.7.18-dev.9+a7bc1e7/streb-dev_darwin_arm64.tar.gz"
      sha256 "63bcbc89e718aa24ab59267f58dc7be4658db5277c0a7debf4951b493533d5db"
    end
    on_intel do
      url "https://github.com/adesso-ai/homebrew-streb-dev/releases/download/v0.7.18-dev.9+a7bc1e7/streb-dev_darwin_amd64.tar.gz"
      sha256 "74ac455f71ae08fcd4e4c013f14713fb60312aa32cce92daa9515be0579cbaaf"
    end
  end

  on_linux do
    on_intel do
      url "https://github.com/adesso-ai/homebrew-streb-dev/releases/download/v0.7.18-dev.9+a7bc1e7/streb-dev_linux_amd64.tar.gz"
      sha256 "4d30bf9ddd11a3352abc983145a58de5cb59a5c883a45e7b673e74f3b88eaa37"
    end
  end

  def install
    bin.install "streb-dev"
  end

  test do
    assert_match "streb-dev version", shell_output("#{bin}/streb-dev --version")
  end
end
