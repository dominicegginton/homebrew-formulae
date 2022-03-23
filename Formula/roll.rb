class Roll < Formula
  desc "Roll dice in the command line"
  homepage "https://github.com/dominicegginton/roll"
  url "https://github.com/dominicegginton/roll/archive/refs/tags/1.0.0.tar.gz"
  sha256 "044b5dfd06dc4a102f1448b8973197c24695fb3b9803df3eb94efc7c2e174042"
  license "MIT"

  depends_on xcode: ["10.0", :build]

  def install
    system "make", "install", "prefix=#{prefix}"
  end

  test do
    system "#{bin}/flip" "import Foundation\n"
  end
end
