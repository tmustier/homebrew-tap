class CodexTitle < Formula
  desc "Codex wrapper that updates terminal tab title while it runs"
  homepage "https://github.com/tmustier/codex-title"
  url "https://github.com/tmustier/codex-title/archive/refs/tags/v0.1.29.tar.gz"
  sha256 "af7f30cab0159efeaa8ff86cd9e76bc7eaa3e15cbfb12c8a3e9bbf1060fb993c"
  license "MIT"

  def install
    bin.install "src/codex_title/cli.py" => "codex-title"
  end

  test do
    system "#{bin}/codex-title", "--help"
  end
end
