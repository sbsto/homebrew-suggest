class Suggest < Formula
  desc "CLI tool that suggests shell commands using AI APIs"
  homepage "https://github.com/sbsto/suggest"
  url "https://github.com/sbsto/suggest/releases/download/v1.0.3/suggest-darwin-universal"
  version "1.0.3"
  sha256 "1d41f3b7680bce418c0b4651b953d6b9d26bec637ed4198d4850d0c7f83c8c04"

  def install
    bin.install "suggest-darwin-universal" => "suggest"
  end

  test do
    # Test that the binary runs and shows help
    assert_match "Get CLI command suggestions using AI", shell_output("#{bin}/suggest --help")
  end
end
