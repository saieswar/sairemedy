# Add your own tasks in files placed in lib/tasks ending in .rake,
# for example lib/tasks/capistrano.rake, and they will automatically be available to Rake.

require File.expand_path('../config/application', __FILE__)

Rails.application.load_tasks
require 'rubygems'
require 'rake'


namespace :astrology do
	task :reset_data => :environment do
		Astrology.delete_all
		puts "Astrology data created!"
     Astrology.create!([
     	#ravi start
     	{ first_sign: "Ravi", second_sign: "Ravi", remedy: "Suryanamaskaram"},
     	{first_sign: "Ravi", second_sign: "Chandra", remedy: "Durga Pooja"},
     	{first_sign: "Ravi", second_sign: "Kuja", remedy: "Subhramanya Pooja"},
     	{first_sign: "Ravi", second_sign: "Rahuvu", remedy: "Durrga Pooja"},
     	{first_sign: "Ravi", second_sign: "Guru", remedy: "Rudra Japam"},
     	{first_sign: "Ravi", second_sign: "Ketuvu", remedy: "Ganesh Pooja"},
     	{first_sign: "Ravi", second_sign: "Sheni", remedy: "Mrutyumjaya Mantram"},
     	{first_sign: "Ravi", second_sign: "Budha", remedy: "Durga Pooja"},
     	{first_sign: "Ravi", second_sign: "Sukhra", remedy: "Mrutyumjaya Mantram"},

     	#chandra start

     	{first_sign: "Chandra", second_sign: "Chandra", remedy: "Durga Pooja, Mrutyumjaya Pooja"},
     	{first_sign: "Chandra", second_sign: "Kuja", remedy: "Subhramanya Pooja"},
     	{first_sign: "Chandra", second_sign: "Rahuvu", remedy: "Durga Pooja"},
     	{first_sign: "Chandra", second_sign: "Guru", remedy: "Shivasahsra Patnam"},
     	{first_sign: "Chandra", second_sign: "Sheni", remedy: "Mrutyumjaya Mantram"},
     	{first_sign: "Chandra", second_sign: "Budha", remedy: "Shiva Panchakshri Mantram"},
     	{first_sign: "Chandra", second_sign: "Ketuvu", remedy: "Durga Pooja"},
     	{first_sign: "Chandra", second_sign: "Sukhra", remedy: "Lakshmi Aradhana"},
     	{first_sign: "Chandra", second_sign: "Ravi", remedy: "Shiva Panchakshri Mantram"},

     	#kuja start

     	{first_sign: "Kuja", second_sign: "Kuja", remedy: "Subhramanya Japam"},
     	{first_sign: "Kuja", second_sign: "Rahuvu", remedy: "Mrutyumjaya Mantram"},
     	{first_sign: "Kuja", second_sign: "Guru", remedy: "Lakshmi Pooja"},
     	{first_sign: "Kuja", second_sign: "Sheni", remedy: "Vishnu Sahsranamam"},
     	{first_sign: "Kuja", second_sign: "Budha", remedy: "Durga Japam"},
     	{first_sign: "Kuja", second_sign: "Ketuvu", remedy: "Ganapathi Japam"},
     	{first_sign: "Kuja", second_sign: "Sukhra", remedy: "Swethaghodhanam"},
     	{first_sign: "Kuja", second_sign: "Ravi", remedy: "Surya Stotram"},
     	{first_sign: "Kuja", second_sign: "Chandra", remedy: "Durga Japam"},

     	#Rahu start

     	{first_sign: "Rahuvu", second_sign: "Rahuvu", remedy: "Durga Pooja"},
     	{first_sign: "Rahuvu", second_sign: "Guru", remedy: "Shiva Pooja"},
     	{first_sign: "Rahuvu", second_sign: "Sheni", remedy: "Vishnu Sahsranamam Parayanam"},
     	{first_sign: "Rahuvu", second_sign: "Budha", remedy: "Vishnu Gayatri Mantram"},
     	{first_sign: "Rahuvu", second_sign: "Ketuvu", remedy: "Durga Japam"},
     	{first_sign: "Rahuvu", second_sign: "Sukhra", remedy: "Lalitha Sahasra Parayanam"},
     	{first_sign: "Rahuvu", second_sign: "Ravi", remedy: "Aditya Hrudhayum"},
     	{first_sign: "Rahuvu", second_sign: "Chandra", remedy: "Parvathi Gayatri"},
     	{first_sign: "Rahuvu", second_sign: "Kuja", remedy: "Subhramanya Gayatri"},

     	#Guru start

     	{first_sign: "Guru", second_sign: "Guru", remedy: "Shiva 1000 Nama Japam"},
     	{first_sign: "Guru", second_sign: "Sheni", remedy: "Vishnu Gayatri Mantram"},
     	{first_sign: "Guru", second_sign: "Budha", remedy: "Gayatri Mantram"},
     	{first_sign: "Guru", second_sign: "Ketuvu", remedy: "Ganapathi Japam"},
     	{first_sign: "Guru", second_sign: "Sukhra", remedy: "Lakshmi Gayatri"},
     	{first_sign: "Guru", second_sign: "Ravi", remedy: "Suryanamaskaram"},
     	{first_sign: "Guru", second_sign: "Chandra", remedy: "Lakshmi Gayatri"},
     	{first_sign: "Guru", second_sign: "Kuja", remedy: "Subhramanya Japam"},
     	{first_sign: "Guru", second_sign: "Rahuvu", remedy: "Mrutyumjaya Mantram"},
     	
     	#Sheni start

     	{first_sign: "Sheni", second_sign: "Sheni", remedy: "Sheni Sthotram"},
     	{first_sign: "Sheni", second_sign: "Budha", remedy: "Vishnu Gayatri"},
     	{first_sign: "Sheni", second_sign: "Ketuvu", remedy: "Mrutyumjaya Mantram"},
     	{first_sign: "Sheni", second_sign: "Sukhra", remedy: "Shiva Pooja, Gurucharithra Parayanam"},
     	{first_sign: "Sheni", second_sign: "Ravi", remedy: "Aditya Hrudhayum, Suryanamaskaralu"},
     	{first_sign: "Sheni", second_sign: "Chandra", remedy: "Durga Pooja, Durga Gayatri"},
     	{first_sign: "Sheni", second_sign: "Kuja", remedy: "Subhramanya Gayatri"},
     	{first_sign: "Sheni", second_sign: "Rahuvu", remedy: "Durga Japam"},
     	{first_sign: "Sheni", second_sign: "Guru", remedy: "Gurucharithra Parayanam"},

     	#Budha Start

     	{first_sign: "Budha", second_sign: "Budha", remedy: "Narayana Gayatri Mantram"},
     	{first_sign: "Budha", second_sign: "Ketuvu", remedy: "Durga Pooja, Ganapathi Japam"},
     	{first_sign: "Budha", second_sign: "Sukhra", remedy: "Lakshmi Gayatri"},
     	{first_sign: "Budha", second_sign: "Ravi", remedy: "Swethaghodhanam"},
     	{first_sign: "Budha", second_sign: "Chandra", remedy: "Silver Cow"},
     	{first_sign: "Budha", second_sign: "Kuja", remedy: "Shivabhishekam"},
     	{first_sign: "Budha", second_sign: "Rahuvu", remedy: "Mrutyumjaya Mantram"},
     	{first_sign: "Budha", second_sign: "Guru", remedy: "Shiva Japam"},
     	{first_sign: "Budha", second_sign: "Sheni", remedy: "Mrutyumjaya Mantram"},
     	
     	#Shukra start

     	{first_sign: "Sukhra", second_sign: "Shukra", remedy: "Lakshmi Mantram Japam"},
     	{first_sign: "Sukhra", second_sign: "Ravi", remedy: "Surya Mantram Japam"},
     	{first_sign: "Sukhra", second_sign: "chandra", remedy: "Durga Mantram Japam"},
     	{first_sign: "Sukhra", second_sign: "kuja", remedy: "Subhramanya Mantram Japam"},
     	{first_sign: "Sukhra", second_sign: "Rahuvu", remedy: "Durga Sthotram Parayanam"},
     	{first_sign: "Sukhra", second_sign: "Guru", remedy: "Guru Mantram"},
     	{first_sign: "Sukhra", second_sign: "Sheni", remedy: "Mrutyumjaya Mantram"},
     	{first_sign: "Sukhra", second_sign: "Budha", remedy: "Vishnu Sahsranamam Parayanam"},
     	{first_sign: "Sukhra", second_sign: "Ketuvu", remedy: "Ganapathi Pooja, Durga Japam"},

     	#Ketuvu start

     	{first_sign: "Ketuvu", second_sign: "Ketuvu", remedy: "Ganapathi Mantram"},
     	{first_sign: "Ketuvu", second_sign: "Shukra", remedy: "Durga Gayatri"},
     	{first_sign: "Ketuvu", second_sign: "Ravi", remedy: "Surya Gayatri Japam"},
     	{first_sign: "Ketuvu", second_sign: "chandra", remedy: "Durga Japam"},
     	{first_sign: "Ketuvu", second_sign: "kuja", remedy: "Subhramanya Gayatri Japam"},
     	{first_sign: "Ketuvu", second_sign: "Guru", remedy: "Shiva 1000 Nama Sthotram Parayanam"},
     	{first_sign: "Ketuvu", second_sign: "Sheni", remedy: "Black Cow Danam"},
     	{first_sign: "Ketuvu", second_sign: "Rahuvu", remedy: "Durga Gayatri"},
     	{first_sign: "Ketuvu", second_sign: "Budha", remedy: "41 Days Namo Narayana Mantram Japam"},



     	])
