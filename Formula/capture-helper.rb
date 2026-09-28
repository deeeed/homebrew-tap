class CaptureHelper < Formula
  desc "Generic macOS ScreenCaptureKit CLI for window capture and agent evidence"
  homepage "https://github.com/deeeed/capture-helper"
  url "https://github.com/deeeed/capture-helper/releases/download/v0.3.0/capture-helper-darwin-universal"
  version "0.3.0"
  sha256 "cba8f5ea99c6ed76820fc0b68ebe682bdeea5e5b8fb3623d7da8ef6e70104fc4"
  license "MIT"

  depends_on :macos

  def install
    bin.install "capture-helper-darwin-universal" => "capture-helper"
  end

  test do
    output = shell_output("#{bin}/capture-helper version")
    assert_match '"version"', output
    assert_match '"0.3.0"', output
  end
end
