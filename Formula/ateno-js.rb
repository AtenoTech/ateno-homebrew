class AtenoJs < Formula
  desc "Ateno JavaScript SDK"
  homepage "https://github.com/AtenoTech/ateno-js"
  # Bump to v0.1.3 to match the Python toolchain release
  url "https://github.com/AtenoTech/ateno-js/archive/refs/tags/v0.1.3.tar.gz"
  sha256 "0019dfc4b32d63c1392aa264aed2253c1e0c2fb09216f8e2cc269bbfb8bb49b5" # Robot will update this
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