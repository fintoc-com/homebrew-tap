class Fintoc < Formula
  desc "CLI for the Fintoc API"
  homepage "https://github.com/fintoc-com/fintoc-cli"
  url "https://registry.npmjs.org/@fintoc/cli/-/cli-0.5.0.tgz"
  version "0.5.0"
  sha256 "9d704a81aef4b54befe39ffe30a2eec21952aaf45e8adaf9445b4141765a8c26"
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
