


user_info = data_bag_item('important_info','ganeshhp')

user 'ganeshhp' do
  comment 'developer user'
  uid user_info['uid']
  home user_info['home']
  shell '/bin/bash'
  password user_info['password']

end
