# frozen_string_literal: true

require 'shale/utils'

RSpec.describe Shale::Utils do
  describe '.underscore' do
    it 'converts camel case to underscores' do
      expect(described_class.underscore('FooBar')).to eq('foo_bar')
      expect(described_class.underscore('fooBar')).to eq('foo_bar')
      expect(described_class.underscore('Foo_Bar')).to eq('foo_bar')
      expect(described_class.underscore('Namespace::Foo_Bar')).to(
        eq('namespace:foo_bar')
      )
    end
  end
end
