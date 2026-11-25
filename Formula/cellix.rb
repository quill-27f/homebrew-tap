class Cellix < Formula
  desc "AI companion IDE inside your coding agent"
  homepage "https://github.com/quill-27f/cellix"
  version "0.15.1"
  license any_of: ["MIT", "Apache-2.0"]

  on_macos do
    on_arm do
      url "https://github.com/quill-27f/cellix/releases/download/v0.15.1/cellix-aarch64-apple-darwin.tar.gz"
      sha256 "9de7392493bf6ecd1a42f7d50d297757480bd97a0e75caa720161cb6aae78226"
    end
    on_intel do
      url "https://github.com/quill-27f/cellix/releases/download/v0.15.1/cellix-x86_64-apple-darwin.tar.gz"
      sha256 "daa3815fea1ccfc0a3e81dfcd28425cbc3362f62a36700a4130af9b3f011efad"
    end
  end

  on_linux do
    on_arm do
      url "https://github.com/quill-27f/cellix/releases/download/v0.15.1/cellix-aarch64-unknown-linux-musl.tar.gz"
      sha256 "acd19ff84ea60b789c4a877ed3a52a9e1fffa58fb3eea509910212ac3b8dc182"
    end
    on_intel do
      url "https://github.com/quill-27f/cellix/releases/download/v0.15.1/cellix-x86_64-unknown-linux-musl.tar.gz"
      sha256 "eaec0fa47ee934c4dee2b2220c1a7edfe3933b8139ef78970e521455b7dd385e"
    end
  end

  def install
    bin.install "cellix"
  end

  test do
    assert_match version.to_s, shell_output("#{bin}/cellix --version")
  end
end
