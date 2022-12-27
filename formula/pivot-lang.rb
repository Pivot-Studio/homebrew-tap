# typed: false
# frozen_string_literal: true

# This file was generated by Homebrew Releaser. DO NOT EDIT.
class PivotLang < Formula
  desc "Pivot-lang 二次元指定编程语言"
  homepage "https://github.com/Pivot-Studio/pivot-lang"
  url "https://github.com/Pivot-Studio/pivot-lang/archive/v0.1.208.tar.gz"
  sha256 "2f1f545f563969b68de4ee37eb473fa9af537ce3af5422e1a7c3da69634991f6"
  license "MIT"

  on_macos do

    on_arm do
      url "https://github.com/Pivot-Studio/pivot-lang/releases/download/v0.1.208/pivot-lang-0.1.208-darwin-arm64.tar.gz"
      sha256 "f4815f6129d78b39d255cf527846bc5d09efc7a3a76f122c0a2cd035d65a15c1"
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
