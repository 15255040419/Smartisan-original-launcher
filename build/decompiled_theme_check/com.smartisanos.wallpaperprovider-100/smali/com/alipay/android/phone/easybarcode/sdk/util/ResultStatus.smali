.class public final enum Lcom/alipay/android/phone/easybarcode/sdk/util/ResultStatus;
.super Ljava/lang/Enum;


# static fields
.field private static final synthetic $VALUES:[Lcom/alipay/android/phone/easybarcode/sdk/util/ResultStatus;

.field public static final enum FAKE:Lcom/alipay/android/phone/easybarcode/sdk/util/ResultStatus;

.field public static final enum NOT_INSTALL:Lcom/alipay/android/phone/easybarcode/sdk/util/ResultStatus;

.field public static final enum SUCCESS_SCHEME:Lcom/alipay/android/phone/easybarcode/sdk/util/ResultStatus;

.field public static final enum SUCCESS_SERVICE:Lcom/alipay/android/phone/easybarcode/sdk/util/ResultStatus;

.field public static final enum SYS_ERROR:Lcom/alipay/android/phone/easybarcode/sdk/util/ResultStatus;

.field public static final enum UNSUPPORT_APP:Lcom/alipay/android/phone/easybarcode/sdk/util/ResultStatus;

.field public static final enum UNSUPPORT_MAIN_THREAD:Lcom/alipay/android/phone/easybarcode/sdk/util/ResultStatus;


# instance fields
.field private code:I

.field private memo:Ljava/lang/String;


# direct methods
.method static constructor <clinit>()V
    .locals 11

    new-instance v0, Lcom/alipay/android/phone/easybarcode/sdk/util/ResultStatus;

    const/4 v1, 0x0

    const-string v2, "SUCCESS_SCHEME"

    const/16 v3, 0x2328

    const-string v4, "\u5524\u8d77\u6210\u529f\uff0c\u57fa\u4e8escheme"

    invoke-direct {v0, v2, v1, v3, v4}, Lcom/alipay/android/phone/easybarcode/sdk/util/ResultStatus;-><init>(Ljava/lang/String;IILjava/lang/String;)V

    sput-object v0, Lcom/alipay/android/phone/easybarcode/sdk/util/ResultStatus;->SUCCESS_SCHEME:Lcom/alipay/android/phone/easybarcode/sdk/util/ResultStatus;

    new-instance v0, Lcom/alipay/android/phone/easybarcode/sdk/util/ResultStatus;

    const/4 v2, 0x1

    const-string v3, "SUCCESS_SERVICE"

    const/16 v4, 0x1f40

    const-string v5, "\u5524\u8d77\u6210\u529f\uff0c\u57fa\u4e8e\u670d\u52a1\u7ed1\u5b9a"

    invoke-direct {v0, v3, v2, v4, v5}, Lcom/alipay/android/phone/easybarcode/sdk/util/ResultStatus;-><init>(Ljava/lang/String;IILjava/lang/String;)V

    sput-object v0, Lcom/alipay/android/phone/easybarcode/sdk/util/ResultStatus;->SUCCESS_SERVICE:Lcom/alipay/android/phone/easybarcode/sdk/util/ResultStatus;

    new-instance v0, Lcom/alipay/android/phone/easybarcode/sdk/util/ResultStatus;

    const/4 v3, 0x2

    const-string v4, "NOT_INSTALL"

    const/16 v5, 0x1b58

    const-string v6, "\u94b1\u5305\u672a\u5b89\u88c5"

    invoke-direct {v0, v4, v3, v5, v6}, Lcom/alipay/android/phone/easybarcode/sdk/util/ResultStatus;-><init>(Ljava/lang/String;IILjava/lang/String;)V

    sput-object v0, Lcom/alipay/android/phone/easybarcode/sdk/util/ResultStatus;->NOT_INSTALL:Lcom/alipay/android/phone/easybarcode/sdk/util/ResultStatus;

    new-instance v0, Lcom/alipay/android/phone/easybarcode/sdk/util/ResultStatus;

    const/4 v4, 0x3

    const-string v5, "UNSUPPORT_APP"

    const/16 v6, 0x1770

    const-string v7, "\u6682\u672a\u652f\u6301\u7684\u5e94\u7528"

    invoke-direct {v0, v5, v4, v6, v7}, Lcom/alipay/android/phone/easybarcode/sdk/util/ResultStatus;-><init>(Ljava/lang/String;IILjava/lang/String;)V

    sput-object v0, Lcom/alipay/android/phone/easybarcode/sdk/util/ResultStatus;->UNSUPPORT_APP:Lcom/alipay/android/phone/easybarcode/sdk/util/ResultStatus;

    new-instance v0, Lcom/alipay/android/phone/easybarcode/sdk/util/ResultStatus;

    const/4 v5, 0x4

    const-string v6, "SYS_ERROR"

    const/16 v7, 0x1388

    const-string v8, "\u8fdb\u7a0b\u901a\u4fe1\u5f02\u5e38"

    invoke-direct {v0, v6, v5, v7, v8}, Lcom/alipay/android/phone/easybarcode/sdk/util/ResultStatus;-><init>(Ljava/lang/String;IILjava/lang/String;)V

    sput-object v0, Lcom/alipay/android/phone/easybarcode/sdk/util/ResultStatus;->SYS_ERROR:Lcom/alipay/android/phone/easybarcode/sdk/util/ResultStatus;

    new-instance v0, Lcom/alipay/android/phone/easybarcode/sdk/util/ResultStatus;

    const/4 v6, 0x5

    const-string v7, "FAKE"

    const/16 v8, 0xfa0

    const-string v9, "\u975e\u6b63\u5f0f\u94b1\u5305"

    invoke-direct {v0, v7, v6, v8, v9}, Lcom/alipay/android/phone/easybarcode/sdk/util/ResultStatus;-><init>(Ljava/lang/String;IILjava/lang/String;)V

    sput-object v0, Lcom/alipay/android/phone/easybarcode/sdk/util/ResultStatus;->FAKE:Lcom/alipay/android/phone/easybarcode/sdk/util/ResultStatus;

    new-instance v0, Lcom/alipay/android/phone/easybarcode/sdk/util/ResultStatus;

    const/4 v7, 0x6

    const-string v8, "UNSUPPORT_MAIN_THREAD"

    const/16 v9, 0xbb8

    const-string v10, "\u4e0d\u652f\u6301\u5728\u4e3b\u7ebf\u7a0b\u6267\u884c"

    invoke-direct {v0, v8, v7, v9, v10}, Lcom/alipay/android/phone/easybarcode/sdk/util/ResultStatus;-><init>(Ljava/lang/String;IILjava/lang/String;)V

    sput-object v0, Lcom/alipay/android/phone/easybarcode/sdk/util/ResultStatus;->UNSUPPORT_MAIN_THREAD:Lcom/alipay/android/phone/easybarcode/sdk/util/ResultStatus;

    const/4 v0, 0x7

    new-array v0, v0, [Lcom/alipay/android/phone/easybarcode/sdk/util/ResultStatus;

    sget-object v8, Lcom/alipay/android/phone/easybarcode/sdk/util/ResultStatus;->SUCCESS_SCHEME:Lcom/alipay/android/phone/easybarcode/sdk/util/ResultStatus;

    aput-object v8, v0, v1

    sget-object v1, Lcom/alipay/android/phone/easybarcode/sdk/util/ResultStatus;->SUCCESS_SERVICE:Lcom/alipay/android/phone/easybarcode/sdk/util/ResultStatus;

    aput-object v1, v0, v2

    sget-object v1, Lcom/alipay/android/phone/easybarcode/sdk/util/ResultStatus;->NOT_INSTALL:Lcom/alipay/android/phone/easybarcode/sdk/util/ResultStatus;

    aput-object v1, v0, v3

    sget-object v1, Lcom/alipay/android/phone/easybarcode/sdk/util/ResultStatus;->UNSUPPORT_APP:Lcom/alipay/android/phone/easybarcode/sdk/util/ResultStatus;

    aput-object v1, v0, v4

    sget-object v1, Lcom/alipay/android/phone/easybarcode/sdk/util/ResultStatus;->SYS_ERROR:Lcom/alipay/android/phone/easybarcode/sdk/util/ResultStatus;

    aput-object v1, v0, v5

    sget-object v1, Lcom/alipay/android/phone/easybarcode/sdk/util/ResultStatus;->FAKE:Lcom/alipay/android/phone/easybarcode/sdk/util/ResultStatus;

    aput-object v1, v0, v6

    sget-object v1, Lcom/alipay/android/phone/easybarcode/sdk/util/ResultStatus;->UNSUPPORT_MAIN_THREAD:Lcom/alipay/android/phone/easybarcode/sdk/util/ResultStatus;

    aput-object v1, v0, v7

    sput-object v0, Lcom/alipay/android/phone/easybarcode/sdk/util/ResultStatus;->$VALUES:[Lcom/alipay/android/phone/easybarcode/sdk/util/ResultStatus;

    return-void
.end method

.method private constructor <init>(Ljava/lang/String;IILjava/lang/String;)V
    .locals 0

    invoke-direct {p0, p1, p2}, Ljava/lang/Enum;-><init>(Ljava/lang/String;I)V

    iput p3, p0, Lcom/alipay/android/phone/easybarcode/sdk/util/ResultStatus;->code:I

    iput-object p4, p0, Lcom/alipay/android/phone/easybarcode/sdk/util/ResultStatus;->memo:Ljava/lang/String;

    return-void
.end method

.method public static valueOf(Ljava/lang/String;)Lcom/alipay/android/phone/easybarcode/sdk/util/ResultStatus;
    .locals 1

    const-class v0, Lcom/alipay/android/phone/easybarcode/sdk/util/ResultStatus;

    invoke-static {v0, p0}, Ljava/lang/Enum;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;

    move-result-object p0

    check-cast p0, Lcom/alipay/android/phone/easybarcode/sdk/util/ResultStatus;

    return-object p0
.end method

.method public static values()[Lcom/alipay/android/phone/easybarcode/sdk/util/ResultStatus;
    .locals 1

    sget-object v0, Lcom/alipay/android/phone/easybarcode/sdk/util/ResultStatus;->$VALUES:[Lcom/alipay/android/phone/easybarcode/sdk/util/ResultStatus;

    invoke-virtual {v0}, [Lcom/alipay/android/phone/easybarcode/sdk/util/ResultStatus;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Lcom/alipay/android/phone/easybarcode/sdk/util/ResultStatus;

    return-object v0
.end method


# virtual methods
.method public final getCode()I
    .locals 0

    iget p0, p0, Lcom/alipay/android/phone/easybarcode/sdk/util/ResultStatus;->code:I

    return p0
.end method

.method public final getMemo()Ljava/lang/String;
    .locals 0

    iget-object p0, p0, Lcom/alipay/android/phone/easybarcode/sdk/util/ResultStatus;->memo:Ljava/lang/String;

    return-object p0
.end method
