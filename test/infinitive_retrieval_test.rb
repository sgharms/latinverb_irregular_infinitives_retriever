class InfinitiveRetrievalTest < Minitest::Test
  TO_BE = "sum esse fuī futūrus"

  def test_lookup
    r = Linguistics::Latin::Verb::LatinVerb::IrregularInfinitivesRetriever.new(TO_BE).retrieve
    assert_equal "esse", r.present_active_infinitive
  end
end
