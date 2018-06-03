# coding: utf-8
require 'spec_helper'

RSpec.describe '企业签约' do
  let(:user_no) { '2' }
  let(:flow_id) { Lanmao::Utils.gen_flow_id }
  let(:enterprise_name) { '上更保理公司' }
  let(:bank_licence) { '100000000' }
  let(:org_no) { '' }
  let(:business_license) { '' }
  let(:tax_no) { '' }
  let(:unified_code) { '1000002221' }
  let(:credit_code) { '1000002221' }
  let(:legal) { '王辉' }
  let(:legal_id_card_no) { '500224199511150002' }
  let(:contact) { '王辉' }
  let(:contact_phone) { '15922510001' }
  let(:bank_card_no) { '6212263201023550001' }
  let(:bank_code) { 'ABOC' }
  let(:id_card_type) { 'PRC_ID' }
  let(:role_type) { 'GUARANTEECORP' }
  let(:return_url) { 'http://test.omni_account.com' }

  it '担保企业签约' do
    result = client.enterprise_register_form(flow_id, user_no, enterprise_name, bank_licence, org_no, tax_no, business_license, unified_code, credit_code,
                                             legal, id_card_type, legal_id_card_no, contact, contact_phone, role_type,
                                             bank_card_no, bank_code, return_url)

    html = create_getway_post(result)

    path = 'tmp/spec_enterprise_register_form.html'
    fp = File.open(path, 'w+')
    fp.write html
    fp.close

    puts "flow_id: #{flow_id}"
    puts "测试 html 导入到：#{path}"
  end
end
