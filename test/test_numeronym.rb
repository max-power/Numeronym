# frozen_string_literal: true

require "test_helper"

class TestNumeronym < Minitest::Test
  def test_that_it_has_a_version_number
    refute_nil ::Numeronym::VERSION
  end

  def test_word
    assert_equal "i18n", Numeronym.word("internationalization")
    assert_equal "cat", Numeronym.word("cat")
  end

  def test_phrase
    assert_equal "A16z", Numeronym.phrase("Andreessen Horowitz")
    assert_equal "OK", Numeronym.phrase("OK")
  end

  def test_robot
    assert_equal "R4-E3", Numeronym.robot("robot eyes")
    assert_equal "C3-R1", Numeronym.robot("C3PO R2")
  end

  def test_n7m_alias
    assert_equal Numeronym, N7M
    assert_equal "i18n", N7M.word("internationalization")
  end
end
