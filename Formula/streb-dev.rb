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
  version "0.8.0-dev.151+28c09af"
  license :cannot_represent

  on_macos do
    on_arm do
      url "https://github.com/adesso-ai/homebrew-streb-dev/releases/download/v0.8.0-dev.151+28c09af/streb-dev_darwin_arm64.tar.gz"
      sha256 "fb2426a490a62dedd21f397d53f058b48b96963d11f1811015cdd494b5df806c"
    end
    on_intel do
      url "https://github.com/adesso-ai/homebrew-streb-dev/releases/download/v0.8.0-dev.151+28c09af/streb-dev_darwin_amd64.tar.gz"
      sha256 "72b337f65f08cceada2acb253c5dbc4e0e775a42e6ee1551ff69cbf7b41eba80"
    end
  end

  on_linux do
    on_intel do
      url "https://github.com/adesso-ai/homebrew-streb-dev/releases/download/v0.8.0-dev.151+28c09af/streb-dev_linux_amd64.tar.gz"
      sha256 "cafd58e3a556818387f3ed0ba16224fa9e58d2d17dfebf69e0d48afcd4429825"
    end
  end

  def install
    bin.install "streb-dev"
  end

  test do
    assert_match "streb-dev version", shell_output("#{bin}/streb-dev --version")
  end
end
