class Cellix < Formula
  desc "AI companion IDE inside your coding agent"
  homepage "https://github.com/quill-27f/cellix"
  version "0.13.0"
  license any_of: ["MIT", "Apache-2.0"]

  on_macos do
    on_arm do
      url "https://github.com/quill-27f/cellix/releases/download/v0.13.0/cellix-aarch64-apple-darwin.tar.gz"
      sha256 "8b7973838e610e90d46a14b489d644a52c0453100f03fae80373158b5e66a2d1"
    end
    on_intel do
      url "https://github.com/quill-27f/cellix/releases/download/v0.13.0/cellix-x86_64-apple-darwin.tar.gz"
      sha256 "1a776ecb627e366b736473a9cf29e47a368b9d79e99351073c79ed9753be1654"
    end
  end

  on_linux do
    on_arm do
      url "https://github.com/quill-27f/cellix/releases/download/v0.13.0/cellix-aarch64-unknown-linux-musl.tar.gz"
      sha256 "4dd8b7b4448a878c56005f413e4c10ff33c8e4e9151cdf8a2a10e10206d4d1fc"
    end
    on_intel do
      url "https://github.com/quill-27f/cellix/releases/download/v0.13.0/cellix-x86_64-unknown-linux-musl.tar.gz"
      sha256 "e9eb828764ae775f4b93f009e6f583482250cf6ebbd0a443d70a81cfe1741eae"
    end
  end

  def install
    bin.install "cellix"
  end

  test do
    assert_match version.to_s, shell_output("#{bin}/cellix --version")
  end
end
