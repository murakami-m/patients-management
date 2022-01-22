class Doctor < ActiveHash::Base
  self.data = [
    { id: 1, name: '--' },
    { id: 2, name: '院長' },
    { id: 3, name: '菊地Dr' },
    { id: 4, name: '杉本Dr' },
    { id: 5, name: '古川Dr' },
    { id: 6, name: '大西Dr' }
  ]

  include ActiveHash::Associations
  has_many :patients

end