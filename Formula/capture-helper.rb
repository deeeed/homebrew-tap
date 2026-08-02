class CaptureHelper < Formula
  desc "Generic macOS ScreenCaptureKit CLI for window capture and agent evidence"
  homepage "https://github.com/deeeed/capture-helper"
  url "https://github.com/deeeed/capture-helper/releases/download/v0.2.6/capture-helper-darwin-universal"
  version "0.2.6"
  sha256 "bcdd2d506c88e56f83a6c12b937fb81a00eea3026b4356ec94712a1b025b9bcb"
  license "MIT"

  depends_on :macos

  def install
    bin.install "capture-helper-darwin-universal" => "capture-helper"
  end

  test do
    output = shell_output("#{bin}/capture-helper version")
    assert_match '"version"', output
    assert_match '"0.2.6"', output
  end
end
