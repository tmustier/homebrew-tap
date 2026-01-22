class EconomistTui < Formula
  desc "Terminal UI to browse and read The Economist"
  homepage "https://github.com/tmustier/economist-tui"
  url "https://github.com/tmustier/economist-tui/archive/refs/tags/v0.2.6.tar.gz"
  sha256 "6e1aa46dd081dcb50190cfc1b3eb83fe38bd94fc87f55b00cb9a865ff089b342"
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
