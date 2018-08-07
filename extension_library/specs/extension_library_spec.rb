require("minitest/autorun")
require("minitest/rg")
require_relative("../extension_library.rb")

class Library < MiniTest::Test

  def setup

    @books = [

      {
        title: "a tale of two cities",
        rental_details: {
          student_name: "Rachel",
          date: "01/08/18"
        }
      },

      {
        title: "alice_in_wonderland",
        rental_details: {
          student_name: "Sian",
          date: "21/07/18"
        }
      }
    ]

  end




end
