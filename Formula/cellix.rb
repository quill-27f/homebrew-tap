class Cellix < Formula
  desc "AI companion IDE inside your coding agent"
  homepage "https://github.com/quill-27f/cellix"
  version "0.5.5"
  license any_of: ["MIT", "Apache-2.0"]

  on_macos do
    on_arm do
      url "https://github.com/quill-27f/cellix/releases/download/v0.5.5/cellix-aarch64-apple-darwin.tar.gz"
      sha256 "3cbe0f10b8fe9b1ec8deb24d455c605911e30b6623d25e84b051410d7cbdc557"
    end
    on_intel do
      url "https://github.com/quill-27f/cellix/releases/download/v0.5.5/cellix-x86_64-apple-darwin.tar.gz"
      sha256 "1e01ffac4afe810a6bc89ad5be176815c768da79ab1c8a5a2ca1e285cf6d08cb"
    end
  end

  on_linux do
    on_arm do
      url "https://github.com/quill-27f/cellix/releases/download/v0.5.5/cellix-aarch64-unknown-linux-musl.tar.gz"
      sha256 "730e95c889804e5191e5e902cab48c525bb67e1802d731a447bb6321b1c5fa16"
    end
    on_intel do
      url "https://github.com/quill-27f/cellix/releases/download/v0.5.5/cellix-x86_64-unknown-linux-musl.tar.gz"
      sha256 "94b6f78a0c8ec703cf8e98cb19dabefd43ecb63d3c8b3f60f10a6cae7c37cbba"
    end
  end

  def install
    bin.install "cellix"
  end

  test do
    assert_match version.to_s, shell_output("#{bin}/cellix --version")
  end
end
