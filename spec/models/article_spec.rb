require 'spec_helper'

RSpec.describe Article, type: :model do
    context 'validation test ' do
      it 'ensures title presence' do
        article=Article.new(title: 'qq', description: 'qqqqqqqqqq').save
        expect(article).to eq(false)
      end
      it 'ensures title presence' do
        article=Article.new(title: 'qqqqq', description: 'qqqqqqqqqq').save
        expect(article).to eq(true)
      end
      it 'ensures description presence' do
        article=Article.new(title: 'qq', description: 'qqqq').save
        expect(article).to eq(false)
      end
      it 'ensures description presence' do
        article=Article.new(title: 'qqqqqq', description: 'qqqqqqqqqq').save
        expect(article).to eq(true)
      end

    end
  end
