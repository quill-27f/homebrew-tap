class Cellix < Formula
  desc "AI companion IDE inside your coding agent"
  homepage "https://github.com/quill-27f/cellix"
  version "0.15.0"
  license any_of: ["MIT", "Apache-2.0"]

  on_macos do
    on_arm do
      url "https://github.com/quill-27f/cellix/releases/download/v0.15.0/cellix-aarch64-apple-darwin.tar.gz"
      sha256 "45c2441e5eb6c192a569afa0019c0f50e7c3984b1d2cc7a576e6fd1bcb2fbaaf"
    end
    on_intel do
      url "https://github.com/quill-27f/cellix/releases/download/v0.15.0/cellix-x86_64-apple-darwin.tar.gz"
      sha256 "048188922a09d2d3e8fc4feb21581b3006ca5f0305fc4ffe6486f71179278cbe"
    end
  end

  on_linux do
    on_arm do
      url "https://github.com/quill-27f/cellix/releases/download/v0.15.0/cellix-aarch64-unknown-linux-musl.tar.gz"
      sha256 "01910c108f929f095e22f7196363b8a57fe27911ba1c156ffe2cfa4da67377fa"
    end
    on_intel do
      url "https://github.com/quill-27f/cellix/releases/download/v0.15.0/cellix-x86_64-unknown-linux-musl.tar.gz"
      sha256 "f15f8c3fc79ae964797221e4736dae3639b6d930b6a95d40ae5d1e2fdf87e725"
    end
  end

  def install
    bin.install "cellix"
  end

  test do
    assert_match version.to_s, shell_output("#{bin}/cellix --version")
  end
end
