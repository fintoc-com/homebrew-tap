class Fintoc < Formula
  desc "CLI for the Fintoc API"
  homepage "https://github.com/fintoc-com/fintoc-cli"
  url "https://registry.npmjs.org/@fintoc/cli/-/cli-0.2.2.tgz"
  version "0.2.2"
  sha256 "6dd4e9204eccaed637c9951e729d4c64a183822dbce108173ca3c8666c7b7e97"
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
