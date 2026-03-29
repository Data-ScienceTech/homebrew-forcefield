class Forcefield < Formula
  include Language::Python::Virtualenv

  desc "AI security SDK -- prompt injection detection, PII redaction, tool governance, constitution policies"
  homepage "https://datasciencetech.ca/en/python-sdk"
  url "https://files.pythonhosted.org/packages/source/f/forcefield/forcefield-0.7.2.tar.gz"
  sha256 "9e30bb59d167a6f3dc7dbbab67739a8ad94294f86e7824ba3b4f0b7e2cab7b35"
  license "Apache-2.0"

  depends_on "python@3.12"

  def install
    virtualenv_install_with_resources
  end

  test do
    assert_match "forcefield", shell_output("#{bin}/forcefield --help")
    assert_match "detection_rate", shell_output("#{bin}/forcefield selftest --json 2>&1")
  end
end
