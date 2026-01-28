class EmonTui < Formula
  desc "Terminal UI for real-time energy monitoring from Home Assistant"
  homepage "https://github.com/racksync/emon-tui"
  url "https://github.com/racksync/emon-tui/archive/refs/tags/v0.1.0.tar.gz"
  sha256 "9624f2a18f4274aef32d4af86421352f7c1455bc0db7aa993628df11dc3ac3ef"
  license "MIT"

  bottle do
    root_url "https://github.com/racksync/homebrew-emon-tui/releases/download/v0.1.0"
    sha256 cellar: :any_skip_relocation, arm64_sequoia: "c5295dc6793bc80c33d4833841448b4467c5ed184c72322fbb3cd6dad9be6749"
    sha256 cellar: :any_skip_relocation, x86_64_sequoia: "f5bdb98d8113711b2a0ba7c66434eedb8c0f04b3cdbc45ab85e14361a8e37d57"
  end

  depends_on "rust" => :build

  def install
    system "cargo", "install", *std_cargo_args
  end

  test do
    system bin/"emon", "--help"
  end
end
