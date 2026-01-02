class CodexTitle < Formula
  desc "Codex wrapper that updates terminal tab title while it runs"
  homepage "https://github.com/tmustier/codex-title"
  url "https://github.com/tmustier/codex-title/archive/refs/tags/v0.1.2.tar.gz"
  sha256 "2cb15c9dc54ba487e97c4eb255d046fca718de9c2b49cc6e1804822942e63329"
  license "MIT"

  def install
    bin.install "codex-title"
  end

  test do
    system "#{bin}/codex-title", "--help"
  end
end
