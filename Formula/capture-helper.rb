class CaptureHelper < Formula
  desc "Generic macOS ScreenCaptureKit CLI for window capture and agent evidence"
  homepage "https://github.com/deeeed/capture-helper"
  url "https://github.com/deeeed/capture-helper/releases/download/v0.2.3/capture-helper-darwin-universal"
  version "0.2.3"
  sha256 "ffafbfc7b7cb81f9f013c348bd0e33eefbd1849dca4c59535076e8a0f3b0de27"
  license "MIT"

  depends_on :macos

  def install
    bin.install "capture-helper-darwin-arm64" => "capture-helper"
  end

  test do
    output = shell_output("#{bin}/capture-helper version")
    assert_match '"version"', output
    assert_match '"0.2.3"', output
  end
end
