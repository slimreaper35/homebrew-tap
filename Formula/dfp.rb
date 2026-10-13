class Dfp < Formula
  desc "A fast, reliable Dockerfile parser"
  homepage "https://github.com/slimreaper35/dockerfile-parser-rs"
  url "https://github.com/slimreaper35/dockerfile-parser-rs/archive/refs/tags/3.4.0.tar.gz"
  sha256 "14d1499a8842ee1232a34fddaad223a3d32b7e23ae587583880568be8d97c956"
  license "MIT"

  depends_on "rust" => :build

  def install
    system "cargo", "install", *std_cargo_args
  end

  test do
    assert_match "dfp 3.4.0", shell_output("#{bin}/dfp --version")
  end
end
