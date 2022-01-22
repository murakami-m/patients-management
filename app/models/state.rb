class State< ActiveHash::Base
  self.data = [
    { id: 1, name: '--' },
    { id: 2, name: '入院前登録（入院日より前）' },
    { id: 3, name: '入院患者登録（入院日以降）' }
  ]
 
   include ActiveHash::Associations
   has_many :patients
 
end