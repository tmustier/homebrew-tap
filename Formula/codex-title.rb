class CodexTitle < Formula
  desc "Codex wrapper that updates terminal tab title while it runs"
  homepage "https://github.com/tmustier/codex-title"
  url "https://github.com/tmustier/codex-title/archive/refs/tags/v0.1.30.tar.gz"
  sha256 "03b7771adecb2bcf71c043083b83c5e55ce04d57a322d2e54a68f4eaf82eb5ee"
  license "MIT"

  def install
    bin.install "src/codex_title/cli.py" => "codex-title"
  end

  test do
    system "#{bin}/codex-title", "--help"
  end
end
