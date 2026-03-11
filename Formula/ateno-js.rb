class AtenoJs < Formula
  desc "Ateno JavaScript SDK"
  homepage "https://github.com/AtenoTech/ateno-js"
  url "https://github.com/AtenoTech/ateno-js/archive/refs/tags/v0.1.7.tar.gz"
  sha256 "fc269fd2fecd9a536ab3a2e07db3f672366e3871d86da5b4c56ab0267b804b67"
  depends_on "node"

  def install
    system "npm", "install", *std_npm_args
    bin.install_symlink Dir["#{libexec}/bin/*"]
  end

  test do
    system "ateno-js", "--version"
  end
end