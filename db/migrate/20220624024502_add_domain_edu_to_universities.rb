class AddDomainEduToUniversities < ActiveRecord::Migration[7.0]
  def change
    add_column :universities, :domainEdu, :string
  end
end
