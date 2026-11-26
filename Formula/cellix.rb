class Cellix < Formula
  desc "AI companion IDE inside your coding agent"
  homepage "https://github.com/quill-27f/cellix"
  version "0.16.3"
  license any_of: ["MIT", "Apache-2.0"]

  on_macos do
    on_arm do
      url "https://github.com/quill-27f/cellix/releases/download/v0.16.3/cellix-aarch64-apple-darwin.tar.gz"
      sha256 "f7a9aa900a942084ce38ff3ef23f3344948c2714796a8189f3e73a229d3d36a5"
    end
    on_intel do
      url "https://github.com/quill-27f/cellix/releases/download/v0.16.3/cellix-x86_64-apple-darwin.tar.gz"
      sha256 "b1d9706721fc95fcbfc6e6a8bd859caa072c3254a707c33c28fa8f5fcc172aec"
    end
  end

  on_linux do
    on_arm do
      url "https://github.com/quill-27f/cellix/releases/download/v0.16.3/cellix-aarch64-unknown-linux-musl.tar.gz"
      sha256 "5b6ac76e9357d4fca2d6a9166dd0254ef5ddbe48861bb01af0a59d9d0cc74df7"
    end
    on_intel do
      url "https://github.com/quill-27f/cellix/releases/download/v0.16.3/cellix-x86_64-unknown-linux-musl.tar.gz"
      sha256 "6c889208a2af8f68657da0368b7f28355670595b6ea40dcaa9efe8a40792cba7"
    end
  end

  def install
    bin.install "cellix"
  end

  test do
    assert_match version.to_s, shell_output("#{bin}/cellix --version")
  end
end
