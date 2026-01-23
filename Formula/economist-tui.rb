class EconomistTui < Formula
  desc "Terminal UI to browse and read The Economist"
  homepage "https://github.com/tmustier/economist-tui"
  url "https://github.com/tmustier/economist-tui/archive/refs/tags/v0.3.8.tar.gz"
  sha256 "09085b545924419913ece690b4fdfdf93fcaf1d3275970b138c8ed3c4bef38f9"
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
