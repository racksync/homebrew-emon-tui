class EmonTui < Formula
  desc "Terminal UI for real-time energy monitoring from Home Assistant"
  homepage "https://github.com/racksync/emon-tui"
  url "https://github.com/racksync/emon-tui.git",
      tag:      "v0.1.0",
      revision: "HEAD"
  license "MIT"
  head "https://github.com/racksync/emon-tui.git"

  depends_on "rust" => :build

  def install
    system "cargo", "install", *std_cargo_args
  end

  test do
    system bin/"emon-tui", "--help"
  end
end
