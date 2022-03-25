class Flip < Formula
  desc "Flip coins in your command line"
  homepage "https://github.com/dominicegginton/flip"
  url "https://github.com/dominicegginton/flip/archive/refs/tags/1.0.0.tar.gz"
  sha256 "6406e5cc3f06077d2ee7af1c1ca0390e2e7f592c0bbc6fd55c8db38e9f00233a"
  license "MIT"

  depends_on xcode: ["10.0", :build]

  def install
    system "make", "install", "prefix=#{prefix}"
  end

  test do
    system "#{bin}/flip" "import Foundation\n"
  end
end
