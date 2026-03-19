class Commitaccino < Formula
  desc "Fast, AI-powered git commits from your terminal via AWS Bedrock"
  homepage "https://github.com/ahmadaccino/commitaccino"
  url "https://github.com/ahmadaccino/commitaccino/archive/refs/tags/v1.0.0.tar.gz"
  sha256 "f6c0353c71491a41fac0b2b6681a7399fe2c3cef7ed68e77c4b0fe8efa1b688b"
  license "MIT"

  depends_on "curl"

  def install
    system "make"
    bin.install "commitaccino"
  end

  test do
    assert_match "commitaccino v#{version}", shell_output("#{bin}/commitaccino --version")
  end
end
