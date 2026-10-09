class CaptureHelper < Formula
  desc "Generic macOS ScreenCaptureKit CLI for window capture and agent evidence"
  homepage "https://github.com/deeeed/capture-helper"
  url "https://github.com/deeeed/capture-helper/releases/download/v0.3.1/capture-helper-darwin-universal"
  version "0.3.1"
  sha256 "73149ee391c28445768affb018c03c91a3cbb82a3dbdc5a349be8708bb8a0347"
  license "MIT"

  depends_on :macos

  def install
    bin.install "capture-helper-darwin-universal" => "capture-helper"
  end

  test do
    output = shell_output("#{bin}/capture-helper version")
    assert_match '"version"', output
    assert_match '"0.3.1"', output
  end
end
