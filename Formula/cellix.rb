class Cellix < Formula
  desc "AI companion IDE inside your coding agent"
  homepage "https://github.com/quill-27f/cellix"
  version "0.10.1"
  license any_of: ["MIT", "Apache-2.0"]

  on_macos do
    on_arm do
      url "https://github.com/quill-27f/cellix/releases/download/v0.10.1/cellix-aarch64-apple-darwin.tar.gz"
      sha256 "65b8c34b4ce4fc3332926e4880e302d2f5272a76ea45021cd591d79966274e7c"
    end
    on_intel do
      url "https://github.com/quill-27f/cellix/releases/download/v0.10.1/cellix-x86_64-apple-darwin.tar.gz"
      sha256 "b11f397f61d7e497c7810085eed2b646a008761bf01636f23caecc5cbb72f2bf"
    end
  end

  on_linux do
    on_arm do
      url "https://github.com/quill-27f/cellix/releases/download/v0.10.1/cellix-aarch64-unknown-linux-musl.tar.gz"
      sha256 "04ef59bf648378590621d31d421b08500d0259a1455eb6dbb7a0046dcaa46477"
    end
    on_intel do
      url "https://github.com/quill-27f/cellix/releases/download/v0.10.1/cellix-x86_64-unknown-linux-musl.tar.gz"
      sha256 "bc33d0bbcab9c07a55d5b1783118d9a0503c6baf88491ecaa397cf264c3919f0"
    end
  end

  def install
    bin.install "cellix"
  end

  test do
    assert_match version.to_s, shell_output("#{bin}/cellix --version")
  end
end
