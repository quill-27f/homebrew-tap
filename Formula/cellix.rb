class Cellix < Formula
  desc "AI companion IDE inside your coding agent"
  homepage "https://github.com/quill-27f/cellix"
  version "0.14.0"
  license any_of: ["MIT", "Apache-2.0"]

  on_macos do
    on_arm do
      url "https://github.com/quill-27f/cellix/releases/download/v0.14.0/cellix-aarch64-apple-darwin.tar.gz"
      sha256 "aec988fe92e8c31eb6cf7ca246dbf40a560eee3ce20473cffc68618205802f8f"
    end
    on_intel do
      url "https://github.com/quill-27f/cellix/releases/download/v0.14.0/cellix-x86_64-apple-darwin.tar.gz"
      sha256 "019bc5e2a9f26be52c86b37a85a6969b0ebffaf39c3ec49830889e4cdd7aecc4"
    end
  end

  on_linux do
    on_arm do
      url "https://github.com/quill-27f/cellix/releases/download/v0.14.0/cellix-aarch64-unknown-linux-musl.tar.gz"
      sha256 "31fc2a07fc64fa7a9023b22e3400dc24777cf78e950fcf4e1b255c5c63925e9d"
    end
    on_intel do
      url "https://github.com/quill-27f/cellix/releases/download/v0.14.0/cellix-x86_64-unknown-linux-musl.tar.gz"
      sha256 "f7d6dcfce3b70b176c8ef4feb7c7f6e18958088601181872507b75ce8b7bad2a"
    end
  end

  def install
    bin.install "cellix"
  end

  test do
    assert_match version.to_s, shell_output("#{bin}/cellix --version")
  end
end
