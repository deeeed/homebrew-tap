class CaptureHelper < Formula
  desc "Generic macOS ScreenCaptureKit CLI for window capture and agent evidence"
  homepage "https://github.com/deeeed/capture-helper"
  url "https://github.com/deeeed/capture-helper/releases/download/v0.3.4/capture-helper-darwin-universal"
  version "0.3.4"
  sha256 "c32a52545a485fa7257b729b9e48cac1b321cf648d450745c40ab031c6136a8a"
  license "MIT"

  depends_on :macos

  def install
    bin.install "capture-helper-darwin-universal" => "capture-helper"
  end

  test do
    output = shell_output("#{bin}/capture-helper version")
    assert_match '"version"', output
    assert_match '"0.3.4"', output
  end
end
