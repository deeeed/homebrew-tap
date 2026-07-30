class CaptureHelper < Formula
  desc "Generic macOS ScreenCaptureKit CLI for window capture and agent evidence"
  homepage "https://github.com/deeeed/capture-helper"
  url "https://github.com/deeeed/capture-helper/releases/download/v0.2.5/capture-helper-darwin-universal"
  version "0.2.5"
  sha256 "90ffe5f070f5da4ffe1b53c321e2ba544af2b5192ce447742a07be76dd9da808"
  license "MIT"

  depends_on :macos

  def install
    bin.install "capture-helper-darwin-universal" => "capture-helper"
  end

  test do
    output = shell_output("#{bin}/capture-helper version")
    assert_match '"version"', output
    assert_match '"0.2.5"', output
  end
end
