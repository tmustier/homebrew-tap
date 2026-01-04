class CodexTitle < Formula
  desc "Codex wrapper that updates terminal tab title while it runs"
  homepage "https://github.com/tmustier/codex-title"
  url "https://github.com/tmustier/codex-title/archive/refs/tags/v0.1.26.tar.gz"
  sha256 "09e8b2da507b8cf42aff7b97f7af3325e0b0c344991f769184fa846e13823565"
  license "MIT"

  def install
    bin.install "src/codex_title/cli.py" => "codex-title"
  end

  test do
    system "#{bin}/codex-title", "--help"
  end
end
