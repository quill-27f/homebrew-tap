class Cellix < Formula
  desc "AI companion IDE inside your coding agent"
  homepage "https://github.com/quill-27f/cellix"
  version "0.7.1"
  license any_of: ["MIT", "Apache-2.0"]

  on_macos do
    on_arm do
      url "https://github.com/quill-27f/cellix/releases/download/v0.7.1/cellix-aarch64-apple-darwin.tar.gz"
      sha256 "9184df3eb4f0eb6d8b04cfc6a4336c761fcc839f92b9433d85789ce599d2454c"
    end
    on_intel do
      url "https://github.com/quill-27f/cellix/releases/download/v0.7.1/cellix-x86_64-apple-darwin.tar.gz"
      sha256 "0071139dba4bc219b2ef0534b645e866781457e356fafaa2d73b1638652311e5"
    end
  end

  on_linux do
    on_arm do
      url "https://github.com/quill-27f/cellix/releases/download/v0.7.1/cellix-aarch64-unknown-linux-musl.tar.gz"
      sha256 "c17fd2ddc7b4e7f063bd4dca89c7132764b071256deac57ae3597c36bcc56f39"
    end
    on_intel do
      url "https://github.com/quill-27f/cellix/releases/download/v0.7.1/cellix-x86_64-unknown-linux-musl.tar.gz"
      sha256 "a8d78fb66582705ed64d9403bc66650c99cd9c45c9dc36bd86810e23f0ffb999"
    end
  end

  def install
    bin.install "cellix"
  end

  test do
    assert_match version.to_s, shell_output("#{bin}/cellix --version")
  end
end
