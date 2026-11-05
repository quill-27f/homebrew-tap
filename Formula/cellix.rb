class Cellix < Formula
  desc "AI companion IDE inside your coding agent"
  homepage "https://github.com/quill-27f/cellix"
  version "0.4.3"
  license any_of: ["MIT", "Apache-2.0"]

  on_macos do
    on_arm do
      url "https://github.com/quill-27f/cellix/releases/download/v0.4.3/cellix-aarch64-apple-darwin.tar.gz"
      sha256 "505d1ae777c56c6bb82c67f440b42598637d71e5c13ca35355a537e6f8ed1e4a"
    end
    on_intel do
      url "https://github.com/quill-27f/cellix/releases/download/v0.4.3/cellix-x86_64-apple-darwin.tar.gz"
      sha256 "5ff086556191f89f9e36c9623c4f071e5e9afbc380d6b4d54de5321f1cb738b1"
    end
  end

  on_linux do
    on_arm do
      url "https://github.com/quill-27f/cellix/releases/download/v0.4.3/cellix-aarch64-unknown-linux-musl.tar.gz"
      sha256 "d05ad44b3f4ee77cb89bd36566d539813f6ad873bf25bbeb8167fab2458c151b"
    end
    on_intel do
      url "https://github.com/quill-27f/cellix/releases/download/v0.4.3/cellix-x86_64-unknown-linux-musl.tar.gz"
      sha256 "53b4b007e53584304f2dd8042d735e06d8e1d95c5525be52318cdb14cf89b8bd"
    end
  end

  def install
    bin.install "cellix"
  end

  test do
    assert_match version.to_s, shell_output("#{bin}/cellix --version")
  end
end
