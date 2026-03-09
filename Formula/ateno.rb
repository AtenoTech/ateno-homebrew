class Ateno < Formula
  include Language::Python::Virtualenv

  desc "Ateno CLI"
  homepage "https://github.com/AtenoTech/ateno-py"
  url "https://github.com/AtenoTech/ateno-py/archive/refs/tags/v0.1.5.tar.gz"
  sha256 "d8def16d5f9cfe1a07b04fddbff10464b7bb4d49324108831f2c10b3925ba62b"
  license "MIT"

  depends_on "python@3.12"

  # Define the missing 'requests' dependency explicitly
  resource "requests" do
    url "https://files.pythonhosted.org/packages/c2/e7/815779ec36437936a2fc5de9a70fbf1e60f0dcd03399086d9a9abde890ba/requests-2.31.0.tar.gz"
    sha256 "942c5a758f98d790eaed1a29cb6eefc7ffb0d1ce022f20ea8d54fa6189919d77"
  end

  def install
    venv = virtualenv_create(libexec, "python3.12")
    
    # Install the explicitly defined resources (requests) into the venv FIRST
    venv.pip_install resources
    
    # Then install your actual Ateno tool and link it
    venv.pip_install_and_link buildpath
  end

  test do
    system "#{bin}/ateno", "--version"
  end
end
