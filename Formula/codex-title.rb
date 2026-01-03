class CodexTitle < Formula
  desc "Codex wrapper that updates terminal tab title while it runs"
  homepage "https://github.com/tmustier/codex-title"
  url "https://github.com/tmustier/codex-title/archive/refs/tags/v0.1.20.tar.gz"
  sha256 "92d749b0b3f0ed9c289d7db8939136722327213653b5275a1eb9f27e6658d5b9"
  license "MIT"

  def install
    bin.install "codex-title"
  end

  test do
    system "#{bin}/codex-title", "--help"
  end
end
