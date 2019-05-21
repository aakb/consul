require_dependency Rails.root.join('app', 'models', 'budget', 'investment').to_s

class Budget
  class Investment < ApplicationRecord
    documentable max_documents_allowed: 3,
                 max_file_size: 20.megabytes,
                 accepted_content_types: [ "application/pdf" ]
  end
end