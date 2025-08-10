class Snapshell < Formula
  desc "Real-time ASCII video sharing via WebRTC in your terminal"
  homepage "https://github.com/saswatsam786/snapshell"
  url "https://github.com/saswatsam786/snapshell/archive/refs/tags/v1.0.1.tar.gz"
  sha256 "b63eb7a9ec0c5e35c10f271cc0a88f74cfab523c76792c321a51ef84358f759d"
  head "https://github.com/saswatsam786/snapshell.git", branch: "main"
  license "MIT"

  depends_on "go" => :build
  depends_on "pkg-config" => :build
  depends_on "opencv"

  def install
    ENV["CGO_ENABLED"] = "1"
    ENV["PKG_CONFIG_PATH"] = "#{Formula["opencv"].opt_lib}/pkgconfig"
    system "go", "build", *std_go_args(ldflags: "-s -w"), "./cmd/main.go"
  end

  test do
    output = shell_output("#{bin}/snapshell -h 2>&1", 2)
    assert_match "Usage", output
  end

  def caveats
    <<~EOS
      🎥 SnapShell is now installed!
      Stable version installed from tag v1.0.1. For latest development build:
        brew reinstall --HEAD #{name}

      Quick Start:
        # Start video sharing session (offerer)
        snapshell -signaled-o --room demo123 --server https://snapshell.onrender.com

        # Join video session (answerer)
        snapshell -signaled-a --room demo123 --server https://snapshell.onrender.com

      Note: SnapShell requires a webcam to capture video.
      The video will be converted to ASCII art and shared in real-time!
    EOS
  end
end
