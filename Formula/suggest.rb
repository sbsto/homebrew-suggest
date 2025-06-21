class Suggest < Formula
  desc "CLI tool that suggests shell commands using AI APIs"
  homepage "https://github.com/sbsto/suggest"
  url "https://github.com/sbsto/suggest/releases/download/v1.0.5/suggest-darwin-universal"
  version "1.0.5"
  sha256 "46af86d5039e413b8606eb509f8b23ffeff5826b7fe6c2b420d263eda610a1a6"

  def install
    bin.install "suggest-darwin-universal" => "suggest"
  end

  test do
    # Test that the binary runs and shows help
    assert_match "Get CLI command suggestions using AI", shell_output("#{bin}/suggest --help")
  end
end
