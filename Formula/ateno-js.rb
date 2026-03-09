class AtenoJs < Formula
  desc "Ateno JavaScript SDK"
  homepage "https://github.com/AtenoTech/ateno-js"
  url "https://github.com/AtenoTech/ateno-js/archive/refs/tags/v0.1.2.tar.gz"
  sha256 "0019dfc4b32d63c1392aa264aed2253c1e0c2fb09216f8e2cc269bbfb8bb49b5"
  depends_on "node"

  def install
    system "npm", "install", *std_npm_args
  end
end