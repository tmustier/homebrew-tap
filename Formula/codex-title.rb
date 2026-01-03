class CodexTitle < Formula
  desc "Codex wrapper that updates terminal tab title while it runs"
  homepage "https://github.com/tmustier/codex-title"
  url "https://github.com/tmustier/codex-title/archive/refs/tags/v0.1.23.tar.gz"
  sha256 "1c27c570e95dfa1ba25d2635803bf835a4eaba9f4c8a0875d6d59c96d5e5d989"
  license "MIT"

  def install
    bin.install "codex-title"
  end

  test do
    system "#{bin}/codex-title", "--help"
  end
end
