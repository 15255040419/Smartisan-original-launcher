.class public final Lcom/google/common/net/HttpHeaders;
.super Ljava/lang/Object;
.source "HttpHeaders.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/google/common/net/HttpHeaders$ReferrerPolicyValues;
    }
.end annotation


# static fields
.field public static final ACCEPT:Ljava/lang/String; = "Accept"

.field public static final ACCEPT_CHARSET:Ljava/lang/String; = "Accept-Charset"

.field public static final ACCEPT_ENCODING:Ljava/lang/String; = "Accept-Encoding"

.field public static final ACCEPT_LANGUAGE:Ljava/lang/String; = "Accept-Language"

.field public static final ACCEPT_RANGES:Ljava/lang/String; = "Accept-Ranges"

.field public static final ACCESS_CONTROL_ALLOW_CREDENTIALS:Ljava/lang/String; = "Access-Control-Allow-Credentials"

.field public static final ACCESS_CONTROL_ALLOW_HEADERS:Ljava/lang/String; = "Access-Control-Allow-Headers"

.field public static final ACCESS_CONTROL_ALLOW_METHODS:Ljava/lang/String; = "Access-Control-Allow-Methods"

.field public static final ACCESS_CONTROL_ALLOW_ORIGIN:Ljava/lang/String; = "Access-Control-Allow-Origin"

.field public static final ACCESS_CONTROL_EXPOSE_HEADERS:Ljava/lang/String; = "Access-Control-Expose-Headers"

.field public static final ACCESS_CONTROL_MAX_AGE:Ljava/lang/String; = "Access-Control-Max-Age"

.field public static final ACCESS_CONTROL_REQUEST_HEADERS:Ljava/lang/String; = "Access-Control-Request-Headers"

.field public static final ACCESS_CONTROL_REQUEST_METHOD:Ljava/lang/String; = "Access-Control-Request-Method"

.field public static final AGE:Ljava/lang/String; = "Age"

.field public static final ALLOW:Ljava/lang/String; = "Allow"

.field public static final AUTHORIZATION:Ljava/lang/String; = "Authorization"

.field public static final CACHE_CONTROL:Ljava/lang/String; = "Cache-Control"

.field public static final CONNECTION:Ljava/lang/String; = "Connection"

.field public static final CONTENT_DISPOSITION:Ljava/lang/String; = "Content-Disposition"

.field public static final CONTENT_ENCODING:Ljava/lang/String; = "Content-Encoding"

.field public static final CONTENT_LANGUAGE:Ljava/lang/String; = "Content-Language"

.field public static final CONTENT_LENGTH:Ljava/lang/String; = "Content-Length"

.field public static final CONTENT_LOCATION:Ljava/lang/String; = "Content-Location"

.field public static final CONTENT_MD5:Ljava/lang/String; = "Content-MD5"

.field public static final CONTENT_RANGE:Ljava/lang/String; = "Content-Range"

.field public static final CONTENT_SECURITY_POLICY:Ljava/lang/String; = "Content-Security-Policy"

.field public static final CONTENT_SECURITY_POLICY_REPORT_ONLY:Ljava/lang/String; = "Content-Security-Policy-Report-Only"

.field public static final CONTENT_TYPE:Ljava/lang/String; = "Content-Type"

.field public static final COOKIE:Ljava/lang/String; = "Cookie"

.field public static final DATE:Ljava/lang/String; = "Date"

.field public static final DNT:Ljava/lang/String; = "DNT"

.field public static final ETAG:Ljava/lang/String; = "ETag"

.field public static final EXPECT:Ljava/lang/String; = "Expect"

.field public static final EXPIRES:Ljava/lang/String; = "Expires"

.field public static final FOLLOW_ONLY_WHEN_PRERENDER_SHOWN:Ljava/lang/String; = "Follow-Only-When-Prerender-Shown"

.field public static final FORWARDED:Ljava/lang/String; = "Forwarded"

.field public static final FROM:Ljava/lang/String; = "From"

.field public static final HOST:Ljava/lang/String; = "Host"

.field public static final HTTP2_SETTINGS:Ljava/lang/String; = "HTTP2-Settings"

.field public static final IF_MATCH:Ljava/lang/String; = "If-Match"

.field public static final IF_MODIFIED_SINCE:Ljava/lang/String; = "If-Modified-Since"

.field public static final IF_NONE_MATCH:Ljava/lang/String; = "If-None-Match"

.field public static final IF_RANGE:Ljava/lang/String; = "If-Range"

.field public static final IF_UNMODIFIED_SINCE:Ljava/lang/String; = "If-Unmodified-Since"

.field public static final LAST_EVENT_ID:Ljava/lang/String; = "Last-Event-ID"

.field public static final LAST_MODIFIED:Ljava/lang/String; = "Last-Modified"

.field public static final LINK:Ljava/lang/String; = "Link"

