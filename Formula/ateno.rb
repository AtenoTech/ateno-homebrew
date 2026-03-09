class Ateno < Formula
  include Language::Python::Virtualenv

  desc "Ateno CLI"
  homepage "https://github.com/AtenoTech/ateno-py"
  url "https://github.com/AtenoTech/ateno-py/archive/refs/tags/v0.1.5.tar.gz"
  # Using the actual verified hash from your previous log
  sha256 "d8def16d5f9cfe1a07b04fddbff10464b7bb4d49324108831f2c10b3925ba62b"
  license "MIT"

  depends_on "python@3.12"

  def install
    # 1. Create the isolated environment
    venv = virtualenv_create(libexec, "python3.12")
    
    # 2. Force pip to install the package AND all dependencies (like requests)
    # This is the direct approach that avoids the 'ModuleNotFoundError'
    system libexec/"bin/pip", "install", "."
    
    # 3. Create the global mapping
    bin.install_symlink libexec/"bin/ateno"
  end

  test do
    system "#{bin}/ateno", "--version"
  end
end
