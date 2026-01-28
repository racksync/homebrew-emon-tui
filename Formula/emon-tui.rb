class EmonTui < Formula
  desc "Terminal UI for real-time energy monitoring from Home Assistant"
  homepage "https://github.com/racksync/emon-tui"
  url "https://github.com/racksync/emon-tui/archive/refs/tags/v0.1.0.tar.gz"
  sha256 "9624f2a18f4274aef32d4af86421352f7c1455bc0db7aa993628df11dc3ac3ef"
  license "MIT"

  bottle do
    root_url "https://github.com/racksync/homebrew-emon-tui/releases/download/v0.1.0"
    sha256 cellar: :any_skip_relocation, arm64_sequoia: "1e69013210ee322c9fc2be91befb7339d0343e650ef63ab2fa9004182a9d239f"
    sha256 cellar: :any_skip_relocation, x86_64_sequoia: "895425592862c5d44bd324d7169e742a6573502f53f910accd4b6e4785cb420c"
  end

  depends_on "rust" => :build

  def install
    system "cargo", "install", *std_cargo_args
  end

  test do
    system bin/"emon", "--help"
  end
end
