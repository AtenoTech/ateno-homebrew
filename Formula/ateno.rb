class Ateno < Formula
  desc "Ateno CLI"
  homepage "https://github.com/AtenoTech/ateno-py"
  url "https://github.com/AtenoTech/ateno-py/archive/refs/tags/v0.1.5.tar.gz"
  sha256 "d8def16d5f9cfe1a07b04fddbff10464b7bb4d49324108831f2c10b3925ba62b"
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
