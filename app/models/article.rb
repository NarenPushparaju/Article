class Article < ActiveRecord::Base
validates :title,presence: true,length: {minimum: 5,maximum: 10}
validates :title,presence: true, length: {minimum: 5,maximum: 50}
end