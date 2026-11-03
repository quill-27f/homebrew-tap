class Cellix < Formula
  desc "AI companion IDE inside your coding agent"
  homepage "https://github.com/quill-27f/cellix"
  version "0.2.1"
  license any_of: ["MIT", "Apache-2.0"]

  on_macos do
    on_arm do
      url "https://github.com/quill-27f/cellix/releases/download/v0.2.1/cellix-aarch64-apple-darwin.tar.gz"
      sha256 "06a158d5fecf1a784dc043368ef24058eaef1e8b9809c830d0e3608d96e8969c"
    end
    on_intel do
      url "https://github.com/quill-27f/cellix/releases/download/v0.2.1/cellix-x86_64-apple-darwin.tar.gz"
      sha256 "939aafafc663d8aa3c5c41b94bd68f240fa3a0d4369dbeae197ad2a3087198b6"
    end
  end

  on_linux do
    on_arm do
      url "https://github.com/quill-27f/cellix/releases/download/v0.2.1/cellix-aarch64-unknown-linux-musl.tar.gz"
      sha256 "f22d94aef220083123a63edbe7fe4ea2ad37b85f217924f026b105dfc3659cec"
    end
    on_intel do
      url "https://github.com/quill-27f/cellix/releases/download/v0.2.1/cellix-x86_64-unknown-linux-musl.tar.gz"
      sha256 "d0c0c19a7a4940e89274daa9286a0bc318d4fd134c97d575fe8ed46e347533b2"
    end
  end

  def install
    bin.install "cellix"
  end

  test do
    assert_match version.to_s, shell_output("#{bin}/cellix --version")
  end
end
