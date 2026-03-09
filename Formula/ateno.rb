class Ateno < Formula
  desc "Ateno CLI"
  homepage "https://github.com/AtenoTech/ateno-py"
  url "https://github.com/AtenoTech/ateno-py/archive/refs/tags/v0.1.5.tar.gz"
  sha256 "d8def16d5f9cfe1a07b04fddbff10464b7bb4d49324108831f2c10b3925ba62b"
  license "MIT"

  depends_on "python@3.12"

  def install
    # 1. Create a pure Python virtual environment WITH pip included
    system "python3.12", "-m", "venv", libexec
    
    # 2. Use the virtual environment's pip to install the package and automatically fetch 'requests'
    system libexec/"bin/pip", "install", "."
    
    # 3. Create the global mapping to your zsh path
    bin.install_symlink libexec/"bin/ateno"
  end

  test do
    system "#{bin}/ateno", "--version"
  end
end
