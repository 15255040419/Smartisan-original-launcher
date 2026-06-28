.class public final enum Landroid/icu/text/IDNA$Error;
.super Ljava/lang/Enum;
.source "IDNA.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroid/icu/text/IDNA;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x4019
    name = "Error"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Enum<",
        "Landroid/icu/text/IDNA$Error;",
        ">;"
    }
.end annotation


# static fields
.field private static final synthetic $VALUES:[Landroid/icu/text/IDNA$Error;

.field public static final enum BIDI:Landroid/icu/text/IDNA$Error;

.field public static final enum CONTEXTJ:Landroid/icu/text/IDNA$Error;

.field public static final enum CONTEXTO_DIGITS:Landroid/icu/text/IDNA$Error;

.field public static final enum CONTEXTO_PUNCTUATION:Landroid/icu/text/IDNA$Error;

.field public static final enum DISALLOWED:Landroid/icu/text/IDNA$Error;

.field public static final enum DOMAIN_NAME_TOO_LONG:Landroid/icu/text/IDNA$Error;

.field public static final enum EMPTY_LABEL:Landroid/icu/text/IDNA$Error;

.field public static final enum HYPHEN_3_4:Landroid/icu/text/IDNA$Error;

.field public static final enum INVALID_ACE_LABEL:Landroid/icu/text/IDNA$Error;

.field public static final enum LABEL_HAS_DOT:Landroid/icu/text/IDNA$Error;

.field public static final enum LABEL_TOO_LONG:Landroid/icu/text/IDNA$Error;

.field public static final enum LEADING_COMBINING_MARK:Landroid/icu/text/IDNA$Error;

.field public static final enum LEADING_HYPHEN:Landroid/icu/text/IDNA$Error;

.field public static final enum PUNYCODE:Landroid/icu/text/IDNA$Error;

.field public static final enum TRAILING_HYPHEN:Landroid/icu/text/IDNA$Error;


# direct methods
.method static constructor <clinit>()V
    .locals 16

    .line 369
    new-instance v0, Landroid/icu/text/IDNA$Error;

    const/4 v1, 0x0

    const-string v2, "EMPTY_LABEL"

    invoke-direct {v0, v2, v1}, Landroid/icu/text/IDNA$Error;-><init>(Ljava/lang/String;I)V

    sput-object v0, Landroid/icu/text/IDNA$Error;->EMPTY_LABEL:Landroid/icu/text/IDNA$Error;

    .line 375
    new-instance v0, Landroid/icu/text/IDNA$Error;

    const/4 v2, 0x1

    const-string v3, "LABEL_TOO_LONG"

    invoke-direct {v0, v3, v2}, Landroid/icu/text/IDNA$Error;-><init>(Ljava/lang/String;I)V

    sput-object v0, Landroid/icu/text/IDNA$Error;->LABEL_TOO_LONG:Landroid/icu/text/IDNA$Error;

    .line 381
    new-instance v0, Landroid/icu/text/IDNA$Error;

    const/4 v3, 0x2

    const-string v4, "DOMAIN_NAME_TOO_LONG"

    invoke-direct {v0, v4, v3}, Landroid/icu/text/IDNA$Error;-><init>(Ljava/lang/String;I)V

    sput-object v0, Landroid/icu/text/IDNA$Error;->DOMAIN_NAME_TOO_LONG:Landroid/icu/text/IDNA$Error;

    .line 385
    new-instance v0, Landroid/icu/text/IDNA$Error;

    const/4 v4, 0x3

    const-string v5, "LEADING_HYPHEN"

    invoke-direct {v0, v5, v4}, Landroid/icu/text/IDNA$Error;-><init>(Ljava/lang/String;I)V

    sput-object v0, Landroid/icu/text/IDNA$Error;->LEADING_HYPHEN:Landroid/icu/text/IDNA$Error;

    .line 389
    new-instance v0, Landroid/icu/text/IDNA$Error;

    const/4 v5, 0x4

    const-string v6, "TRAILING_HYPHEN"

    invoke-direct {v0, v6, v5}, Landroid/icu/text/IDNA$Error;-><init>(Ljava/lang/String;I)V

    sput-object v0, Landroid/icu/text/IDNA$Error;->TRAILING_HYPHEN:Landroid/icu/text/IDNA$Error;

    .line 393
    new-instance v0, Landroid/icu/text/IDNA$Error;

    const/4 v6, 0x5

    const-string v7, "HYPHEN_3_4"

    invoke-direct {v0, v7, v6}, Landroid/icu/text/IDNA$Error;-><init>(Ljava/lang/String;I)V

    sput-object v0, Landroid/icu/text/IDNA$Error;->HYPHEN_3_4:Landroid/icu/text/IDNA$Error;

    .line 397
    new-instance v0, Landroid/icu/text/IDNA$Error;

    const/4 v7, 0x6

    const-string v8, "LEADING_COMBINING_MARK"

    invoke-direct {v0, v8, v7}, Landroid/icu/text/IDNA$Error;-><init>(Ljava/lang/String;I)V

    sput-object v0, Landroid/icu/text/IDNA$Error;->LEADING_COMBINING_MARK:Landroid/icu/text/IDNA$Error;

    .line 401
    new-instance v0, Landroid/icu/text/IDNA$Error;

    const/4 v8, 0x7

    const-string v9, "DISALLOWED"

    invoke-direct {v0, v9, v8}, Landroid/icu/text/IDNA$Error;-><init>(Ljava/lang/String;I)V

    sput-object v0, Landroid/icu/text/IDNA$Error;->DISALLOWED:Landroid/icu/text/IDNA$Error;

    .line 406
    new-instance v0, Landroid/icu/text/IDNA$Error;

    const/16 v9, 0x8

    const-string v10, "PUNYCODE"

    invoke-direct {v0, v10, v9}, Landroid/icu/text/IDNA$Error;-><init>(Ljava/lang/String;I)V

    sput-object v0, Landroid/icu/text/IDNA$Error;->PUNYCODE:Landroid/icu/text/IDNA$Error;

    .line 411
    new-instance v0, Landroid/icu/text/IDNA$Error;

    const/16 v10, 0x9

    const-string v11, "LABEL_HAS_DOT"

    invoke-direct {v0, v11, v10}, Landroid/icu/text/IDNA$Error;-><init>(Ljava/lang/String;I)V

    sput-object v0, Landroid/icu/text/IDNA$Error;->LABEL_HAS_DOT:Landroid/icu/text/IDNA$Error;

    .line 419
    new-instance v0, Landroid/icu/text/IDNA$Error;

    const/16 v11, 0xa

    const-string v12, "INVALID_ACE_LABEL"

    invoke-direct {v0, v12, v11}, Landroid/icu/text/IDNA$Error;-><init>(Ljava/lang/String;I)V

    sput-object v0, Landroid/icu/text/IDNA$Error;->INVALID_ACE_LABEL:Landroid/icu/text/IDNA$Error;

    .line 423
    new-instance v0, Landroid/icu/text/IDNA$Error;

    const/16 v12, 0xb

    const-string v13, "BIDI"

    invoke-direct {v0, v13, v12}, Landroid/icu/text/IDNA$Error;-><init>(Ljava/lang/String;I)V

    sput-object v0, Landroid/icu/text/IDNA$Error;->BIDI:Landroid/icu/text/IDNA$Error;

    .line 427
    new-instance v0, Landroid/icu/text/IDNA$Error;

    const/16 v13, 0xc

    const-string v14, "CONTEXTJ"

    invoke-direct {v0, v14, v13}, Landroid/icu/text/IDNA$Error;-><init>(Ljava/lang/String;I)V

    sput-object v0, Landroid/icu/text/IDNA$Error;->CONTEXTJ:Landroid/icu/text/IDNA$Error;

    .line 433
    new-instance v0, Landroid/icu/text/IDNA$Error;

    const/16 v14, 0xd

    const-string v15, "CONTEXTO_PUNCTUATION"

    invoke-direct {v0, v15, v14}, Landroid/icu/text/IDNA$Error;-><init>(Ljava/lang/String;I)V

    sput-object v0, Landroid/icu/text/IDNA$Error;->CONTEXTO_PUNCTUATION:Landroid/icu/text/IDNA$Error;

    .line 438
    new-instance v0, Landroid/icu/text/IDNA$Error;

    const/16 v15, 0xe

    const-string v14, "CONTEXTO_DIGITS"

    invoke-direct {v0, v14, v15}, Landroid/icu/text/IDNA$Error;-><init>(Ljava/lang/String;I)V

    sput-object v0, Landroid/icu/text/IDNA$Error;->CONTEXTO_DIGITS:Landroid/icu/text/IDNA$Error;

    const/16 v0, 0xf

    new-array v0, v0, [Landroid/icu/text/IDNA$Error;

    .line 365
    sget-object v14, Landroid/icu/text/IDNA$Error;->EMPTY_LABEL:Landroid/icu/text/IDNA$Error;

    aput-object v14, v0, v1

    sget-object v1, Landroid/icu/text/IDNA$Error;->LABEL_TOO_LONG:Landroid/icu/text/IDNA$Error;

    aput-object v1, v0, v2

    sget-object v1, Landroid/icu/text/IDNA$Error;->DOMAIN_NAME_TOO_LONG:Landroid/icu/text/IDNA$Error;

    aput-object v1, v0, v3

    sget-object v1, Landroid/icu/text/IDNA$Error;->LEADING_HYPHEN:Landroid/icu/text/IDNA$Error;

    aput-object v1, v0, v4

    sget-object v1, Landroid/icu/text/IDNA$Error;->TRAILING_HYPHEN:Landroid/icu/text/IDNA$Error;

    aput-object v1, v0, v5

    sget-object v1, Landroid/icu/text/IDNA$Error;->HYPHEN_3_4:Landroid/icu/text/IDNA$Error;

    aput-object v1, v0, v6

    sget-object v1, Landroid/icu/text/IDNA$Error;->LEADING_COMBINING_MARK:Landroid/icu/text/IDNA$Error;

    aput-object v1, v0, v7

    sget-object v1, Landroid/icu/text/IDNA$Error;->DISALLOWED:Landroid/icu/text/IDNA$Error;

    aput-object v1, v0, v8

    sget-object v1, Landroid/icu/text/IDNA$Error;->PUNYCODE:Landroid/icu/text/IDNA$Error;

    aput-object v1, v0, v9

    sget-object v1, Landroid/icu/text/IDNA$Error;->LABEL_HAS_DOT:Landroid/icu/text/IDNA$Error;

    aput-object v1, v0, v10

    sget-object v1, Landroid/icu/text/IDNA$Error;->INVALID_ACE_LABEL:Landroid/icu/text/IDNA$Error;

    aput-object v1, v0, v11

    sget-object v1, Landroid/icu/text/IDNA$Error;->BIDI:Landroid/icu/text/IDNA$Error;

    aput-object v1, v0, v12

    sget-object v1, Landroid/icu/text/IDNA$Error;->CONTEXTJ:Landroid/icu/text/IDNA$Error;

    aput-object v1, v0, v13

    sget-object v1, Landroid/icu/text/IDNA$Error;->CONTEXTO_PUNCTUATION:Landroid/icu/text/IDNA$Error;

    const/16 v2, 0xd

    aput-object v1, v0, v2

    sget-object v1, Landroid/icu/text/IDNA$Error;->CONTEXTO_DIGITS:Landroid/icu/text/IDNA$Error;

    aput-object v1, v0, v15

    sput-object v0, Landroid/icu/text/IDNA$Error;->$VALUES:[Landroid/icu/text/IDNA$Error;

    return-void
.end method

.method private constructor <init>(Ljava/lang/String;I)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()V"
        }
    .end annotation

    .line 365
    invoke-direct {p0, p1, p2}, Ljava/lang/Enum;-><init>(Ljava/lang/String;I)V

    return-void
.end method

.method public static valueOf(Ljava/lang/String;)Landroid/icu/text/IDNA$Error;
    .locals 1

    .line 365
    const-class v0, Landroid/icu/text/IDNA$Error;

    invoke-static {v0, p0}, Ljava/lang/Enum;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;

    move-result-object p0

    check-cast p0, Landroid/icu/text/IDNA$Error;

    return-object p0
.end method

.method public static values()[Landroid/icu/text/IDNA$Error;
    .locals 1

    .line 365
    sget-object v0, Landroid/icu/text/IDNA$Error;->$VALUES:[Landroid/icu/text/IDNA$Error;

    invoke-virtual {v0}, [Landroid/icu/text/IDNA$Error;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Landroid/icu/text/IDNA$Error;

    return-object v0
.end method
