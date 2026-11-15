class Cellix < Formula
  desc "AI companion IDE inside your coding agent"
  homepage "https://github.com/quill-27f/cellix"
  version "0.9.1"
  license any_of: ["MIT", "Apache-2.0"]

  on_macos do
    on_arm do
      url "https://github.com/quill-27f/cellix/releases/download/v0.9.1/cellix-aarch64-apple-darwin.tar.gz"
      sha256 "153150a79d1d62f9a855a42c7175d1d03d03e6e1cee3c4b8da1c69fccbc51b9c"
    end
    on_intel do
      url "https://github.com/quill-27f/cellix/releases/download/v0.9.1/cellix-x86_64-apple-darwin.tar.gz"
      sha256 "195dbe06edd5c2082560d9924deb2f10c9ad5e27458ee55f83f67a55306f0cb6"
    end
  end

  on_linux do
    on_arm do
      url "https://github.com/quill-27f/cellix/releases/download/v0.9.1/cellix-aarch64-unknown-linux-musl.tar.gz"
      sha256 "5ee710afe7bea1774520cf3f039264bd62dc61ffb79c387ce2e045579e09bc8e"
    end
    on_intel do
      url "https://github.com/quill-27f/cellix/releases/download/v0.9.1/cellix-x86_64-unknown-linux-musl.tar.gz"
      sha256 "781e38e57493f62de60e2a7c5aab49cda3e1e66c8132d93910ae629a432ee100"
    end
  end

  def install
    bin.install "cellix"
  end

  test do
    assert_match version.to_s, shell_output("#{bin}/cellix --version")
  end
end
