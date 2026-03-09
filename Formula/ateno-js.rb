class AtenoJs < Formula
  desc "Ateno JavaScript SDK"
  homepage "https://github.com/AtenoTech/ateno-js"
  # Bump to v0.1.3 to match the Python toolchain release
  url "https://github.com/AtenoTech/ateno-js/archive/refs/tags/v0.1.4.tar.gz"
  sha256 "ba71a10afc03a870482963733abe3db6c1fdfc0afc63a1f2814460d74f49d74e" # Robot will update this
  depends_on "node"

  def install
    system "npm", "install", *std_npm_args
    # Explicitly link all binaries defined in your package.json 'bin' field
    bin.install_symlink Dir["#{libexec}/bin/*"]
  end

  test do
    # Simple test to verify the SDK is in the path
    system "ateno-js", "--version"
  end
end