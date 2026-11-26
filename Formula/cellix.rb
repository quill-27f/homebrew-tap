class Cellix < Formula
  desc "AI companion IDE inside your coding agent"
  homepage "https://github.com/quill-27f/cellix"
  version "0.16.1"
  license any_of: ["MIT", "Apache-2.0"]

  on_macos do
    on_arm do
      url "https://github.com/quill-27f/cellix/releases/download/v0.16.1/cellix-aarch64-apple-darwin.tar.gz"
      sha256 "a63fb8b7fcfe6647b49495e5a38a90b185d91573666eff3e4c478d47161e6b63"
    end
    on_intel do
      url "https://github.com/quill-27f/cellix/releases/download/v0.16.1/cellix-x86_64-apple-darwin.tar.gz"
      sha256 "675e09c76beeb975d559faf1b11dd0fef9800bcf6f89e1bb9e8e0e5134369e39"
    end
  end

  on_linux do
    on_arm do
      url "https://github.com/quill-27f/cellix/releases/download/v0.16.1/cellix-aarch64-unknown-linux-musl.tar.gz"
      sha256 "fb7e4cb2ea02bdc3a78c2dc1d9cc49da7af1921b18e85fc512471052b4e21f72"
    end
    on_intel do
      url "https://github.com/quill-27f/cellix/releases/download/v0.16.1/cellix-x86_64-unknown-linux-musl.tar.gz"
      sha256 "80daa842e9db3c4214d9d5fb8b1d056933b86e2f81abedc6e1da6d8bfb7e38f6"
    end
  end

  def install
    bin.install "cellix"
  end

  test do
    assert_match version.to_s, shell_output("#{bin}/cellix --version")
  end
end
