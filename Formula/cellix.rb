class Cellix < Formula
  desc "AI companion IDE inside your coding agent"
  homepage "https://github.com/quill-27f/cellix"
  version "0.16.0"
  license any_of: ["MIT", "Apache-2.0"]

  on_macos do
    on_arm do
      url "https://github.com/quill-27f/cellix/releases/download/v0.16.0/cellix-aarch64-apple-darwin.tar.gz"
      sha256 "d14d7d908d8889e33b66e887457a456832cf7391f27704dd3c12fee93aaa3b6a"
    end
    on_intel do
      url "https://github.com/quill-27f/cellix/releases/download/v0.16.0/cellix-x86_64-apple-darwin.tar.gz"
      sha256 "e8f7921d0f4f032f5ac725509fc7cf002d54891bc99d1be040a4111ebbae84dc"
    end
  end

  on_linux do
    on_arm do
      url "https://github.com/quill-27f/cellix/releases/download/v0.16.0/cellix-aarch64-unknown-linux-musl.tar.gz"
      sha256 "4d0d5169bbd21bdd5c96314228e541a382033f6d03544759add285e8f6bc0c19"
    end
    on_intel do
      url "https://github.com/quill-27f/cellix/releases/download/v0.16.0/cellix-x86_64-unknown-linux-musl.tar.gz"
      sha256 "72a929ae97bf0d6e62e2c3f1f8f927ea3a142de110ceb63c3d13b2a867821355"
    end
  end

  def install
    bin.install "cellix"
  end

  test do
    assert_match version.to_s, shell_output("#{bin}/cellix --version")
  end
end
