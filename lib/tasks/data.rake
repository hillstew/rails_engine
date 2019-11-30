require 'csv'

desc "Import data from csv files"
task :import_csv => [:environment] do
  files = {
    Customer => "data/customers.csv",
    Merchant => "data/merchants.csv",
    Invoice => "data/invoices.csv",
    Item => "data/items.csv",
    InvoiceItem => "data/invoice_items.csv",
    Transaction => "data/transactions.csv"
  }

  files.each do |model, path|
    CSV.foreach(path, :headers => true) do |row|
      model.create!(row.to_h)
    end
  end
end