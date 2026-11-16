# Copyright (C) 2026 longtimeno-c
# SPDX-License-Identifier: GPL-3.0-or-later
# driftwire, the Driftwire command line (https://github.com/longtimeno-c/mediaviewer, docs/design/28-driftwire.md).
# Written by that repository's release workflow (tools/package/homebrew_formula.py)
# for each stable release; an edit here is replaced by the next one.
class Driftwire < Formula
  desc "Send files to a computer nearby, or anywhere with a code, from a terminal"
  homepage "https://github.com/longtimeno-c/mediaviewer"
  url "https://github.com/longtimeno-c/mediaviewer/releases/download/v0.1.44/driftwire-0.1.44-macos-universal.tar.gz"
  version "0.1.44"
  sha256 "671374a7f69017307de05609457fa103d71beae4516bc919c72c0fb6627e88ce"
  license "GPL-3.0-or-later"

  depends_on macos: :sonoma

  def install
    bin.install "driftwire"
    man1.install "driftwire.1"
    # The notices of what is linked in (libsodium, BLAKE3, FTXUI, the BIP-39
    # list), where driftwire.1's COPYRIGHT section points.
    prefix.install "COPYRIGHT.txt"
  end

  def caveats
    <<~EOS
      driftwire shows this Mac to computers nearby while it runs. If the macOS
      firewall is on, the first time it listens macOS asks whether to accept
      incoming connections: allow them, or nothing nearby can send to this Mac.
      Sending needs Driftwire open on the other computer: MediaViewer's Driftwire
      window, or driftwire in a terminal there.
    EOS
  end

  test do
    assert_equal "driftwire #{version}", shell_output("#{bin}/driftwire --version").strip
  end
end
