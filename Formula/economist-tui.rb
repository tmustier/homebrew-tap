class EconomistTui < Formula
  desc "Terminal UI to browse and read The Economist"
  homepage "https://github.com/tmustier/economist-tui"
  url "https://github.com/tmustier/economist-tui/archive/refs/tags/v0.3.4.tar.gz"
  sha256 "20989ed3315eba491a3b457fb91cb78520ad1a05924ae07b75719f8d5575a5b2"
  license "MIT"

  depends_on "go" => :build

  def install
    system "go", "build", "-o", bin/"economist", "."
  end

  test do
    system "#{bin}/economist", "--version"
  end

  def caveats
    <<~EOS
      Requires Chrome or Chromium for login and article fetching.
    EOS
  end
end
