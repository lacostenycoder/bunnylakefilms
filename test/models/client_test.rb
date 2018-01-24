require 'test_helper'

class ClientTest < ActiveSupport::TestCase

  test "client validates_presence_of name" do
    client = Client.new
    assert_not client.save
    assert client.errors.keys == [:name]
  end

  test "client name uniq" do
    Client.create(name: 'Name1')
    client2 = Client.new(name: 'Name1')
    assert_not client2.valid?
    assert client2.errors.keys == [:name]
  end

end
