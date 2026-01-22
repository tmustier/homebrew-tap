class EconomistTui < Formula
  desc "Terminal UI to browse and read The Economist"
  homepage "https://github.com/tmustier/economist-tui"
  url "https://github.com/tmustier/economist-tui/archive/refs/tags/v0.2.4.tar.gz"
  sha256 "3bb76f83f1f51acf9131a7700161fccc7b4d58ac158c01537a2099bec5a82f47"
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
