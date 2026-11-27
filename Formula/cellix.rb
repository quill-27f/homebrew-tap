class Cellix < Formula
  desc "AI companion IDE inside your coding agent"
  homepage "https://github.com/quill-27f/cellix"
  version "0.17.0"
  license any_of: ["MIT", "Apache-2.0"]

  on_macos do
    on_arm do
      url "https://github.com/quill-27f/cellix/releases/download/v0.17.0/cellix-aarch64-apple-darwin.tar.gz"
      sha256 "41c8af0ee58e8bd22ba3c591192903b81757bf86e71754a0ec00c669e727a604"
    end
    on_intel do
      url "https://github.com/quill-27f/cellix/releases/download/v0.17.0/cellix-x86_64-apple-darwin.tar.gz"
      sha256 "a71098dd29eb547efdb6689533a212a7bcf22dea9f7c7f4a85f7413863d0825a"
    end
  end

  on_linux do
    on_arm do
      url "https://github.com/quill-27f/cellix/releases/download/v0.17.0/cellix-aarch64-unknown-linux-musl.tar.gz"
      sha256 "7383630fa4913f37eff93ba347504feac919aae41e354a2efeb46c8fcb00b657"
    end
    on_intel do
      url "https://github.com/quill-27f/cellix/releases/download/v0.17.0/cellix-x86_64-unknown-linux-musl.tar.gz"
      sha256 "93f66a05581510a182360d396b353cf07be90e858c0f0e59028e885f5913a2d5"
    end
  end

  def install
    bin.install "cellix"
  end

  test do
    assert_match version.to_s, shell_output("#{bin}/cellix --version")
  end
end
