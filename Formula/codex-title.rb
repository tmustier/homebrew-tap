class CodexTitle < Formula
  desc "Codex wrapper that updates terminal tab title while it runs"
  homepage "https://github.com/tmustier/codex-title"
  url "https://github.com/tmustier/codex-title/archive/refs/tags/v0.1.27.tar.gz"
  sha256 "b8a89490414bc0a679ee03afe92c74ad009ac6012ff6fb3af9d9541cfac3bb37"
  license "MIT"

  def install
    bin.install "src/codex_title/cli.py" => "codex-title"
  end

  test do
    system "#{bin}/codex-title", "--help"
  end
end
