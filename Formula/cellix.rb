class Cellix < Formula
  desc "AI companion IDE inside your coding agent"
  homepage "https://github.com/quill-27f/cellix"
  version "0.5.2"
  license any_of: ["MIT", "Apache-2.0"]

  on_macos do
    on_arm do
      url "https://github.com/quill-27f/cellix/releases/download/v0.5.2/cellix-aarch64-apple-darwin.tar.gz"
      sha256 "5169999c12b953e6897736e5af6a493950fb9e572b8b250f7371ccb7129a061c"
    end
    on_intel do
      url "https://github.com/quill-27f/cellix/releases/download/v0.5.2/cellix-x86_64-apple-darwin.tar.gz"
      sha256 "f5af0a18bd00ebd58751fdcb9457d7ed9dabe1c8065c48aef86b0c9b10e2e068"
    end
  end

  on_linux do
    on_arm do
      url "https://github.com/quill-27f/cellix/releases/download/v0.5.2/cellix-aarch64-unknown-linux-musl.tar.gz"
      sha256 "36240b45414962fa778217b9ef10c4a430843f8e884286bc62ddb103ca4c31b9"
    end
    on_intel do
      url "https://github.com/quill-27f/cellix/releases/download/v0.5.2/cellix-x86_64-unknown-linux-musl.tar.gz"
      sha256 "a497ab00ef3dce51ded08caa12b21d046846425a824a58f23e650ae22aa861c8"
    end
  end

  def install
    bin.install "cellix"
  end

  test do
    assert_match version.to_s, shell_output("#{bin}/cellix --version")
  end
end
