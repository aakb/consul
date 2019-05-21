require_dependency Rails.root.join('app', 'models', 'proposal').to_s

class Proposal < ApplicationRecord
  documentable max_documents_allowed: 3,
               max_file_size: 20.megabytes,
               accepted_content_types: [ "application/pdf" ]
end