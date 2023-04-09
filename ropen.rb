class Ropen < Formula
  desc ""
  homepage "https://github.com/rmcgibbo/ropen"
  license "MIT"
  head "https://github.com/rmcgibbo/ropen.git"

  depends_on "rust" => :build

  def install
    system "cargo", "install", *std_cargo_args
  end

  test do
    system "#{bin}/ropen", "-h"
  end
end
