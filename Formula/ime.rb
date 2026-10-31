class Ime < Formula
  desc "Terminal text editor that feels native on macOS"
  homepage "https://github.com/albedev/ime"
  url "https://github.com/albedev/ime/releases/download/v0.1.1/ime-0.1.1-macos-universal.tar.gz"
  sha256 "75a02bee7a2d94ce688c0058f04603c487e98b0012760d4bdbede7d1c26d7cbf"
  license "MIT"

  depends_on :macos

  def install
    bin.install "ime"
  end

  def caveats
    <<~EOS
      To let ⌘ shortcuts reach ime, set up your terminal:
        https://github.com/albedev/ime#terminal-setup
    EOS
  end

  test do
    assert_match "usage: ime", shell_output("#{bin}/ime 2>&1", 2)
  end
end
