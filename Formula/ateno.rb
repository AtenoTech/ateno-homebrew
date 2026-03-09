class Ateno < Formula
  include Language::Python::Virtualenv

  desc "Ateno CLI"
  homepage "https://github.com/AtenoTech/ateno-py"
  url "https://github.com/AtenoTech/ateno-py/archive/refs/tags/v0.1.5.tar.gz"
  sha256 "8344556886e082859f518e1008d13f5625444638708179247601bfvun..." # Placeholder
  license "MIT"

  depends_on "python@3.12"

  def install
    venv = virtualenv_create(libexec, "python3.12")
    venv.pip_install buildpath
    # This is the manual mapping that creates the element in /opt/homebrew/bin
    bin.install_symlink libexec/"bin/ateno"
  end
end
