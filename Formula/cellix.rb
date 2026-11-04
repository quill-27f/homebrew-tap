class Cellix < Formula
  desc "AI companion IDE inside your coding agent"
  homepage "https://github.com/quill-27f/cellix"
  version "0.4.0"
  license any_of: ["MIT", "Apache-2.0"]

  on_macos do
    on_arm do
      url "https://github.com/quill-27f/cellix/releases/download/v0.4.0/cellix-aarch64-apple-darwin.tar.gz"
      sha256 "1ae3005ea511b41cff27885bb50e98b8deb532de631e7ac2827a99804dc14293"
    end
    on_intel do
      url "https://github.com/quill-27f/cellix/releases/download/v0.4.0/cellix-x86_64-apple-darwin.tar.gz"
      sha256 "5036dbf7df12757ecae8f03672eed6c5d90f7ae938a163ba95b19fe8ca7cbc71"
    end
  end

  on_linux do
    on_arm do
      url "https://github.com/quill-27f/cellix/releases/download/v0.4.0/cellix-aarch64-unknown-linux-musl.tar.gz"
      sha256 "ae9e5d8fdec87e8ab691f7dfdb6f88c11f555fe2c42fad7b34106453b868c4c7"
    end
    on_intel do
      url "https://github.com/quill-27f/cellix/releases/download/v0.4.0/cellix-x86_64-unknown-linux-musl.tar.gz"
      sha256 "0993515aa30ef1ab166226a6b877901d1e6ddf7a7e9d4a9282df221f6eadc83c"
    end
  end

  def install
    bin.install "cellix"
  end

  test do
    assert_match version.to_s, shell_output("#{bin}/cellix --version")
  end
end
