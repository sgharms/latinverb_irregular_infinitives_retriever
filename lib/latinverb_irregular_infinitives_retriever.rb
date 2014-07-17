require "latinverb_irregular_infinitives_retriever/version"
require "latinverb_irregular_verb_definition_consumer"

module Linguistics
  module Latin
    module Verb
      class LatinVerb
        class IrregularInfinitivesRetriever < IrregularVerbDefinitionConsumer
          def retrieve
            OpenStruct.new(structure['infinitives']['data'].merge(:participle_methods => @structure['participles']['data'].keys))
          end
        end
      end
    end
  end
end
