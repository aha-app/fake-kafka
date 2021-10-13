class Fake::Kafka::Message
  attr_reader :key, :value, :topic, :partition, :partition_key,
              :offset, :headers, :create_time, :bytesize

  def initialize(value:, key:, headers: {}, topic:, partition: 0, partition_key: nil, create_time: Time.now.utc, offset: 0)
    @value = value
    @topic = topic
    @key = key
    @partition = partition
    @partition_key = partition_key
    @offset = offset
    @headers = headers
    @create_time = create_time
    @bytesize = key.to_s.bytesize + value.to_s.bytesize
  end
end
