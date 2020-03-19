class Question < ApplicationRecord

  def custom_initialization(enunciated:)
    if enunciated == '' || enunciated.nil?
      raise ArgumentError.new
    end

    self.enunciated = enunciated
    self
  end
  
end
