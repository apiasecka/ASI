# -*- coding: utf-8 -*-
#
# create_table "books", :force => true do |t|
#   t.string   "author"
#   t.string   "title"
#   t.string   "isbn"
#   t.integer  "price"
#   t.datetime "created_at", :null => false
#   t.datetime "updated_at", :null => false
#   t.string   "cover"
# end

Book.create! author: "J. K. Rowling", title: "Harry Potter i Komnata Tajemnic", isbn: "83-7278-012-9", price_pln: 35.00
Book.create! author: "Suzanne Collins", title: "Igrzyska Śmierci", isbn: "978-83-7278-636-4", price_pln: 40.00
Book.create! author: "Viktor Hugo", title: "Nędznicy", isbn: "83-01-12385-0", price_pln: 45.00
