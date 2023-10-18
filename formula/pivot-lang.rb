# typed: false
# frozen_string_literal: true

# This file was generated by Homebrew Releaser. DO NOT EDIT.
class PivotLang < Formula
  desc "Rust-like language with immix gc and other cool stuffs"
  homepage "https://github.com/Pivot-Studio/pivot-lang"
  url "https://github.com/Pivot-Studio/pivot-lang/archive/v0.1.391.tar.gz"
  sha256 "8b2f8c80508783aca51894e0a03c35392dd911da0abaf4f5f691b0a1178e6435"
  license "MIT"

  on_macos do
    on_intel do
      url "https://github.com/Pivot-Studio/pivot-lang/releases/download/v0.1.391/pivot-lang-0.1.391-darwin-amd64.tar.gz"
      sha256 "488e0a2045f374d16bbddce8fd17169a743958d02e8c1568fdf78902ac204236"
    end

    on_arm do
      url "https://github.com/Pivot-Studio/pivot-lang/releases/download/v0.1.391/pivot-lang-0.1.391-darwin-arm64.tar.gz"
      sha256 "c8f4750155633a293d384bcc87398ff5ee47c6aa950c400994c8565799cc3cc7"
    end
  end

  def install
    lib.install Dir["./planglib"]
    lib.install "./libvm.a"
    bin.install "./plc"
  end

  def caveats
    s = <<~EOS
    [0;32m安装完成，请运行下方命令添加环境变量[0m
      echo 'export KAGARI_LIB_ROOT=$(brew --prefix pivot-lang)/lib/planglib' >> ~/.bash_profile
      echo 'export PL_ROOT=$(brew --prefix pivot-lang)/lib' >> ~/.bash_profile
      source ~/.bash_profile
    [0;32m如果您已经打开了vsc，可能需要重启它来应用环境变量更改[0m
    EOS
    s
  end
end
