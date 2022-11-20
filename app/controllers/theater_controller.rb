class TheaterController < ApplicationController
  def new
  end

  def create
    @row = []
    @status = true

    begin
      #performances_fill
      #actors_fill
      #guest_fill
      #def_fill
      #sostav_fill
      tickets_fill

    rescue Exception => e
      @status = false
      @e = e
    end
  end

  private

  def performances_fill
    1000000.times { @row << { name: Faker::Book.title, producer: Faker::Name.name, play_date: Faker::Date.between(from: '2022-11-23', to: '2026-09-25'), gend: Faker::Book.genre, sost_id: rand(1..50000)} }
    Performance.insert_all(@row)
  end

  def actors_fill
    1000000.times { @row << { fio: Faker::Name.name, info: col_json, sostav_id: rand(1..50000)}}
    Actor.insert_all(@row)
  end

  def guest_fill
    1000000.times { @row << { fio: Faker::Name.name, tick_id: rand(1..100000000)} }
    SpecialGuest.insert_all(@row)
  end

  def def_fill
    1000000.times { @row << { desc: Faker::Lorem.paragraph, perf_id: rand(1..1000000)} }
    Definition.insert_all(@row)
  end


  def sostav_fill
    50000.times { @row << { name: Faker::Team.name} }
    SostavSec.insert_all(@row)
  end

  def tickets_fill
    2000000.times { @row << { cost: rand(5000..100000), performance: rand(1..1000000), row_place: [rand(1..1000), rand(1..1000)]} }
    Ticket.insert_all(@row)
  end
  

  def col_json
    {'email': Faker::Internet.email, 'phone': Faker::PhoneNumber.cell_phone, 'gender': Faker::Gender.binary_type}
  end

end
