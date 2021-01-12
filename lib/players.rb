class Player
  attr_accessor :name, :token

  @@players = {}

  def initialize(name, token = 'X')
    @name = name
    @token = token
    while @token != 'X' && @token != 'O'
      puts "Oops! Wrong token. Choose 'X' or 'O':"
      @token = gets.chomp.upcase
    end
    @@players[name] = if !@@players.empty?
                        @@players.values[0] == 'X' ? 'O' : 'X'
                      else
                        @token
                      end
  end

  def self.get_player
    @@players
  end
end
