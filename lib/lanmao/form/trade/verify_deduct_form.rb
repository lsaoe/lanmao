# coding: utf-8
module Lanmao
  module Api
    module Trade
      module VerifyDeduct
        # 验密扣费
        #
        # @return [ Hash ] 结果集
        #   * :result [String] "S"/"F"/"P"
        #   * :request_params [Hash] 请求参数
        #   * :response [Object] 请求返回对象
        #   * :code [String] 结果代码
        #   * :msg [String] 结果信息
        #   * :data: 具体业务返回信息
        #       * :requestNo [String] 请求流水号
        #       * :code [Enum] 返回吗
        #       * :status [Enum] 业务处理状态（处理失败INIT；处理成功SUCCESS）
        #       * :errorCode [String] 错误码
        #       * :errorMessage [String] 错误描述
        #
        def verify_deduct_form(flow_id, platform_user_no, amount, target_platform_user_no, redirect_url, expired, custom_define="")

          service = "VERIFY_DEDUCT"

          params = {
            requestNo: flow_id,
            platformUserNo: platform_user_no,
            amount: amount,
            targetPlatformUserNo: target_platform_user_no,
            redirectUrl: redirect_url,
            expired: expired,
            customDefine: custom_define
          }

          res = get_form_data(service, params)

          res
        end

      end # module
    end
  end
end
