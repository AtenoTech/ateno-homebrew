class AtenoJs < Formula
  desc "Ateno JavaScript SDK"
  homepage "https://github.com/AtenoTech/ateno-js"
  url "https://github.com/AtenoTech/ateno-js/archive/refs/tags/v0.1.5.tar.gz"
  sha256 "446e35043a3e61cb368fe84acb37294b7969836fbf6406ad539324280a479b19"
  depends_on "node"

  def install
    system "npm", "install", *std_npm_args
    bin.install_symlink Dir["#{libexec}/bin/*"]
  end

  test do
    system "ateno-js", "--version"
  end
end