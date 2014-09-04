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

def open_csv
  CSV.open('filename')


def print_data(account)
  puts "==== #{account} ===="
  puts "Starting Balance: $201.94"
  puts "Ending Balance:   $637.09"

    transactions.each do |transaction|
      puts "$#{amount}   {type}  #{date} - #{Description}"
    end
  puts "========"
end
