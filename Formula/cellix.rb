class Cellix < Formula
  desc "AI companion IDE inside your coding agent"
  homepage "https://github.com/quill-27f/cellix"
  version "0.5.0"
  license any_of: ["MIT", "Apache-2.0"]

  on_macos do
    on_arm do
      url "https://github.com/quill-27f/cellix/releases/download/v0.5.0/cellix-aarch64-apple-darwin.tar.gz"
      sha256 "4e6b1dae64b6cf0604b6e8ee4759da82f81bf30213c08e79529b7bebcab2015a"
    end
    on_intel do
      url "https://github.com/quill-27f/cellix/releases/download/v0.5.0/cellix-x86_64-apple-darwin.tar.gz"
      sha256 "01464b7620888990b58b1d39a2eab329e0b3598b58efca69e3c5b62dc66e82b6"
    end
  end

  on_linux do
    on_arm do
      url "https://github.com/quill-27f/cellix/releases/download/v0.5.0/cellix-aarch64-unknown-linux-musl.tar.gz"
      sha256 "6fc57d7fa26e1b48b5e30acabe7d3951828f5b8de521e397d3710bb7e7da03e4"
    end
    on_intel do
      url "https://github.com/quill-27f/cellix/releases/download/v0.5.0/cellix-x86_64-unknown-linux-musl.tar.gz"
      sha256 "7df85e7526f6cdaeeffa9d1c9dd440b50c2df18b9fdfbf0c19487fe1d5924dc3"
    end
  end

  def install
    bin.install "cellix"
  end

  test do
    assert_match version.to_s, shell_output("#{bin}/cellix --version")
  end
end
