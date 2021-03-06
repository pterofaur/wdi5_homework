# == Schema Information
#
# Table name: books
#
#  id         :integer          not null, primary key
#  title      :string(255)
#  pages      :integer
#  isbn       :string(255)
#  image      :string(255)
#  created_at :datetime
#  updated_at :datetime
#  author_id  :integer
#  year       :integer
#  synopsis   :text
#

class Book < ActiveRecord::Base
  belongs_to :author
end
