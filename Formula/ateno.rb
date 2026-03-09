class Ateno < Formula
  include Language::Python::Virtualenv

  desc "Ateno CLI"
  homepage "https://github.com/AtenoTech/ateno-py"
  url "https://github.com/AtenoTech/ateno-py/archive/refs/tags/v0.1.5.tar.gz"
  sha256 "d8def16d5f9cfe1a07b04fddbff10464b7bb4d49324108831f2c10b3925ba62b"
  license "MIT"

  depends_on "python@3.12"

  def install
    # This creates the venv AND installs all dependencies from pyproject.toml
    # AND links the 'ateno' command to /opt/homebrew/bin in one atomic operation.
    virtualenv_install_with_resources
  end

  test do
    system "#{bin}/ateno", "--version"
  end
end
