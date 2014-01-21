class Check < ActiveRecord::Base
  has_many :check_headers
  accepts_nested_attributes_for :check_headers, :allow_destroy => true

  def run
    client = Net::HTTP.new(host, 80)
    req = Net::HTTP::Get.new(path)

    check_headers.each do |header|
      req[header.name] = header.value
    end

    resp = client.request(req)
    self.status = resp.code
    self.status_message = resp.message
    self.save
  end
end
