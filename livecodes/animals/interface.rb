require_relative 'lion'
require_relative 'meerkat'
require_relative 'warthog'

# create an array with Simba, Nala, Timon & Pumbaa
simba = Lion.new('Simba')
nala = Lion.new('Nala')
timon = Meerkat.new('Timon')
pumbaa = Warthog.new('Pumbaa')

animals = [simba, nala, timon, pumbaa]

# iterate over it and puts the sound each animal make
animals.each { |animal| puts animal.talk }