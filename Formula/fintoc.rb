class Fintoc < Formula
  desc "CLI for the Fintoc API"
  homepage "https://github.com/fintoc-com/fintoc-cli"
  url "https://registry.npmjs.org/@fintoc/cli/-/cli-0.4.0.tgz"
  version "0.4.0"
  sha256 "37cfa4dfbaafe38d911977705415c06e76a575b546d9bf88dd85fe8c659c76bb"
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
