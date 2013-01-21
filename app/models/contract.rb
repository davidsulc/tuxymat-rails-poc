class Contract < ActiveRecord::Base
  include ActiveModel::Validations
  
  belongs_to :partner
  belongs_to :vending_machine
  
  attr_accessible :end_date, :partner_id, :start_date, :vending_machine_id
  
  validate :end_date_after_start_date, :partner_exists, :vending_machine_exists
  validates :partner_id, presence: true
  validates :vending_machine_id, presence: true
  validates :start_date, presence: true
  
  private
  def end_date_after_start_date
    unless end_date.blank?
#       errors.add(:end_date, t('activerecord.errors.models.contract.must_be_after_start_date')) unless end_date > start_date
      errors.add(:end_date, :not_after_start_date) unless end_date > start_date
    end
  end
  
  def partner_exists
#     errors.add(:partner_id, t('activerecord.errors.models.contract.is_invalid')) unless Partner.find_by_id(partner_id)
    errors.add(:partner_id) unless Partner.find_by_id(partner_id)
  end
  
  def vending_machine_exists
#     errors.add(:vending_machine_id, t('activerecord.errors.models.contract.is_invalid')) unless VendingMachine.find_by_id(vending_machine_id)
    errors.add(:vending_machine_id) unless VendingMachine.find_by_id(vending_machine_id)
  end
end
