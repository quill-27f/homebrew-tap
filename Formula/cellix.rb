class Cellix < Formula
  desc "AI companion IDE inside your coding agent"
  homepage "https://github.com/quill-27f/cellix"
  version "0.6.1"
  license any_of: ["MIT", "Apache-2.0"]

  on_macos do
    on_arm do
      url "https://github.com/quill-27f/cellix/releases/download/v0.6.1/cellix-aarch64-apple-darwin.tar.gz"
      sha256 "d83908252ec6b8ba570283fe84cb8a373e014ffd565cf6e705f7016ddd16a301"
    end
    on_intel do
      url "https://github.com/quill-27f/cellix/releases/download/v0.6.1/cellix-x86_64-apple-darwin.tar.gz"
      sha256 "d0f54f714b8c09387da2f989e73d6244988c3927265e9bd87b6976ea22b0ad46"
    end
  end

  on_linux do
    on_arm do
      url "https://github.com/quill-27f/cellix/releases/download/v0.6.1/cellix-aarch64-unknown-linux-musl.tar.gz"
      sha256 "df6d67920054072a87394a266e9af5508762fd92f6c58fa3f609961f02c4a7cc"
    end
    on_intel do
      url "https://github.com/quill-27f/cellix/releases/download/v0.6.1/cellix-x86_64-unknown-linux-musl.tar.gz"
      sha256 "800e00b54c4a99417e6675695fab5e0ae4228a0bb8ff77d164281c15cb869b1a"
    end
  end

  def install
    bin.install "cellix"
  end

  test do
    assert_match version.to_s, shell_output("#{bin}/cellix --version")
  end
end
