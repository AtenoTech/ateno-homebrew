class Ateno < Formula
  desc "Ateno CLI"
  homepage "https://github.com/AtenoTech/ateno-py"
  url "https://github.com/AtenoTech/ateno-py/archive/refs/tags/v0.1.1.tar.gz"
  sha256 "f13157415c504401855677b47def1ad6839d41f705e9b6c45b6d0a82115aa04b"
  license "MIT"

  depends_on "python"

  def install
    system "python3", "-m", "pip", "install", ".", "--prefix=#{prefix}"
  end

  test do
    system "#{bin}/ateno", "--version"
  end
end