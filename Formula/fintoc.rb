class Fintoc < Formula
  desc "CLI for the Fintoc API"
  homepage "https://github.com/fintoc-com/fintoc-cli"
  url "https://registry.npmjs.org/@fintoc/cli/-/cli-0.2.1.tgz"
  version "0.2.1"
  sha256 "2f856d88ec1270ffc18e20b0e3a3df0135bdef3f44bd6a61737ec3b60866a7e3"
  license "BSD-3-Clause"

  depends_on "node"

  def install
    system "npm", "install", *std_npm_args
    bin.install_symlink Dir["#{libexec}/bin/*"]
  end

  test do
    assert_match "fintoc/#{version}", shell_output("#{bin}/fintoc --version")
  end
end
