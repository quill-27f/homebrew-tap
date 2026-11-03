class Cellix < Formula
  desc "AI companion IDE inside your coding agent"
  homepage "https://github.com/quill-27f/cellix"
  version "0.3.0"
  license any_of: ["MIT", "Apache-2.0"]

  on_macos do
    on_arm do
      url "https://github.com/quill-27f/cellix/releases/download/v0.3.0/cellix-aarch64-apple-darwin.tar.gz"
      sha256 "c185e0099f4736122ce3d42c662a892ae2aaa9eacaa60b2a363d1e98fd9d62eb"
    end
    on_intel do
      url "https://github.com/quill-27f/cellix/releases/download/v0.3.0/cellix-x86_64-apple-darwin.tar.gz"
      sha256 "eb7ad22ed2b5adb4b3070b887309b4278e36b7eb28facf54d6a3ac0a6f7a2d7a"
    end
  end

  on_linux do
    on_arm do
      url "https://github.com/quill-27f/cellix/releases/download/v0.3.0/cellix-aarch64-unknown-linux-musl.tar.gz"
      sha256 "4999df3604615424bdde7411a8d38e245a029bbfb579d08e6b93627362bf806f"
    end
    on_intel do
      url "https://github.com/quill-27f/cellix/releases/download/v0.3.0/cellix-x86_64-unknown-linux-musl.tar.gz"
      sha256 "70795afdc556f2a72ceb82911675c887cf3b2d35b9981af9eeb7fb464b59943d"
    end
  end

  def install
    bin.install "cellix"
  end

  test do
    assert_match version.to_s, shell_output("#{bin}/cellix --version")
  end
end
