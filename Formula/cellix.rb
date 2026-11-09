class Cellix < Formula
  desc "AI companion IDE inside your coding agent"
  homepage "https://github.com/quill-27f/cellix"
  version "0.6.3"
  license any_of: ["MIT", "Apache-2.0"]

  on_macos do
    on_arm do
      url "https://github.com/quill-27f/cellix/releases/download/v0.6.3/cellix-aarch64-apple-darwin.tar.gz"
      sha256 "e58d89f42386c035d6c2c1a0e31006448c04715dbe144e8a6734fc6571df494a"
    end
    on_intel do
      url "https://github.com/quill-27f/cellix/releases/download/v0.6.3/cellix-x86_64-apple-darwin.tar.gz"
      sha256 "8ba4a5ca4440a3e102de962f8b359c4e892b2017db25a67b4531af7b62d365f2"
    end
  end

  on_linux do
    on_arm do
      url "https://github.com/quill-27f/cellix/releases/download/v0.6.3/cellix-aarch64-unknown-linux-musl.tar.gz"
      sha256 "f269bc140cf71f783e6e80dd7640703e52159a9e2e0a638d9651d067cd02095e"
    end
    on_intel do
      url "https://github.com/quill-27f/cellix/releases/download/v0.6.3/cellix-x86_64-unknown-linux-musl.tar.gz"
      sha256 "310fa1e488fd9f5c2cc8741b452c0b7172280ba014d80ed0d5bb322978374da8"
    end
  end

  def install
    bin.install "cellix"
  end

  test do
    assert_match version.to_s, shell_output("#{bin}/cellix --version")
  end
end
