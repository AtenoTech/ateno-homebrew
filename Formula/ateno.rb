class Ateno < Formula
  include Language::Python::Virtualenv

  desc "Ateno CLI"
  homepage "https://github.com/AtenoTech/ateno-py"
  # Bump version to v0.1.3 so the "Robot" triggers a fresh hash calculation
  url "https://github.com/AtenoTech/ateno-py/archive/refs/tags/v0.1.4.tar.gz"
  sha256 "7284bd80d2f2ca3838e1a7dbf4176733695ef11cc1b0dde05186adc091f17d7b" # Robot will update this
  license "MIT"

  depends_on "python@3.12"

  def install
    # 1. Create the isolated environment
    venv = virtualenv_create(libexec, "python3.12")
    
    # 2. Install your package AND dependencies
    venv.pip_install buildpath
    
    # 3. MANUAL LINK: Create a shortcut from the internal venv to the global bin
    # This is the "Mapping" that is currently missing.
    bin.install_symlink libexec/"bin/ateno"
  end

  test do
    system "#{bin}/ateno", "--version"
  end
end