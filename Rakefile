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