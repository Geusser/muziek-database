class Song < ApplicationRecord


  validates :artist,
            length: { in: 1..50,
                      too_long: 'maag maar maximaal %{count} karakters lang zijn.',
                      too_short: 'moet minimaal %{count} karakter lang zijn.'
                    }
  validates :name,
            length: { in: 1..50,
                      too_long: 'maag maar maximaal %{count} karakters lang zijn.',
                      too_short: 'moet minimaal %{count} karakter lang zijn.'
                    }
  validates :genre,
            length: { in: 1..20,
                      too_long: 'maag maar maximaal %{count} karakters lang zijn.',
                      too_short: 'moet minimaal %{count} karakter lang zijn.'
                    }
  validates :description,
            length: { in: 1..300,
                      too_long: 'maag maar maximaal %{count} karakters lang zijn.',
                      too_short: 'moet minimaal %{count} karakter lang zijn.'
                    }
  validates :album,
            length: { in: 1..25,
                      too_long: 'maag maar maximaal %{count} karakters lang zijn.',
                      too_short: 'moet minimaal %{count} karakter lang zijn.'
                    }
  validates :score,
            numericality: { only_integer: true,
                            greater_than_or_equal_to: 0,
                            less_than: 12
                          }

  validates :rating,
            numericality: { only_integer: true,
                            greater_than_or_equal_to: 0,
                            less_than: 9
                          }
end
