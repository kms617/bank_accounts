# I can load a CSV that contains my starting balances for all of my accounts
# * I can load a CSV that contains all of my bank transactions
# * For each account, the system outputs my starting balance, ending balance, and
#   transaction history for the account in chronological order.

# You must define a Transaction class. It should have the following behaviors:

# deposit? that returns true if the transaction was a deposit as opposed to a withdrawal
# summary that returns a string describing the transaction
# You must define an Account class. It should have the following behaviors:

# starting_balance that returns the starting balance loaded from the file
# current_balance that returns the ending balance after all transactions have been processed
# summary that returns an array of all of the transaction summaries
# Your Account class should have an instance variable that contains an array of its associated Transactions.

# require_relative "transaction"
# require_relative "account"
require "csv"
# require "sinatra"
# require "sinatra/reloader"
require "pry"
require "table_print"


##############################################################
# Methods
##############################################################

def read_csv(filename)
   data = []
   CSV.foreach(filename, headers: true, header_converters: :symbol, converters: :numeric) do |row|
     data << row
   end
  data
end

class Account
  def initialize(bank_data)
    @date = bank_data[:date]
    @amount = bank_data[:amount].to_f
    @description = bank_data[:description]
    @account = bank_data[:account]
binding.pry
  end
end


def print_data(account)
  puts "==== #{file} ===="
  puts "Starting Balance: $201.94"
  puts "Ending Balance:   $637.09"

    file.each do |transactions|
      puts "$#{amount}   {type}  #{date} - #{Description}"
    end
  puts "========"
end

##############################################################
# Routes
##############################################################

bank_data = []
bank_data = read_csv('public/bank_data.csv')

bank_data.each do |row|
  if row[:amount] < 0
    row << ({:type => "WITHDRAWAL"})
    row[:amount] = (row[:amount] * -1)
  else
    row << ({:type => "DEPOSIT"})
  end
end

business_acct = []
purchasing_acct = []
bank_data.each do |row|
  if row[:account] == "Business Checking"
    business_acct << row
  else
    purchasing_acct << row
  end
end

balances = []
balances = read_csv('public/balances.csv')
binding.pry



puts "==== #{ balances[0][:account]} ===="
puts "Starting Balance: $#{sprintf('%.2f', balances[0][:balance])}"
puts "Ending Balance:   $#{sprintf('%.2f', balances[0][:balance])}"
puts ""

def starting_balance(acct)


def summary(acct)
  acct.each do |row|
    puts "$#{sprintf('%.2f', row[:amount])} #{row[:type]} #{row[:date]} - #{row[:description]}"
  end
puts "===="
end

summary(purchasing_acct)

# tp(purchasing_acct, :amount, :type, :date, :description)
