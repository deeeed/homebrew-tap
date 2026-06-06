class CaptureHelper < Formula
  desc "Generic macOS ScreenCaptureKit CLI for window capture and agent evidence"
  homepage "https://github.com/deeeed/capture-helper"
  url "https://github.com/deeeed/capture-helper/releases/download/v0.2.0/capture-helper-darwin-arm64"
  version "0.2.0"
  sha256 "cf118e73f3f07e718fd811520768000edc0ffa06d8faf0efcad47d1024fc9fa4"
  license "MIT"

  depends_on :macos

  def install
    bin.install "capture-helper-darwin-arm64" => "capture-helper"
  end

  test do
    output = shell_output("#{bin}/capture-helper version")
    assert_match '"version"', output
    assert_match '"0.2.0"', output
  end
end
