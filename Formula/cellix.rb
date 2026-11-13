class Cellix < Formula
  desc "AI companion IDE inside your coding agent"
  homepage "https://github.com/quill-27f/cellix"
  version "0.6.6"
  license any_of: ["MIT", "Apache-2.0"]

  on_macos do
    on_arm do
      url "https://github.com/quill-27f/cellix/releases/download/v0.6.6/cellix-aarch64-apple-darwin.tar.gz"
      sha256 "f6419b260357a0b93942590cbdc0059b7d8dda8b0464f99ed74de4c1fbb7871f"
    end
    on_intel do
      url "https://github.com/quill-27f/cellix/releases/download/v0.6.6/cellix-x86_64-apple-darwin.tar.gz"
      sha256 "87280f4949423baea15fd72b62f6ca056ea2aa7b261304db202cd88e647c5999"
    end
  end

  on_linux do
    on_arm do
      url "https://github.com/quill-27f/cellix/releases/download/v0.6.6/cellix-aarch64-unknown-linux-musl.tar.gz"
      sha256 "c9dbb8bfaac9056461411e9bf8ac88b6e2adcc9f7de5b6e58513cdf28002259e"
    end
    on_intel do
      url "https://github.com/quill-27f/cellix/releases/download/v0.6.6/cellix-x86_64-unknown-linux-musl.tar.gz"
      sha256 "1bd5637e52bc518736ce427bee7b7e8d981702ca70446020d8092cdf06a51475"
    end
  end

  def install
    bin.install "cellix"
  end

  test do
    assert_match version.to_s, shell_output("#{bin}/cellix --version")
  end
end
