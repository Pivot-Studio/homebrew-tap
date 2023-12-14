# typed: false
# frozen_string_literal: true

# This file was generated by Homebrew Releaser. DO NOT EDIT.
class PivotLang < Formula
  desc "Rust-like language with immix gc and other cool stuffs"
  homepage "https://github.com/Pivot-Studio/pivot-lang"
  url "https://github.com/Pivot-Studio/pivot-lang/archive/v0.1.407.tar.gz"
  sha256 "1aba7e729dad06f6363a3b83f4f254dc75f42724bd3275ac5641360a8ed9c5c0"
  license "MIT"

  on_macos do
    on_intel do
      url "https://github.com/Pivot-Studio/pivot-lang/releases/download/v0.1.407/pivot-lang-0.1.407-darwin-amd64.tar.gz"
      sha256 "b491bb1a7b369934b0d39dba4e68fec0f4389cd1f4103edd4bb7175c324899b2"
    end

    on_arm do
      url "https://github.com/Pivot-Studio/pivot-lang/releases/download/v0.1.407/pivot-lang-0.1.407-darwin-arm64.tar.gz"
      sha256 "2b5e1a5ac96921422d0dd04e62c59603da57882539b6d39fa4bbccbbdc94820d"
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