end
	end

namespace :products do
  task :reset_data => :environment do
  	Product.destroy_all
  Product.create!([
  	{name: "Ruby", description: "RUBY – KAMPU –METAL : GOLD , LIQUID:-  COW MILK - SUNDAY : 15 MINTS
MANTRAM : OM HREM SHREM KLEM NAMHA SURYAYA NAMAHA SWAHA ( 108 TIMES)RUBY/KAMPU  WEAR THIS STONE IN GOLD  TO YOUR RING FINGER . LADIES OR GENTS MUST WEAR THIS STONE TO RIGHT HAND RING FINGER ONLY.", price: 1000, image: File.open("./app/assets/images/products/images/ruby.png"),product_type: "Stone"},
{name: "Diamond", description: "DAIMOND- VAJRAM – GOLD METAL – LIQUID: RICE CLEANING WATER – 15MINTS- FRIDAY. MANTRAM: OM SHREM AIM HREM SHREM BRUGUMANAVA SHUKRAYA SWAHA (108 TIMES).", price: 1000, image: File.open("./app/assets/images/products/images/diamond.png"),product_type: "Stone"},
{name: "Jupiter", description: "JUPITER : KANAKA PUSHYA RAGHUM – GOLD METAL : LIQUID: KOMMU SANAGALU BOILED WATER – 15MINTS – THURSDAY MANTRAM: OM AIM SHREM HREM KLEM BRUHASPATAYA SWAHA (108 TIMES)", price: 1000, image: File.open("./app/assets/images/products/images/jupiter.png"),product_type: "Stone"},
{name: "Red Coral", description: "RED CORAL : PAGADAM- METAL :SILVER ,GOLD , LIQUID : COW MILK – TUESDAY:15MINTS MANTRAM : OM LAM AIM HREM SHREM MAHIPUTRATA SAKLARISHTA NIVARANAYA KLEM KLEM SWAHA. ( 108 TIMES)", price: 1000, image: File.open("./app/assets/images/products/images/red_coral.png"),product_type: "Stone"},
{name: "Indrani Roopu", description: "IF SUPPOSE IF YOUR FACING PROBLEM WITH VENUS PLANET THEN U WEAR THIS INDRANI ROOPU KANKANUM TO YOUR RIGHT HAND.SO THAT VENUS PLANETARY PROBLEMS WILL BE VANISHED.WEAR THIS KANKANAM ON FRIDAY MORNING 6AM TO AM .", price: 1000, image: File.open("./app/assets/images/products/images/KANKANALU/indrani_roopu.jpg"),product_type: "Kanakanam"},
{name: "Kaalabairava Roopu", description: "IF SUPPOSE IF YOU ARE FACING PROBLEM WITH SATURN LIKE YELI NATI SHENI,STRESS ETC. WEAR THIS KANKANAM TO SOLVE YOUR PROBLEM UT WAER THIS KANKANAM ON SATURDAY AT 6AM TO 7 AM MORNING.", price: 1000, image: File.open("./app/assets/images/products/images/KANKANALU/kalabhaivara_roopu.jpg"),product_type: "Kanakanam"},
{name: "1 Mukhi", description: "Ruling Planet Sun   - Goddess Lakshmi (Wealth).One Mukhi Rudraksha represents the ultimate reality, and Lord Shiva. Its ruling planet is the sun and it is worn or kept to lessen the bad effects of the sun. It increases concentration for work and meditation and will power of the wearer. It prevents diseases  of the head. It also gives happiness and prosperity. ", price: 1000, image: File.open("./app/assets/images/products/images/rudraksha/1_mukhi.jpg"),product_type: "Rudraksha"},
  ])
  end
end