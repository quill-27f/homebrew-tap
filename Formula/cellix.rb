class Cellix < Formula
  desc "AI companion IDE inside your coding agent"
  homepage "https://github.com/quill-27f/cellix"
  version "0.10.0"
  license any_of: ["MIT", "Apache-2.0"]

  on_macos do
    on_arm do
      url "https://github.com/quill-27f/cellix/releases/download/v0.10.0/cellix-aarch64-apple-darwin.tar.gz"
      sha256 "d9690b94782cf304f78a9396ff0eea97c768ebee4319530080f10a719dc9eb9f"
    end
    on_intel do
      url "https://github.com/quill-27f/cellix/releases/download/v0.10.0/cellix-x86_64-apple-darwin.tar.gz"
      sha256 "75a9d29e509955426fff6c390133219c0bc11afb73252e17bd2244952702388a"
    end
  end

  on_linux do
    on_arm do
      url "https://github.com/quill-27f/cellix/releases/download/v0.10.0/cellix-aarch64-unknown-linux-musl.tar.gz"
      sha256 "0c64d47f3aa5ba900d53f386e4a5f1bc1458377b02a1e896b411623c3cf55bf5"
    end
    on_intel do
      url "https://github.com/quill-27f/cellix/releases/download/v0.10.0/cellix-x86_64-unknown-linux-musl.tar.gz"
      sha256 "afa114e0b0cf1b7b2d708e20a20e4d4ffab76078c026b1a6c1ef74978af3c9e6"
    end
  end

  def install
    bin.install "cellix"
  end

  test do
    assert_match version.to_s, shell_output("#{bin}/cellix --version")
  end
end
