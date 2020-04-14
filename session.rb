ips = File.readlines('log/prod_ips_uniq.log');
ips.count
hash = {}
ips.first
ips.first.strip
@data = {}
def lookup(ip)
  @data[ip.strip] = (`grep #{ip} log/prod_ips_uniq.log | wc -l`).to_i
end
ips.each{|ip| lookup(ip)};
@data.first
def lookup(ip)
  @data[ip.strip] = (`grep #{ip} log/prod_ips_uniq.log | wc -l`).to_i
end
ips[0..10].each{|ip| lookup(ip)};
lookup(ips.first)
@data.first
@data.count
@data
@data[ips.first] = 1
@data
@data[ips.first.strip] = 1
@data
@data = {}
`grep #{ips.first.strip} log/prod_ips_uniq.log | wc -l`
(`grep #{ips.first.strip} log/prod_ips_uniq.log | wc -l`).to_i
def lookup(ip)
  ip = ip.strip
  @data[ip] = (`grep #{ip} log/prod_ips_uniq.log | wc -l`).to_i
end
ips[0..10].each{|ip| lookup(ip)}
@data
ips.each{|ip| lookup(ip)};
@data.count
@data
def lookup(ip)
  ip = ip.strip
  @data[ip] = (`grep #{ip} log/prod_ips.log | wc -l`).to_i
end
ips.each{|ip| lookup(ip)};
@data.count
ips.count
ips.uniq.count
@data.last
@data.to_a.last
@data.select{|h| h.to_a.last > 1 }.count
@data.select{|k, v| v > 1 }.count
@data.select{|k, v| v > 1 }.max_by{|k,v| v}
@data.map(&:values).sort.reverse[0..10]
@data.map{|k,v| v}.sort.reverse[0..10]
@data.order_by{|k,v| v}.sort.reverse[0..10]
@data.order{|k,v| v}.sort.reverse[0..10]
@data.map{|h| h.to_a}.order{|i| i.last}[0..10]
@data.map{|h| h.to_a}.sort_by{|a| a.last}[0..10]
@data.map{|h| h.to_a}.sort_by{|a| a.last}.reverse[0..10]
@data.map{|h| h.to_a}.sort_by{|a| a.last}.reverse[0..100]
require 'json'
File.open('ip_counts.json', 'w'){|f| f.write @data.to_json}
skj
qdddd
hlkjsdf
