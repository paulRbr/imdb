require 'spec_helper'

describe Imdb::BoxOffice do
  subject { Imdb::BoxOffice.new.movies }

  it 'is list of movies' do
    subject.each do |movie|
      expect(movie).to be_a(Imdb::Movie)
    end
  end

  it 'returns the box office movies from IMDB.com' do
    expect(subject.length).to eq(10)
  end

  it 'is an array like access to the movies' do
    expected_movies = ['Dunkirk', 'War for the Planet of the Apes', 'Baby Driver']
    expect(subject.map(&:title)).to include(*expected_movies)
  end
end
