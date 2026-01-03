class CodexTitle < Formula
  desc "Codex wrapper that updates terminal tab title while it runs"
  homepage "https://github.com/tmustier/codex-title"
  url "https://github.com/tmustier/codex-title/archive/refs/tags/v0.1.19.tar.gz"
  sha256 "3ab14a95184df45974413c9a7b25b6719f5b9b6041ee3b8b6d34fa7e6a0d8d7c"
  license "MIT"

  def install
    bin.install "codex-title"
  end

  test do
    system "#{bin}/codex-title", "--help"
  end
end
