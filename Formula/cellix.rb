class Cellix < Formula
  desc "AI companion IDE inside your coding agent"
  homepage "https://github.com/quill-27f/cellix"
  version "0.8.0"
  license any_of: ["MIT", "Apache-2.0"]

  on_macos do
    on_arm do
      url "https://github.com/quill-27f/cellix/releases/download/v0.8.0/cellix-aarch64-apple-darwin.tar.gz"
      sha256 "eafdd9eab6d6f20471f52dd285c8eb12a32e608e71408275df56645bce13d45a"
    end
    on_intel do
      url "https://github.com/quill-27f/cellix/releases/download/v0.8.0/cellix-x86_64-apple-darwin.tar.gz"
      sha256 "fd4d01c9d5406b3d3b3408775301044d82ca62aca6cae09f5c9135baf00617b9"
    end
  end

  on_linux do
    on_arm do
      url "https://github.com/quill-27f/cellix/releases/download/v0.8.0/cellix-aarch64-unknown-linux-musl.tar.gz"
      sha256 "90c996fa0e29b6d494ba8f0330c6894ff82fef4b57e6947bef4c574b72b9e425"
    end
    on_intel do
      url "https://github.com/quill-27f/cellix/releases/download/v0.8.0/cellix-x86_64-unknown-linux-musl.tar.gz"
      sha256 "4f7261d419849cbdbe589af478f7c2f4bf52bfb41dd74f0328f17b7c665743d6"
    end
  end

  def install
    bin.install "cellix"
  end

  test do
    assert_match version.to_s, shell_output("#{bin}/cellix --version")
  end
end
