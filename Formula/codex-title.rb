class CodexTitle < Formula
  desc "Codex wrapper that updates terminal tab title while it runs"
  homepage "https://github.com/tmustier/codex-title"
  url "https://github.com/tmustier/codex-title/archive/refs/tags/v0.1.25.tar.gz"
  sha256 "af92913275bb57d36be958f52782083e0f7ca9090847fad49216088d8c99f26c"
  license "MIT"

  def install
    bin.install "src/codex_title/cli.py" => "codex-title"
  end

  test do
    system "#{bin}/codex-title", "--help"
  end
end
