class Fintoc < Formula
  desc "CLI for the Fintoc API"
  homepage "https://github.com/fintoc-com/fintoc-cli"
  url "https://registry.npmjs.org/@fintoc/cli/-/cli-0.7.0.tgz"
  version "0.7.0"
  sha256 "716957a601ba44131e54833153647edc8490e3214a11dab0853d8c2bb6a73fed"
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
