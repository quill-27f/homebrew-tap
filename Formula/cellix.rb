class Cellix < Formula
  desc "AI companion IDE inside your coding agent"
  homepage "https://github.com/quill-27f/cellix"
  version "0.4.2"
  license any_of: ["MIT", "Apache-2.0"]

  on_macos do
    on_arm do
      url "https://github.com/quill-27f/cellix/releases/download/v0.4.2/cellix-aarch64-apple-darwin.tar.gz"
      sha256 "671d48aaa675e426d98d0316687e5705ce848ca926494225c32f558969c2ca89"
    end
    on_intel do
      url "https://github.com/quill-27f/cellix/releases/download/v0.4.2/cellix-x86_64-apple-darwin.tar.gz"
      sha256 "b3cfbbb9ecab05e0e2730c53a735e3a161642cf518639ec1e395508cdfdbbec3"
    end
  end

  on_linux do
    on_arm do
      url "https://github.com/quill-27f/cellix/releases/download/v0.4.2/cellix-aarch64-unknown-linux-musl.tar.gz"
      sha256 "08a565293f59229839ea2f0095f424a016a3f004095c5839c7ea094873dd0fab"
    end
    on_intel do
      url "https://github.com/quill-27f/cellix/releases/download/v0.4.2/cellix-x86_64-unknown-linux-musl.tar.gz"
      sha256 "320e9d1dd73ead949c89c46d353d4b693aefc40a5efcd244d90a591c101442ef"
    end
  end

  def install
    bin.install "cellix"
  end

  test do
    assert_match version.to_s, shell_output("#{bin}/cellix --version")
  end
end
