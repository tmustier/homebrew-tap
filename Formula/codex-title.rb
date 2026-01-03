class CodexTitle < Formula
  desc "Codex wrapper that updates terminal tab title while it runs"
  homepage "https://github.com/tmustier/codex-title"
  url "https://github.com/tmustier/codex-title/archive/refs/tags/v0.1.16.tar.gz"
  sha256 "269d0e2543927ad513925474b8abc62b89492b8296af8dba45d10972210b47ae"
  license "MIT"

  def install
    bin.install "codex-title"
  end

  test do
    system "#{bin}/codex-title", "--help"
  end
end
