class Continent < ActiveHash::Base
  self.data = [
      {id: 1, name: 'アジア'}, {id: 2, name: '東南アジア'}, {id: 3, name: 'ヨーロッパ'},
      {id: 4, name: '北欧'}, {id: 5, name: '北米'}, {id: 6, name: '南米'},
      {id: 7, name: 'オセアニア'}, {id: 8, name: '中東'}, {id: 9, name: 'アフリカ'}
  ]
end