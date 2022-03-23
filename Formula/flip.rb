class Flip < Formula
  desc "Flip coins in your command line"
  homepage "https://github.com/dominicegginton/flip"
  url "https://github.com/dominicegginton/flip/archive/refs/tags/0.2.0.tar.gz"
  sha256 "ca5ffb1f01993dfe8bd40b8d0b92e7d73f2ed54b01a7295d94e33df5a76693f9"
  license "MIT"

  depends_on xcode: ["10.0", :build]

  def install
    system "make", "install", "prefix=#{prefix}"
  end

  test do
    system "#{bin}/flip" "import Foundation\n"
  end
end
