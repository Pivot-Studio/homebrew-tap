# typed: false
# frozen_string_literal: true

# This file was generated by Homebrew Releaser. DO NOT EDIT.
class PivotLang < Formula
  desc "Rust-like language with immix gc and other cool stuffs"
  homepage "https://github.com/Pivot-Studio/pivot-lang"
  url "https://github.com/Pivot-Studio/pivot-lang/archive/v0.1.434.tar.gz"
  sha256 "db783786f842a910f7c584ecbdbf341ef82819ac50b9a429d3f32718c030e927"
  license "MIT"

  on_macos do
    on_intel do
      url "https://github.com/Pivot-Studio/pivot-lang/releases/download/v0.1.434/pivot-lang-0.1.434-darwin-amd64.tar.gz"
      sha256 "195fb152352b5d9b397250bbf0ec04ad6c215f806ed247dc3b51787437b63147"
    end

    on_arm do
      url "https://github.com/Pivot-Studio/pivot-lang/releases/download/v0.1.434/pivot-lang-0.1.434-darwin-arm64.tar.gz"
      sha256 "05fbc24ff352a7abd11c25f8861e940950e8476377906d5393d36c1a2637c0a5"
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
