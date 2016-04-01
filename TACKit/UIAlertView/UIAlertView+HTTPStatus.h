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
    Zero = 0,
    
    // 1xx Informational 情報
    // リクエストは受け取られた。処理は継続される。
    Continue = 100,                     // 継続
    SwitchingProtocols = 101,           // プロトコル切替え
    Processing = 102,                   // 処理中
    
    // 2xx Success 成功
    // リクエストは受け取られ、理解され、受理された。
    OK = 200,                           // OK
    Created = 201,                      // 作成
    Accepted = 202,                     // 受理
    Non_AuthoritativeInformation = 203, // 信頼できない情報
    NoContent = 204,                    // 内容なし
    ResetContent = 205,                 // 内容のリセット
    PartialContent = 206,               // 部分的内容
    Multi_Status = 207,                 // 複数のステータス
    AlreadyReported = 208,              // 既に報告
    IMUsed = 226,                       // IM使用
    
    // 3xx Redirection リダイレクション
    // リクエストを完了させるために、追加的な処理が必要。
    MultipleChoices = 300,              // 複数の選択
    MovedPermanently = 301,             // 恒久的に移動した
    Found = 302,                        // 発見した
    SeeOther = 303,                     // 他を参照せよ
    NotModified = 304,                  // 未更新
    UseProxy = 305,                     // プロキシを使用せよ
    Unused = 306,                       // 将来のために予約されている
    TemporaryRedirect = 307,            // 一時的リダイレクト
    PermanentRedirect = 308,            // 恒久的リダイレクト
    
    // 4xx Client Error クライアントエラー
    // クライアントからのリクエストに誤りがあった。
    BadRequest = 400,                   // リクエストが不正である
    Unauthorized = 401,                 // 認証が必要である
    PaymentRequired = 402,              // 支払いが必要である
    Forbidden = 403,                    // 禁止されている
    NotFound = 404,                     // 未検出
    MethodNotAllowed = 405,             // 許可されていないメソッド
    NotAcceptable = 406,                // 受理できない
    ProxyAuthenticationRequired = 407,  // プロキシ認証が必要である
    RequestTimeout = 408,               // リクエストタイムアウト
    Conflict = 409,                     // 競合
    Gone = 410,                         // 消滅した
    LengthRequired = 411,               // 長さが必要
    PreconditionFailed = 412,           // 前提条件で失敗した
    PayloadTooLarge = 413,              // ペイロードが大きすぎる
    URITooLong = 414,                   // URIが大きすぎる
    UnsupportedMediaType = 415,         // サポートしていないメディアタイプ
    RangeNotSatisfiable = 416,          // レンジは範囲外にある
    ExpectationFailed = 417,            // Expectヘッダによる拡張が失敗
    I_am_a_teapot = 418,                // 私はティーポット
    UnprocessableEntity = 422,          // 処理できないエンティティ
    Locked = 423,                       // ロックされている
    FailedDependency = 424,             // 依存関係で失敗
    UpgradeRequired = 426,              // アップグレード要求
    UnavailableForLegalReasons = 451,   //  政治的検閲による閲覧禁止。
    
    // 5xx Server Error サーバエラー
    // サーバがリクエストの処理に失敗した。
    InternalServerError = 500,          // サーバ内部エラー
    NotImplemented = 501,               // 実装されていない
    BadGateway = 502,                   // 不正なゲートウェイ
    ServiceUnavailable = 503,           // サービス利用不可
    GatewayTimeout = 504,               // ゲートウェイタイムアウト
    HTTPVersionNotSupported = 505,      // サポートしていないHTTPバージョン
    VariantAlsoNegotiates = 506,
    InsufficientStorage = 507,          // 容量不足
    BandwidthLimitExceeded = 509,       // 帯域幅制限超過
    NotExtended = 510                   // 拡張できない
};

@interface UIAlertView (HTTPStatus)

- (instancetype)initWithHttpStatusCode:(HTTPStatusCode)statusCode delegate:(nullable id /*<UIAlertViewDelegate>*/)delegate;

@end

NS_ASSUME_NONNULL_END
