class Cellix < Formula
  desc "AI companion IDE inside your coding agent"
  homepage "https://github.com/quill-27f/cellix"
  version "0.5.3"
  license any_of: ["MIT", "Apache-2.0"]

  on_macos do
    on_arm do
      url "https://github.com/quill-27f/cellix/releases/download/v0.5.3/cellix-aarch64-apple-darwin.tar.gz"
      sha256 "6febbb73b3695d500d329f5d7855cf993453b03afdf2054b9f8efb1dda8f65ae"
    end
    on_intel do
      url "https://github.com/quill-27f/cellix/releases/download/v0.5.3/cellix-x86_64-apple-darwin.tar.gz"
      sha256 "5d60b5af9fa8b2b0770c827ea837d0b382a4d207d3c627e7c543cc37412c6342"
    end
  end

  on_linux do
    on_arm do
      url "https://github.com/quill-27f/cellix/releases/download/v0.5.3/cellix-aarch64-unknown-linux-musl.tar.gz"
      sha256 "4490273570a9dec12681f314b86bf55fa8b088637d744bfc5cb23eeedc4ef5e4"
    end
    on_intel do
      url "https://github.com/quill-27f/cellix/releases/download/v0.5.3/cellix-x86_64-unknown-linux-musl.tar.gz"
      sha256 "be19c4081f6dd8ff93438bad64e443d2a7dcc4774adc0e4dc70d9a58a4be307d"
    end
  end

  def install
    bin.install "cellix"
  end

  test do
    assert_match version.to_s, shell_output("#{bin}/cellix --version")
  end
end
