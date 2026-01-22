class EconomistTui < Formula
  desc "Terminal UI to browse and read The Economist"
  homepage "https://github.com/tmustier/economist-tui"
  url "https://github.com/tmustier/economist-tui/archive/refs/tags/v0.3.2.tar.gz"
  sha256 "69c0b7a8ec68a7b89f450bbcd10fc267ee274398e743eae3467c45438d3bb93f"
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
