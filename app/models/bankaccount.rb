class Bankaccount < ApplicationRecord
  belongs_to :client
  belongs_to :bank
end
