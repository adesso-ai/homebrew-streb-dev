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
  version "0.8.0-dev.71+53017bd"
  license :cannot_represent

  on_macos do
    on_arm do
      url "https://github.com/adesso-ai/homebrew-streb-dev/releases/download/v0.8.0-dev.71+53017bd/streb-dev_darwin_arm64.tar.gz"
      sha256 "60bca35a1e1bbfc03fb5a6fd76f79edf3b597c14ac944c3be17fd9d77245a14b"
    end
    on_intel do
      url "https://github.com/adesso-ai/homebrew-streb-dev/releases/download/v0.8.0-dev.71+53017bd/streb-dev_darwin_amd64.tar.gz"
      sha256 "4701a8355fe5d9c46c37de8d4ce7a84bd0496dfea5ee263e03431f54540c4945"
    end
  end

  on_linux do
    on_intel do
      url "https://github.com/adesso-ai/homebrew-streb-dev/releases/download/v0.8.0-dev.71+53017bd/streb-dev_linux_amd64.tar.gz"
      sha256 "4a2318a92b91b1cc84ef8c64680ee94f1b80b95a78940636cfb6a7cb3842a894"
    end
  end

  def install
    bin.install "streb-dev"
  end

  test do
    assert_match "streb-dev version", shell_output("#{bin}/streb-dev --version")
  end
end
