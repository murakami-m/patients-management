class AdjustmentManager < ActiveHash::Base
  self.data = [
    { id: 1, name: '--' },
    { id: 2, name: '島田' },
    { id: 3, name: '水野' },
    { id: 4, name: '桜井' }
  ]

  include ActiveHash::Associations
  has_many :patients

 end