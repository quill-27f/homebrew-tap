class Cellix < Formula
  desc "AI companion IDE inside your coding agent"
  homepage "https://github.com/quill-27f/cellix"
  version "0.12.0"
  license any_of: ["MIT", "Apache-2.0"]

  on_macos do
    on_arm do
      url "https://github.com/quill-27f/cellix/releases/download/v0.12.0/cellix-aarch64-apple-darwin.tar.gz"
      sha256 "ca1a05091b11a6f169e83db4fb8354bbf693b9a10119c968a011b7b8087be6c1"
    end
    on_intel do
      url "https://github.com/quill-27f/cellix/releases/download/v0.12.0/cellix-x86_64-apple-darwin.tar.gz"
      sha256 "33895484e23db0823616476fabacdfc097c5ae8a4b8034ad873900676f704010"
    end
  end

  on_linux do
    on_arm do
      url "https://github.com/quill-27f/cellix/releases/download/v0.12.0/cellix-aarch64-unknown-linux-musl.tar.gz"
      sha256 "61a5370e21a5658c2edd4510a831359daba4cdf7390fd9037293bf0d5b8a34b8"
    end
    on_intel do
      url "https://github.com/quill-27f/cellix/releases/download/v0.12.0/cellix-x86_64-unknown-linux-musl.tar.gz"
      sha256 "f492ce88b8e6aad4bc6cddd465b0f546a6f3a9d06f68a851cba0ced57181b998"
    end
  end

  def install
    bin.install "cellix"
  end

  test do
    assert_match version.to_s, shell_output("#{bin}/cellix --version")
  end
end
