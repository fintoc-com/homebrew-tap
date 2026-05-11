class Fintoc < Formula
  desc 'CLI for the Fintoc API'
  homepage 'https://github.com/fintoc-com/fintoc-cli'
  url 'https://registry.npmjs.org/@fintoc/cli/-/cli-0.2.0.tgz'
  sha256 '90ba7f90fb5fde6152db228cd76e604dc7d50a67ee52dd2423529d075c17701d'
  license 'BSD-3-Clause'

  depends_on 'node'

  def install
    system 'npm', 'install', *std_npm_args
    bin.install_symlink Dir["#{libexec}/bin/*"]
  end

  test do
    assert_match "fintoc/#{version}", shell_output("#{bin}/fintoc --version")
  end
end
