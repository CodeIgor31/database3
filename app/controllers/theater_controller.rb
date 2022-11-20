class TheaterController < ApplicationController
  def new
  end

  def create
    @temp = []
    @status = true

    begin
      #performances_filling
      #actors_filling
      #guest_filling
      #def_filling
      #sostav_filling
      tickets_filling

    rescue Exception => e
      @status = false
      @e = e
    end
  end

  private

  def performances_filling
    1000000.times { @temp << { name: Faker::Book.title, producer: Faker::Name.name, play_date: Faker::Date.between(from: '2022-11-23', to: '2026-09-25'), gend: Faker::Book.genre, sost_id: rand(1..50000)} }
    Performance.insert_all(@temp)
  end

  def actors_filling
    1000000.times { @temp << { fio: Faker::Name.name, info: col_json, sostav_id: rand(1..50000)}}
    Actor.insert_all(@temp)
  end

  def guest_filling
    1000000.times { @temp << { fio: Faker::Name.name, tick_id: rand(1..100000000)} }
    SpecialGuest.insert_all(@temp)
  end

  def def_filling
    1000000.times { @temp << { desc: Faker::Lorem.paragraph, perf_id: rand(1..1000000)} }
    Definition.insert_all(@temp)
  end


  def sostav_filling
    50000.times { @temp << { name: Faker::Team.name} }
    SostavSec.insert_all(@temp)
  end

  def tickets_filling
    2000000.times { @temp << { cost: rand(5000..100000), performance: rand(1..1000000), row_place: [rand(1..1000), rand(1..1000)]} }
    Ticket.insert_all(@temp)
  end
  

  def col_json
    {'email': Faker::Internet.email, 'phone': Faker::PhoneNumber.cell_phone, 'gender': Faker::Gender.binary_type}
  end

end
