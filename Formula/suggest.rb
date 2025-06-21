class Suggest < Formula
  desc "CLI tool that suggests shell commands using AI APIs"
  homepage "https://github.com/sbsto/suggest"
  url "https://github.com/sbsto/suggest/releases/download/v1.0.7/suggest-darwin-universal"
  version "1.0.7"
  sha256 "60e3b6edb1232d98055c122f783bd7b97829277505f1c6e0a9d6f1109247e38a"

  def install
    bin.install "suggest-darwin-universal" => "suggest"
  end

  test do
    # Test that the binary runs and shows help
    assert_match "Get CLI command suggestions using AI", shell_output("#{bin}/suggest --help")
  end
end
