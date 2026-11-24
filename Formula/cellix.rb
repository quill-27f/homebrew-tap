class Cellix < Formula
  desc "AI companion IDE inside your coding agent"
  homepage "https://github.com/quill-27f/cellix"
  version "0.14.2"
  license any_of: ["MIT", "Apache-2.0"]

  on_macos do
    on_arm do
      url "https://github.com/quill-27f/cellix/releases/download/v0.14.2/cellix-aarch64-apple-darwin.tar.gz"
      sha256 "4c0a0407bdcb25f7fde4c4b7a86d19532762b69449526ce2577a76efa5f6d60b"
    end
    on_intel do
      url "https://github.com/quill-27f/cellix/releases/download/v0.14.2/cellix-x86_64-apple-darwin.tar.gz"
      sha256 "2fb0937bed57e17da2688ebeb5165d2815447656659de55612f202ee6d6536d1"
    end
  end

  on_linux do
    on_arm do
      url "https://github.com/quill-27f/cellix/releases/download/v0.14.2/cellix-aarch64-unknown-linux-musl.tar.gz"
      sha256 "8d9318161333f0f4bad28db8ef5ff308fff91ff62bdd7a8e5e64654a31b59acc"
    end
    on_intel do
      url "https://github.com/quill-27f/cellix/releases/download/v0.14.2/cellix-x86_64-unknown-linux-musl.tar.gz"
      sha256 "04b156a2aed9654e184a542a707056d65d122857c1602503230ba525f07a7700"
    end
  end

  def install
    bin.install "cellix"
  end

  test do
    assert_match version.to_s, shell_output("#{bin}/cellix --version")
  end
end
