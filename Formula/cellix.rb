class Cellix < Formula
  desc "AI companion IDE inside your coding agent"
  homepage "https://github.com/quill-27f/cellix"
  version "0.16.2"
  license any_of: ["MIT", "Apache-2.0"]

  on_macos do
    on_arm do
      url "https://github.com/quill-27f/cellix/releases/download/v0.16.2/cellix-aarch64-apple-darwin.tar.gz"
      sha256 "c1579ed6560ee29b83cda333d48c21d499bdece9101f29846d69250b034d6c19"
    end
    on_intel do
      url "https://github.com/quill-27f/cellix/releases/download/v0.16.2/cellix-x86_64-apple-darwin.tar.gz"
      sha256 "939e0018deffb76238a6b88e4b783b5729182c6874fdf571998794ca1bc700d6"
    end
  end

  on_linux do
    on_arm do
      url "https://github.com/quill-27f/cellix/releases/download/v0.16.2/cellix-aarch64-unknown-linux-musl.tar.gz"
      sha256 "4890ab80701312eb81e741a73d51d6361dc6d33df035fa1a1cfc991418dadb96"
    end
    on_intel do
      url "https://github.com/quill-27f/cellix/releases/download/v0.16.2/cellix-x86_64-unknown-linux-musl.tar.gz"
      sha256 "5e681985b440da67856bc6fdfc56895657af954afb93b6ad31a7f5bcc2e74452"
    end
  end

  def install
    bin.install "cellix"
  end

  test do
    assert_match version.to_s, shell_output("#{bin}/cellix --version")
  end
end
