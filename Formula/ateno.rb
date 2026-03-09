class Ateno < Formula
  include Language::Python::Virtualenv # This is the industry standard for CLI tools

  desc "Ateno CLI"
  homepage "https://github.com/AtenoTech/ateno-py"
  # Bump version to v0.1.3 so the "Robot" triggers a fresh hash calculation
  url "https://github.com/AtenoTech/ateno-py/archive/refs/tags/v0.1.4.tar.gz"
  sha256 "7284bd80d2f2ca3838e1a7dbf4176733695ef11cc1b0dde05186adc091f17d7b" # Robot will update this
  license "MIT"

  depends_on "python@3.12"

def install
    # Use "python3.12" (the executable), NOT "python@3.12" (the formula)
    venv = virtualenv_create(libexec, "python3.12")
    
    # Install the package and dependencies
    venv.pip_install buildpath
    
    # Create the global symlink
    venv.pip_install_and_link buildpath
  end

  test do
    system "#{bin}/ateno", "--version"
  end
end