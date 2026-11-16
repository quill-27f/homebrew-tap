class Cellix < Formula
  desc "AI companion IDE inside your coding agent"
  homepage "https://github.com/quill-27f/cellix"
  version "0.9.2"
  license any_of: ["MIT", "Apache-2.0"]

  on_macos do
    on_arm do
      url "https://github.com/quill-27f/cellix/releases/download/v0.9.2/cellix-aarch64-apple-darwin.tar.gz"
      sha256 "49152c31246fb660ffcf7ae18e9e98c1738bda6c1e1e713fd320cef9452a6382"
    end
    on_intel do
      url "https://github.com/quill-27f/cellix/releases/download/v0.9.2/cellix-x86_64-apple-darwin.tar.gz"
      sha256 "a7805965ff1471627dc4071d724728f3e09ac20a9b8430f6bb4a989f39dcc7e0"
    end
  end

  on_linux do
    on_arm do
      url "https://github.com/quill-27f/cellix/releases/download/v0.9.2/cellix-aarch64-unknown-linux-musl.tar.gz"
      sha256 "d93352b1b055c31affec44823db93fe9cde6029602a1332cd8046c356b74fdc0"
    end
    on_intel do
      url "https://github.com/quill-27f/cellix/releases/download/v0.9.2/cellix-x86_64-unknown-linux-musl.tar.gz"
      sha256 "168541d3f9e8dbc2136ec3d64e16ec91616ea3f741000f3472adbd836d0f74ac"
    end
  end

  def install
    bin.install "cellix"
  end

  test do
    assert_match version.to_s, shell_output("#{bin}/cellix --version")
  end
end
