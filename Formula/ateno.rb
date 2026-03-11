class Ateno < Formula
  desc "Ateno CLI"
  homepage "https://github.com/AtenoTech/ateno-py"
  url "https://github.com/AtenoTech/ateno-py/archive/refs/tags/v0.1.6.tar.gz"
  sha256 "e5b7c152c27b7218748ffab965d3436d58ad050647dcd342d4fd2bd7770063fd"
  license "MIT"

  depends_on "python@3.12"

  def install
    system "python3.12", "-m", "venv", libexec

    system libexec/"bin/pip", "install", "."

    bin.install_symlink libexec/"bin/ateno"
  end

  test do
    system "#{bin}/ateno", "--version"
  end
end