.field public static final LOCATION:Ljava/lang/String; = "Location"

.field public static final MAX_FORWARDS:Ljava/lang/String; = "Max-Forwards"

.field public static final ORIGIN:Ljava/lang/String; = "Origin"

.field public static final P3P:Ljava/lang/String; = "P3P"

.field public static final PING_FROM:Ljava/lang/String; = "Ping-From"

.field public static final PING_TO:Ljava/lang/String; = "Ping-To"

.field public static final PRAGMA:Ljava/lang/String; = "Pragma"

.field public static final PROXY_AUTHENTICATE:Ljava/lang/String; = "Proxy-Authenticate"

.field public static final PROXY_AUTHORIZATION:Ljava/lang/String; = "Proxy-Authorization"

.field public static final PUBLIC_KEY_PINS:Ljava/lang/String; = "Public-Key-Pins"

.field public static final PUBLIC_KEY_PINS_REPORT_ONLY:Ljava/lang/String; = "Public-Key-Pins-Report-Only"

.field public static final RANGE:Ljava/lang/String; = "Range"

.field public static final REFERER:Ljava/lang/String; = "Referer"

.field public static final REFERRER_POLICY:Ljava/lang/String; = "Referrer-Policy"

.field public static final REFRESH:Ljava/lang/String; = "Refresh"

.field public static final RETRY_AFTER:Ljava/lang/String; = "Retry-After"

.field public static final SERVER:Ljava/lang/String; = "Server"

.field public static final SERVER_TIMING:Ljava/lang/String; = "Server-Timing"

.field public static final SERVICE_WORKER:Ljava/lang/String; = "Service-Worker"

.field public static final SERVICE_WORKER_ALLOWED:Ljava/lang/String; = "Service-Worker-Allowed"

.field public static final SET_COOKIE:Ljava/lang/String; = "Set-Cookie"

.field public static final SET_COOKIE2:Ljava/lang/String; = "Set-Cookie2"

.field public static final STRICT_TRANSPORT_SECURITY:Ljava/lang/String; = "Strict-Transport-Security"

.field public static final TE:Ljava/lang/String; = "TE"

.field public static final TIMING_ALLOW_ORIGIN:Ljava/lang/String; = "Timing-Allow-Origin"

.field public static final TRAILER:Ljava/lang/String; = "Trailer"

.field public static final TRANSFER_ENCODING:Ljava/lang/String; = "Transfer-Encoding"

.field public static final UPGRADE:Ljava/lang/String; = "Upgrade"

.field public static final USER_AGENT:Ljava/lang/String; = "User-Agent"

.field public static final VARY:Ljava/lang/String; = "Vary"

.field public static final VIA:Ljava/lang/String; = "Via"

.field public static final WARNING:Ljava/lang/String; = "Warning"

.field public static final WWW_AUTHENTICATE:Ljava/lang/String; = "WWW-Authenticate"

.field public static final X_CONTENT_SECURITY_POLICY:Ljava/lang/String; = "X-Content-Security-Policy"

.field public static final X_CONTENT_SECURITY_POLICY_REPORT_ONLY:Ljava/lang/String; = "X-Content-Security-Policy-Report-Only"

.field public static final X_CONTENT_TYPE_OPTIONS:Ljava/lang/String; = "X-Content-Type-Options"

.field public static final X_DNS_PREFETCH_CONTROL:Ljava/lang/String; = "X-DNS-Prefetch-Control"

.field public static final X_DOWNLOAD_OPTIONS:Ljava/lang/String; = "X-Download-Options"

.field public static final X_DO_NOT_TRACK:Ljava/lang/String; = "X-Do-Not-Track"

.field public static final X_FORWARDED_FOR:Ljava/lang/String; = "X-Forwarded-For"

.field public static final X_FORWARDED_HOST:Ljava/lang/String; = "X-Forwarded-Host"

.field public static final X_FORWARDED_PORT:Ljava/lang/String; = "X-Forwarded-Port"

.field public static final X_FORWARDED_PROTO:Ljava/lang/String; = "X-Forwarded-Proto"

.field public static final X_FRAME_OPTIONS:Ljava/lang/String; = "X-Frame-Options"

.field public static final X_POWERED_BY:Ljava/lang/String; = "X-Powered-By"

.field public static final X_REQUESTED_WITH:Ljava/lang/String; = "X-Requested-With"

.field public static final X_USER_IP:Ljava/lang/String; = "X-User-IP"

.field public static final X_WEBKIT_CSP:Ljava/lang/String; = "X-WebKit-CSP"

.field public static final X_WEBKIT_CSP_REPORT_ONLY:Ljava/lang/String; = "X-WebKit-CSP-Report-Only"

.field public static final X_XSS_PROTECTION:Ljava/lang/String; = "X-XSS-Protection"


# direct methods
.method private constructor <init>()V
    .locals 0

    .line 37
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method
