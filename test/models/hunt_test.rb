require 'test_helper'

class HuntTest < ActiveSupport::TestCase

  #check formatting for start date and end date (type of both is datetime)
  #make sure all parameters result in hunt being valid
  test "hunt has all required values" do
	  hunt = Hunt.create(title: 'Hunt1', active: true, published: true, public: true, start_date: 05/14/2015 , end_date: 05/22/2015,start_location: 'CS Lounge', description: 'a new hunt', references: 1 )
	  assert hunt.valid?, "hunt information saved"
  end
  
  #make sure other missing parameters result in the hunt not being valid
  test "hunt has no title" do
	  hunt = Hunt.create(active: true, published: true, public: true, start_date: 05/14/2015 , end_date: 05/22/2015,start_location: 'CS Lounge', description: 'a new hunt', references: 1 )
	  assert_not hunt.valid?, "hunt title not saved" 
  end

     test "hunt has not been declared active or inactive" do
	  hunt = Hunt.create(title: 'Hunt1', public: true, start_date: 05/14/2015 , end_date: 05/22/2015,start_location: 'CS Lounge', description: 'a new hunt', references: 1 )
	  assert_not hunt.valid?, "hunt active/inactive information not saved"
  end
  
    test "hunt has not been declared published or not published" do
	  hunt = Hunt.create(active: true, public: true, start_date: 05/14/2015 , end_date: 05/22/2015,start_location: 'CS Lounge', description: 'a new hunt', references: 1 )
	  assert_not hunt.valid?, "hunt title not saved" 
  end
  
     test "hunt has not been declared public or not public" do
	  hunt = Hunt.create(title: 'Hunt1', active: true, published: true, start_date: 05/14/2015 , end_date: 05/22/2015,start_location: 'CS Lounge', description: 'a new hunt', references: 1 )
	  assert_not hunt.valid?, "hunt public/not public not saved"
  end
  
     test "hunt has no start date" do
	  hunt = Hunt.create(title: 'Hunt1', active: true, published: true, public: true, end_date: 05/22/2015,start_location: 'CS Lounge', description: 'a new hunt', references: 1 )
	  assert_not hunt.valid?, "hunt start date information not saved"
  end
  
     test "hunt has no end date" do
	  hunt = Hunt.create(title: 'Hunt1', active: true, published: true, public: true, start_date: 05/14/2015 , start_location: 'CS Lounge', description: 'a new hunt', references: 1 )
	  assert_not hunt.valid?, "hunt end date information not saved"
  end
  
     test "hunt has no start location" do
	  hunt = Hunt.create(title: 'Hunt1', active: true, published: true, public: true, start_date: 05/14/2015 , end_date: 05/22/2015, description: 'a new hunt', references: 1 )
	  assert_not hunt.valid?, "hunt  start location not saved"
  end
  
     test "hunt has no description" do
	  hunt = Hunt.create(title: 'Hunt1', active: true, published: true, public: true, start_date: 05/14/2015 , end_date: 05/22/2015,start_location: 'CS Lounge', description: 'a new hunt', references: 1 )
	  assert_not hunt.valid?, "hunt description not saved"
  end
  
     test "hunt has no references to the pirate id" do
	  hunt = Hunt.create(title: 'Hunt1', active: true, published: true, public: true, start_date: 05/14/2015 , end_date: 05/22/2015,start_location: 'CS Lounge', description: 'a new hunt')
	  assert hunt.valid?, "hunt reference information saved"
  end
  
end
