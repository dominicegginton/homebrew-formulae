class Flip < Formula
  desc "Flip coins in your command line"
  homepage "https://github.com/dominicegginton/flip"
  url "https://github.com/dominicegginton/flip/archive/refs/tags/1.0.1.tar.gz"
  sha256 "c69092a3f23d6181a436f43e5b3d50d9cc26bbf876fe76ec776a68bcac6a127e"
  license "MIT"

  depends_on xcode: ["10.0", :build]

  def install
    system "make", "install", "prefix=#{prefix}"
  end

  test do
    system "#{bin}/flip" "import Foundation\n"
  end
end
