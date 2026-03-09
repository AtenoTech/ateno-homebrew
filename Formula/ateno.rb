class Ateno < Formula
  include Language::Python::Virtualenv # This is the industry standard for CLI tools

  desc "Ateno CLI"
  homepage "https://github.com/AtenoTech/ateno-py"
  # Bump version to v0.1.3 so the "Robot" triggers a fresh hash calculation
  url "https://github.com/AtenoTech/ateno-py/archive/refs/tags/v0.1.3.tar.gz"
  sha256 "32cab819fad01288530182c10aec119b6bd845bab25477221501703604c467f5" # Robot will update this
  license "MIT"

  depends_on "python@3.12"

  def install
    # This replaces manual pip calls and ensures 'ateno' is symlinked automatically
    virtualenv_install_with_resources
  end

  test do
    system "#{bin}/ateno", "--version"
  end
end