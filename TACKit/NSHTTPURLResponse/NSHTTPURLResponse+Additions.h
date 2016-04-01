//
//  NSHTTPURLResponse+Additions.h
//  TACKit
//
//  Created by masato_arai on 2016/04/01.
//  Copyright (c) 2015年 Tea and Coffee. All rights reserved.
//

#import <Foundation/Foundation.h>

NS_ASSUME_NONNULL_BEGIN

typedef NS_ENUM(NSInteger, TACHTTPStatusCode) {
    // nil
    TACHTTPStatusCode_Zero                         = 0,
    
    // 1xx Informational 情報
    // リクエストは受け取られた。処理は継続される。
    TACHTTPStatusCode_Continue                     = 100, // 継続
    TACHTTPStatusCode_SwitchingProtocols           = 101, // プロトコル切替え
    TACHTTPStatusCode_Processing                   = 102, // 処理中
    
    // 2xx Success 成功
    // リクエストは受け取られ、理解され、受理された。
    TACHTTPStatusCode_OK                           = 200, // OK
    TACHTTPStatusCode_Created                      = 201, // 作成
    TACHTTPStatusCode_Accepted                     = 202, // 受理
    TACHTTPStatusCode_Non_AuthoritativeInformation = 203, // 信頼できない情報
    TACHTTPStatusCode_NoContent                    = 204, // 内容なし
    TACHTTPStatusCode_ResetContent                 = 205, // 内容のリセット
    TACHTTPStatusCode_PartialContent               = 206, // 部分的内容
    TACHTTPStatusCode_Multi_Status                 = 207, // 複数のステータス
    TACHTTPStatusCode_AlreadyReported              = 208, // 既に報告
    TACHTTPStatusCode_IMUsed                       = 226, // IM使用
    
    // 3xx Redirection リダイレクション
    // リクエストを完了させるために、追加的な処理が必要。
    TACHTTPStatusCode_MultipleChoices              = 300, // 複数の選択
    TACHTTPStatusCode_MovedPermanently             = 301, // 恒久的に移動した
    TACHTTPStatusCode_Found                        = 302, // 発見した
    TACHTTPStatusCode_SeeOther                     = 303, // 他を参照せよ
    TACHTTPStatusCode_NotModified                  = 304, // 未更新
    TACHTTPStatusCode_UseProxy                     = 305, // プロキシを使用せよ
    TACHTTPStatusCode_Unused                       = 306, // 将来のために予約されている
    TACHTTPStatusCode_TemporaryRedirect            = 307, // 一時的リダイレクト
    TACHTTPStatusCode_PermanentRedirect            = 308, // 恒久的リダイレクト
    
    // 4xx Client Error クライアントエラー
    // クライアントからのリクエストに誤りがあった。
    TACHTTPStatusCode_BadRequest                   = 400, // リクエストが不正である
    TACHTTPStatusCode_Unauthorized                 = 401, // 認証が必要である
    TACHTTPStatusCode_PaymentRequired              = 402, // 支払いが必要である
    TACHTTPStatusCode_Forbidden                    = 403, // 禁止されている
    TACHTTPStatusCode_NotFound                     = 404, // 未検出
    TACHTTPStatusCode_MethodNotAllowed             = 405, // 許可されていないメソッド
    TACHTTPStatusCode_NotAcceptable                = 406, // 受理できない
    TACHTTPStatusCode_ProxyAuthenticationRequired  = 407, // プロキシ認証が必要である
    TACHTTPStatusCode_RequestTimeout               = 408, // リクエストタイムアウト
    TACHTTPStatusCode_Conflict                     = 409, // 競合
    TACHTTPStatusCode_Gone                         = 410, // 消滅した
    TACHTTPStatusCode_LengthRequired               = 411, // 長さが必要
    TACHTTPStatusCode_PreconditionFailed           = 412, // 前提条件で失敗した
    TACHTTPStatusCode_PayloadTooLarge              = 413, // ペイロードが大きすぎる
    TACHTTPStatusCode_URITooLong                   = 414, // URIが大きすぎる
    TACHTTPStatusCode_UnsupportedMediaType         = 415, // サポートしていないメディアタイプ
    TACHTTPStatusCode_RangeNotSatisfiable          = 416, // レンジは範囲外にある
    TACHTTPStatusCode_ExpectationFailed            = 417, // Expectヘッダによる拡張が失敗
    TACHTTPStatusCode_I_am_a_teapot                = 418, // 私はティーポット
    TACHTTPStatusCode_UnprocessableEntity          = 422, // 処理できないエンティティ
    TACHTTPStatusCode_Locked                       = 423, // ロックされている
    TACHTTPStatusCode_FailedDependency             = 424, // 依存関係で失敗
    TACHTTPStatusCode_UpgradeRequired              = 426, // アップグレード要求
    TACHTTPStatusCode_UnavailableForLegalReasons   = 451, //  政治的検閲による閲覧禁止。
    
    // 5xx Server Error サーバエラー
    // サーバがリクエストの処理に失敗した。
    TACHTTPStatusCode_InternalServerError          = 500, // サーバ内部エラー
    TACHTTPStatusCode_NotImplemented               = 501, // 実装されていない
    TACHTTPStatusCode_BadGateway                   = 502, // 不正なゲートウェイ
    TACHTTPStatusCode_ServiceUnavailable           = 503, // サービス利用不可
    TACHTTPStatusCode_GatewayTimeout               = 504, // ゲートウェイタイムアウト
    TACHTTPStatusCode_HTTPVersionNotSupported      = 505, // サポートしていないHTTPバージョン
    TACHTTPStatusCode_VariantAlsoNegotiates        = 506,
    TACHTTPStatusCode_InsufficientStorage          = 507, // 容量不足
    TACHTTPStatusCode_BandwidthLimitExceeded       = 509, // 帯域幅制限超過
    TACHTTPStatusCode_NotExtended                  = 510, // 拡張できない
};

@interface NSHTTPURLResponse (Additions)

@end

NS_ASSUME_NONNULL_END
