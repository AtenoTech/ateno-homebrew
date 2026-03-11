class Ateno < Formula
  desc "Ateno CLI"
  homepage "https://github.com/AtenoTech/ateno-py"
  url "https://github.com/AtenoTech/ateno-py/archive/refs/tags/v0.1.7.tar.gz"
  sha256 "72e28c13a59010411b5ca59be8de9fe1d3098c51ca107d4c077a00ae31c948c4"
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
