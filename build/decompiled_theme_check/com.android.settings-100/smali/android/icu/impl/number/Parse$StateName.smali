.class final enum Landroid/icu/impl/number/Parse$StateName;
.super Ljava/lang/Enum;
.source "Parse.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroid/icu/impl/number/Parse;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x401a
    name = "StateName"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Enum<",
        "Landroid/icu/impl/number/Parse$StateName;",
        ">;"
    }
.end annotation


# static fields
.field private static final synthetic $VALUES:[Landroid/icu/impl/number/Parse$StateName;

.field public static final enum AFTER_EXPONENT_DIGIT:Landroid/icu/impl/number/Parse$StateName;

.field public static final enum AFTER_EXPONENT_SEPARATOR:Landroid/icu/impl/number/Parse$StateName;

.field public static final enum AFTER_FRACTION_DIGIT:Landroid/icu/impl/number/Parse$StateName;

.field public static final enum AFTER_INTEGER_DIGIT:Landroid/icu/impl/number/Parse$StateName;

.field public static final enum AFTER_PREFIX:Landroid/icu/impl/number/Parse$StateName;

.field public static final enum AFTER_SUFFIX:Landroid/icu/impl/number/Parse$StateName;

.field public static final enum BEFORE_PREFIX:Landroid/icu/impl/number/Parse$StateName;

.field public static final enum BEFORE_SUFFIX:Landroid/icu/impl/number/Parse$StateName;

.field public static final enum BEFORE_SUFFIX_SEEN_EXPONENT:Landroid/icu/impl/number/Parse$StateName;

.field public static final enum INSIDE_AFFIX_PATTERN:Landroid/icu/impl/number/Parse$StateName;

.field public static final enum INSIDE_CURRENCY:Landroid/icu/impl/number/Parse$StateName;

.field public static final enum INSIDE_DIGIT:Landroid/icu/impl/number/Parse$StateName;

.field public static final enum INSIDE_STRING:Landroid/icu/impl/number/Parse$StateName;


# direct methods
.method static constructor <clinit>()V
    .locals 15

    .line 122
    new-instance v0, Landroid/icu/impl/number/Parse$StateName;

    const/4 v1, 0x0

    const-string v2, "BEFORE_PREFIX"

    invoke-direct {v0, v2, v1}, Landroid/icu/impl/number/Parse$StateName;-><init>(Ljava/lang/String;I)V

    sput-object v0, Landroid/icu/impl/number/Parse$StateName;->BEFORE_PREFIX:Landroid/icu/impl/number/Parse$StateName;

    .line 123
    new-instance v0, Landroid/icu/impl/number/Parse$StateName;

    const/4 v2, 0x1

    const-string v3, "AFTER_PREFIX"

    invoke-direct {v0, v3, v2}, Landroid/icu/impl/number/Parse$StateName;-><init>(Ljava/lang/String;I)V

    sput-object v0, Landroid/icu/impl/number/Parse$StateName;->AFTER_PREFIX:Landroid/icu/impl/number/Parse$StateName;

    .line 124
    new-instance v0, Landroid/icu/impl/number/Parse$StateName;

    const/4 v3, 0x2

    const-string v4, "AFTER_INTEGER_DIGIT"

    invoke-direct {v0, v4, v3}, Landroid/icu/impl/number/Parse$StateName;-><init>(Ljava/lang/String;I)V

    sput-object v0, Landroid/icu/impl/number/Parse$StateName;->AFTER_INTEGER_DIGIT:Landroid/icu/impl/number/Parse$StateName;

    .line 125
    new-instance v0, Landroid/icu/impl/number/Parse$StateName;

    const/4 v4, 0x3

    const-string v5, "AFTER_FRACTION_DIGIT"

    invoke-direct {v0, v5, v4}, Landroid/icu/impl/number/Parse$StateName;-><init>(Ljava/lang/String;I)V

    sput-object v0, Landroid/icu/impl/number/Parse$StateName;->AFTER_FRACTION_DIGIT:Landroid/icu/impl/number/Parse$StateName;

    .line 126
    new-instance v0, Landroid/icu/impl/number/Parse$StateName;

    const/4 v5, 0x4

    const-string v6, "AFTER_EXPONENT_SEPARATOR"

    invoke-direct {v0, v6, v5}, Landroid/icu/impl/number/Parse$StateName;-><init>(Ljava/lang/String;I)V

    sput-object v0, Landroid/icu/impl/number/Parse$StateName;->AFTER_EXPONENT_SEPARATOR:Landroid/icu/impl/number/Parse$StateName;

    .line 127
    new-instance v0, Landroid/icu/impl/number/Parse$StateName;

    const/4 v6, 0x5

    const-string v7, "AFTER_EXPONENT_DIGIT"

    invoke-direct {v0, v7, v6}, Landroid/icu/impl/number/Parse$StateName;-><init>(Ljava/lang/String;I)V

    sput-object v0, Landroid/icu/impl/number/Parse$StateName;->AFTER_EXPONENT_DIGIT:Landroid/icu/impl/number/Parse$StateName;

    .line 128
    new-instance v0, Landroid/icu/impl/number/Parse$StateName;

    const/4 v7, 0x6

    const-string v8, "BEFORE_SUFFIX"

    invoke-direct {v0, v8, v7}, Landroid/icu/impl/number/Parse$StateName;-><init>(Ljava/lang/String;I)V

    sput-object v0, Landroid/icu/impl/number/Parse$StateName;->BEFORE_SUFFIX:Landroid/icu/impl/number/Parse$StateName;

    .line 129
    new-instance v0, Landroid/icu/impl/number/Parse$StateName;

    const/4 v8, 0x7

    const-string v9, "BEFORE_SUFFIX_SEEN_EXPONENT"

    invoke-direct {v0, v9, v8}, Landroid/icu/impl/number/Parse$StateName;-><init>(Ljava/lang/String;I)V

    sput-object v0, Landroid/icu/impl/number/Parse$StateName;->BEFORE_SUFFIX_SEEN_EXPONENT:Landroid/icu/impl/number/Parse$StateName;

    .line 130
    new-instance v0, Landroid/icu/impl/number/Parse$StateName;

    const/16 v9, 0x8

    const-string v10, "AFTER_SUFFIX"

    invoke-direct {v0, v10, v9}, Landroid/icu/impl/number/Parse$StateName;-><init>(Ljava/lang/String;I)V

    sput-object v0, Landroid/icu/impl/number/Parse$StateName;->AFTER_SUFFIX:Landroid/icu/impl/number/Parse$StateName;

    .line 131
    new-instance v0, Landroid/icu/impl/number/Parse$StateName;

    const/16 v10, 0x9

    const-string v11, "INSIDE_CURRENCY"

    invoke-direct {v0, v11, v10}, Landroid/icu/impl/number/Parse$StateName;-><init>(Ljava/lang/String;I)V

    sput-object v0, Landroid/icu/impl/number/Parse$StateName;->INSIDE_CURRENCY:Landroid/icu/impl/number/Parse$StateName;

    .line 132
    new-instance v0, Landroid/icu/impl/number/Parse$StateName;

    const/16 v11, 0xa

    const-string v12, "INSIDE_DIGIT"

    invoke-direct {v0, v12, v11}, Landroid/icu/impl/number/Parse$StateName;-><init>(Ljava/lang/String;I)V

    sput-object v0, Landroid/icu/impl/number/Parse$StateName;->INSIDE_DIGIT:Landroid/icu/impl/number/Parse$StateName;

    .line 133
    new-instance v0, Landroid/icu/impl/number/Parse$StateName;

    const/16 v12, 0xb

    const-string v13, "INSIDE_STRING"

    invoke-direct {v0, v13, v12}, Landroid/icu/impl/number/Parse$StateName;-><init>(Ljava/lang/String;I)V

    sput-object v0, Landroid/icu/impl/number/Parse$StateName;->INSIDE_STRING:Landroid/icu/impl/number/Parse$StateName;

    .line 134
    new-instance v0, Landroid/icu/impl/number/Parse$StateName;

    const/16 v13, 0xc

    const-string v14, "INSIDE_AFFIX_PATTERN"

    invoke-direct {v0, v14, v13}, Landroid/icu/impl/number/Parse$StateName;-><init>(Ljava/lang/String;I)V

    sput-object v0, Landroid/icu/impl/number/Parse$StateName;->INSIDE_AFFIX_PATTERN:Landroid/icu/impl/number/Parse$StateName;

    const/16 v0, 0xd

    new-array v0, v0, [Landroid/icu/impl/number/Parse$StateName;

    .line 121
    sget-object v14, Landroid/icu/impl/number/Parse$StateName;->BEFORE_PREFIX:Landroid/icu/impl/number/Parse$StateName;

    aput-object v14, v0, v1

    sget-object v1, Landroid/icu/impl/number/Parse$StateName;->AFTER_PREFIX:Landroid/icu/impl/number/Parse$StateName;

    aput-object v1, v0, v2

    sget-object v1, Landroid/icu/impl/number/Parse$StateName;->AFTER_INTEGER_DIGIT:Landroid/icu/impl/number/Parse$StateName;

    aput-object v1, v0, v3

    sget-object v1, Landroid/icu/impl/number/Parse$StateName;->AFTER_FRACTION_DIGIT:Landroid/icu/impl/number/Parse$StateName;

    aput-object v1, v0, v4

    sget-object v1, Landroid/icu/impl/number/Parse$StateName;->AFTER_EXPONENT_SEPARATOR:Landroid/icu/impl/number/Parse$StateName;

    aput-object v1, v0, v5

    sget-object v1, Landroid/icu/impl/number/Parse$StateName;->AFTER_EXPONENT_DIGIT:Landroid/icu/impl/number/Parse$StateName;

    aput-object v1, v0, v6

    sget-object v1, Landroid/icu/impl/number/Parse$StateName;->BEFORE_SUFFIX:Landroid/icu/impl/number/Parse$StateName;

    aput-object v1, v0, v7

    sget-object v1, Landroid/icu/impl/number/Parse$StateName;->BEFORE_SUFFIX_SEEN_EXPONENT:Landroid/icu/impl/number/Parse$StateName;

    aput-object v1, v0, v8

    sget-object v1, Landroid/icu/impl/number/Parse$StateName;->AFTER_SUFFIX:Landroid/icu/impl/number/Parse$StateName;

    aput-object v1, v0, v9

    sget-object v1, Landroid/icu/impl/number/Parse$StateName;->INSIDE_CURRENCY:Landroid/icu/impl/number/Parse$StateName;

    aput-object v1, v0, v10

    sget-object v1, Landroid/icu/impl/number/Parse$StateName;->INSIDE_DIGIT:Landroid/icu/impl/number/Parse$StateName;

    aput-object v1, v0, v11

    sget-object v1, Landroid/icu/impl/number/Parse$StateName;->INSIDE_STRING:Landroid/icu/impl/number/Parse$StateName;

    aput-object v1, v0, v12

    sget-object v1, Landroid/icu/impl/number/Parse$StateName;->INSIDE_AFFIX_PATTERN:Landroid/icu/impl/number/Parse$StateName;

    aput-object v1, v0, v13

    sput-object v0, Landroid/icu/impl/number/Parse$StateName;->$VALUES:[Landroid/icu/impl/number/Parse$StateName;

    return-void
.end method

.method private constructor <init>(Ljava/lang/String;I)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()V"
        }
    .end annotation

    .line 121
    invoke-direct {p0, p1, p2}, Ljava/lang/Enum;-><init>(Ljava/lang/String;I)V

    return-void
.end method

.method public static valueOf(Ljava/lang/String;)Landroid/icu/impl/number/Parse$StateName;
    .locals 1

    .line 121
    const-class v0, Landroid/icu/impl/number/Parse$StateName;

    invoke-static {v0, p0}, Ljava/lang/Enum;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;

    move-result-object p0

    check-cast p0, Landroid/icu/impl/number/Parse$StateName;

    return-object p0
.end method

.method public static values()[Landroid/icu/impl/number/Parse$StateName;
    .locals 1

    .line 121
    sget-object v0, Landroid/icu/impl/number/Parse$StateName;->$VALUES:[Landroid/icu/impl/number/Parse$StateName;

    invoke-virtual {v0}, [Landroid/icu/impl/number/Parse$StateName;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Landroid/icu/impl/number/Parse$StateName;

    return-object v0
.end method
