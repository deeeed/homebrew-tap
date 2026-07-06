class CaptureHelper < Formula
  desc "Generic macOS ScreenCaptureKit CLI for window capture and agent evidence"
  homepage "https://github.com/deeeed/capture-helper"
  url "https://github.com/deeeed/capture-helper/releases/download/v0.2.2/capture-helper-darwin-universal"
  version "0.2.2"
  sha256 "f7288ff52fca92325a0258956d970b57f9c7891570515fd5dcacc1da90811116"
  license "MIT"

  depends_on :macos

  def install
    bin.install "capture-helper-darwin-arm64" => "capture-helper"
  end

  test do
    output = shell_output("#{bin}/capture-helper version")
    assert_match '"version"', output
    assert_match '"0.2.2"', output
  end
end
