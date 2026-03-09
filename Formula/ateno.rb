class Ateno < Formula
  include Language::Python::Virtualenv

  desc "Ateno CLI"
  homepage "https://github.com/AtenoTech/ateno-py"
  url "https://github.com/AtenoTech/ateno-py/archive/refs/tags/v0.1.5.tar.gz"
  # The actual hash provided by your Homebrew error log:
  sha256 "d8def16d5f9cfe1a07b04fddbff10464b7bb4d49324108831f2c10b3925ba62b"
  license "MIT"

  depends_on "python@3.12"

  def install
    venv = virtualenv_create(libexec, "python3.12")
    venv.pip_install buildpath
    # This manual mapping creates the link in /opt/homebrew/bin
    bin.install_symlink libexec/"bin/ateno"
  end
end
