class Suggest < Formula
  desc "CLI tool that suggests shell commands using AI APIs"
  homepage "https://github.com/sbsto/suggest"
  url "https://github.com/sbsto/suggest/releases/download/v1.0.8/suggest-darwin-universal"
  version "1.0.8"
  sha256 "3739817ff167833187f353f80f9ae88ffe970b5aa037e08e80b64ac9e91ff69d"

  def install
    bin.install "suggest-darwin-universal" => "suggest"
  end

  test do
    # Test that the binary runs and shows help
    assert_match "Get CLI command suggestions using AI", shell_output("#{bin}/suggest --help")
  end
end
