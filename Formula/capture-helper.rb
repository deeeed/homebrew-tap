class CaptureHelper < Formula
  desc "Generic macOS ScreenCaptureKit CLI for window capture and agent evidence"
  homepage "https://github.com/deeeed/capture-helper"
  url "https://github.com/deeeed/capture-helper/releases/download/v0.3.3/capture-helper-darwin-universal"
  version "0.3.3"
  sha256 "aaf43bd280248bd101412383ceddafe4c753ab9e0354c1cc663369ea612c6373"
  license "MIT"

  depends_on :macos

  def install
    bin.install "capture-helper-darwin-universal" => "capture-helper"
  end

  test do
    output = shell_output("#{bin}/capture-helper version")
    assert_match '"version"', output
    assert_match '"0.3.3"', output
  end
end
