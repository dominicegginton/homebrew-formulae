class Roll < Formula
  desc "Roll dice in the command line"
  homepage "https://github.com/dominicegginton/roll"
  url "https://github.com/dominicegginton/roll/archive/refs/tags/1.0.1.tar.gz"
  sha256 "0108ec5ea150ce628dd94e9a1b77b83383740e014ff203a0d6f5771fca799022"
  license "MIT"

  depends_on xcode: ["10.0", :build]

  def install
    system "make", "install", "prefix=#{prefix}"
  end

  test do
    system "#{bin}/flip" "import Foundation\n"
  end
end
