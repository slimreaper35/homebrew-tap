class Bnv < Formula
  desc "A beautiful, modern environment variable explorer"
  homepage "https://github.com/slimreaper35/bnv"
  url "https://github.com/slimreaper35/bnv/archive/refs/tags/0.1.0.tar.gz"
  sha256 "c4a28e3bab120e5df803829bb09739b7919f26469917800581dcfc66d05e08d7"
  license "MIT"

  depends_on "rust" => :build

  def install
    system "cargo", "install", *std_cargo_args
  end

  test do
    assert_match "bnv 0.1.0", shell_output("#{bin}/bnv --version")
  end
end
