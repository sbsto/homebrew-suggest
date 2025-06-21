class Suggest < Formula
  desc "CLI tool that suggests shell commands using AI APIs"
  homepage "https://github.com/sbsto/suggest"
  url "https://github.com/sbsto/suggest/releases/download/v1.0.4/suggest-darwin-universal"
  version "1.0.4"
  sha256 "e3c5b442e908078f82133a34430acfc0b3e06e32e656461a4374f2ddee9c4c59"

  def install
    bin.install "suggest-darwin-universal" => "suggest"
  end

  test do
    # Test that the binary runs and shows help
    assert_match "Get CLI command suggestions using AI", shell_output("#{bin}/suggest --help")
  end
end
