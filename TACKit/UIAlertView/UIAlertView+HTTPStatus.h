//
//  UIAlertView+HTTPStatus.h
//  TACKit
//
//  Created by masato_arai on 2015/04/27.
//  Copyright (c) 2015年 Tea and Coffee. All rights reserved.
//

#import <UIKit/UIKit.h>

NS_ASSUME_NONNULL_BEGIN

typedef NS_ENUM(NSInteger, HTTPStatusCode) {
    // nil
    HTTPStatusCode_Zero                         = 0,
    
    // 1xx Informational 情報
    // リクエストは受け取られた。処理は継続される。
    HTTPStatusCode_Continue                     = 100, // 継続
    HTTPStatusCode_SwitchingProtocols           = 101, // プロトコル切替え
    HTTPStatusCode_Processing                   = 102, // 処理中
    
    // 2xx Success 成功
    // リクエストは受け取られ、理解され、受理された。
    HTTPStatusCode_OK                           = 200, // OK
    HTTPStatusCode_Created                      = 201, // 作成
    HTTPStatusCode_Accepted                     = 202, // 受理
    HTTPStatusCode_Non_AuthoritativeInformation = 203, // 信頼できない情報
    HTTPStatusCode_NoContent                    = 204, // 内容なし
    HTTPStatusCode_ResetContent                 = 205, // 内容のリセット
    HTTPStatusCode_PartialContent               = 206, // 部分的内容
    HTTPStatusCode_Multi_Status                 = 207, // 複数のステータス
    HTTPStatusCode_AlreadyReported              = 208, // 既に報告
    HTTPStatusCode_IMUsed                       = 226, // IM使用
    
    // 3xx Redirection リダイレクション
    // リクエストを完了させるために、追加的な処理が必要。
    HTTPStatusCode_MultipleChoices              = 300, // 複数の選択
    HTTPStatusCode_MovedPermanently             = 301, // 恒久的に移動した
    HTTPStatusCode_Found                        = 302, // 発見した
    HTTPStatusCode_SeeOther                     = 303, // 他を参照せよ
    HTTPStatusCode_NotModified                  = 304, // 未更新
    HTTPStatusCode_UseProxy                     = 305, // プロキシを使用せよ
    HTTPStatusCode_Unused                       = 306, // 将来のために予約されている
    HTTPStatusCode_TemporaryRedirect            = 307, // 一時的リダイレクト
    HTTPStatusCode_PermanentRedirect            = 308, // 恒久的リダイレクト
    
    // 4xx Client Error クライアントエラー
    // クライアントからのリクエストに誤りがあった。
    HTTPStatusCode_BadRequest                   = 400, // リクエストが不正である
    HTTPStatusCode_Unauthorized                 = 401, // 認証が必要である
    HTTPStatusCode_PaymentRequired              = 402, // 支払いが必要である
    HTTPStatusCode_Forbidden                    = 403, // 禁止されている
    HTTPStatusCode_NotFound                     = 404, // 未検出
    HTTPStatusCode_MethodNotAllowed             = 405, // 許可されていないメソッド
    HTTPStatusCode_NotAcceptable                = 406, // 受理できない
    HTTPStatusCode_ProxyAuthenticationRequired  = 407, // プロキシ認証が必要である
    HTTPStatusCode_RequestTimeout               = 408, // リクエストタイムアウト
    HTTPStatusCode_Conflict                     = 409, // 競合
    HTTPStatusCode_Gone                         = 410, // 消滅した
    HTTPStatusCode_LengthRequired               = 411, // 長さが必要
    HTTPStatusCode_PreconditionFailed           = 412, // 前提条件で失敗した
    HTTPStatusCode_PayloadTooLarge              = 413, // ペイロードが大きすぎる
    HTTPStatusCode_URITooLong                   = 414, // URIが大きすぎる
    HTTPStatusCode_UnsupportedMediaType         = 415, // サポートしていないメディアタイプ
    HTTPStatusCode_RangeNotSatisfiable          = 416, // レンジは範囲外にある
    HTTPStatusCode_ExpectationFailed            = 417, // Expectヘッダによる拡張が失敗
    HTTPStatusCode_I_am_a_teapot                = 418, // 私はティーポット
    HTTPStatusCode_UnprocessableEntity          = 422, // 処理できないエンティティ
    HTTPStatusCode_Locked                       = 423, // ロックされている
    HTTPStatusCode_FailedDependency             = 424, // 依存関係で失敗
    HTTPStatusCode_UpgradeRequired              = 426, // アップグレード要求
    HTTPStatusCode_UnavailableForLegalReasons   = 451, //  政治的検閲による閲覧禁止。
    
    // 5xx Server Error サーバエラー
    // サーバがリクエストの処理に失敗した。
    HTTPStatusCode_InternalServerError          = 500, // サーバ内部エラー
    HTTPStatusCode_NotImplemented               = 501, // 実装されていない
    HTTPStatusCode_BadGateway                   = 502, // 不正なゲートウェイ
    HTTPStatusCode_ServiceUnavailable           = 503, // サービス利用不可
    HTTPStatusCode_GatewayTimeout               = 504, // ゲートウェイタイムアウト
    HTTPStatusCode_HTTPVersionNotSupported      = 505, // サポートしていないHTTPバージョン
    HTTPStatusCode_VariantAlsoNegotiates        = 506,
    HTTPStatusCode_InsufficientStorage          = 507, // 容量不足
    HTTPStatusCode_BandwidthLimitExceeded       = 509, // 帯域幅制限超過
    HTTPStatusCode_NotExtended                  = 510, // 拡張できない
};

@interface UIAlertView (HTTPStatus)

- (instancetype)initWithHTTPStatusCode:(HTTPStatusCode)statusCode delegate:(nullable id /*<UIAlertViewDelegate>*/)delegate;

@end

NS_ASSUME_NONNULL_END
