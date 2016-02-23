require 'highline/import'

say "\n接下來的步驟中，將引導您建立使用者，並建立初始化資料："

# Create User
user          = User.new
user.name     = ask('請輸入使用者的 姓名') { |q| q.default = '平台管理員' }
user.email    = ask('請輸入使者的 Email：'){ |q| q.default = 'admin@smis.com' }
user.password = ask('請輸入使者的 密碼：') { |q| q.echo = '*' }
user.password_confirmation = ask("請再次輸入平台管理者的 密碼 以供確認：") {|q| q.echo = '*'}
user.save!

ask "\n接下來，將為資料庫匯入一些基本資料，請按任意鍵繼續"

department_list = [
  {name: '資訊管理系(所)'},
  {name: '企業管理系(所)'},
  {name: '工業管理系(所)'},
  {name: '管理研究所'},
  {name: '管理學院MBA'},
  {name: 'EMBA暨管研所博士班'}
]
department_list.each do |dep|
  Department.create(dep)
end

lab_list = [
  {name: '策略管理資訊系統實驗室', professor_name: '李國光', department_id: 1,
   description: '近三年學生論文'},
  {name: '管理資訊系統實驗室', professor_name: '盧希鵬', department_id: 1,
   description: '近三年學生論文'},
  {name: '軟體工程與管理實驗室', professor_name: '黃世禎', department_id: 1,
   description: '近三年學生論文'},
  {name: '數位化賦能研究', professor_name: '周子銓', department_id: 1,
   description: '近三年學生論文'},
  {name: '電子化企業與供應鏈管理實驗室', professor_name: '魏小蘭', department_id: 1,
   description: '近三年學生論文'},
  {name: '資訊系統與創新實驗室', professor_name: '朱宇倩', department_id: 1,
   description: '近三年學生論文'}
]

lab_list.each do |lab|
  Laboratory.create(lab)
end

say '基本資料匯入完成。'
