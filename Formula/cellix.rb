class Cellix < Formula
  desc "AI companion IDE inside your coding agent"
  homepage "https://github.com/quill-27f/cellix"
  version "0.6.2"
  license any_of: ["MIT", "Apache-2.0"]

  on_macos do
    on_arm do
      url "https://github.com/quill-27f/cellix/releases/download/v0.6.2/cellix-aarch64-apple-darwin.tar.gz"
      sha256 "f73f5bb3233b7a37bb4ea20f7fef2dd4471e9658dfcb5641055d7ab009e2dad7"
    end
    on_intel do
      url "https://github.com/quill-27f/cellix/releases/download/v0.6.2/cellix-x86_64-apple-darwin.tar.gz"
      sha256 "e74f721750b50a6ca8dcf7b3a401a2a7b8f6dfde1084d0e0aa603b8f16612a3e"
    end
  end

  on_linux do
    on_arm do
      url "https://github.com/quill-27f/cellix/releases/download/v0.6.2/cellix-aarch64-unknown-linux-musl.tar.gz"
      sha256 "d215015debb21b6193662c8800026eeee93d00db2a5ea2dd52ad83e97923205a"
    end
    on_intel do
      url "https://github.com/quill-27f/cellix/releases/download/v0.6.2/cellix-x86_64-unknown-linux-musl.tar.gz"
      sha256 "14dcb121908a3982dbad9d95eff556e6a09a4ae042c78a54fe3d38bf7211c63c"
    end
  end

  def install
    bin.install "cellix"
  end

  test do
    assert_match version.to_s, shell_output("#{bin}/cellix --version")
  end
end
