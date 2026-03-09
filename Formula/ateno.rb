class Ateno < Formula
  desc "Ateno CLI"
  homepage "https://github.com/AtenoTech/ateno-py"
  url "https://github.com/AtenoTech/ateno-py/archive/refs/tags/v0.1.2.tar.gz"
  sha256 "32cab819fad01288530182c10aec119b6bd845bab25477221501703604c467f5"
  license "MIT"

  depends_on "python"

  def install
    system "python3", "-m", "pip", "install", ".", "--prefix=#{prefix}"
  end

  test do
    system "#{bin}/ateno", "--version"
  end
end