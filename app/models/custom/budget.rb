require_dependency Rails.root.join('app', 'models', 'budget').to_s

class Budget < ApplicationRecord
  CURRENCY_SYMBOLS = %w(€ $ £ ¥ DKK).freeze
end