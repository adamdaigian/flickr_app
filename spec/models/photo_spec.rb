# == Schema Information
#
# Table name: photos
#
#  id         :integer          not null, primary key
#  name       :string(255)
#  image      :string(255)
#  created_at :datetime         not null
#  updated_at :datetime         not null
#

require 'spec_helper'

describe Photo do
  it "belongs to an album" do
    album = FactoryGirl.create(:album)
    picture = Picture.create()
    album.
end
