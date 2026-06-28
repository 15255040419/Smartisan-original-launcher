.class public final enum Landroid/icu/text/DateFormat$BooleanAttribute;
.super Ljava/lang/Enum;
.source "DateFormat.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroid/icu/text/DateFormat;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x4019
    name = "BooleanAttribute"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Enum<",
        "Landroid/icu/text/DateFormat$BooleanAttribute;",
        ">;"
    }
.end annotation


# static fields
.field private static final synthetic $VALUES:[Landroid/icu/text/DateFormat$BooleanAttribute;

.field public static final enum PARSE_ALLOW_NUMERIC:Landroid/icu/text/DateFormat$BooleanAttribute;

.field public static final enum PARSE_ALLOW_WHITESPACE:Landroid/icu/text/DateFormat$BooleanAttribute;

.field public static final enum PARSE_MULTIPLE_PATTERNS_FOR_MATCH:Landroid/icu/text/DateFormat$BooleanAttribute;

.field public static final enum PARSE_PARTIAL_LITERAL_MATCH:Landroid/icu/text/DateFormat$BooleanAttribute;

.field public static final enum PARSE_PARTIAL_MATCH:Landroid/icu/text/DateFormat$BooleanAttribute;
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation
.end field


# direct methods
.method static constructor <clinit>()V
    .locals 7

    .line 464
    new-instance v0, Landroid/icu/text/DateFormat$BooleanAttribute;

    const/4 v1, 0x0

    const-string v2, "PARSE_ALLOW_WHITESPACE"

    invoke-direct {v0, v2, v1}, Landroid/icu/text/DateFormat$BooleanAttribute;-><init>(Ljava/lang/String;I)V

    sput-object v0, Landroid/icu/text/DateFormat$BooleanAttribute;->PARSE_ALLOW_WHITESPACE:Landroid/icu/text/DateFormat$BooleanAttribute;

    .line 469
    new-instance v0, Landroid/icu/text/DateFormat$BooleanAttribute;

    const/4 v2, 0x1

    const-string v3, "PARSE_ALLOW_NUMERIC"

    invoke-direct {v0, v3, v2}, Landroid/icu/text/DateFormat$BooleanAttribute;-><init>(Ljava/lang/String;I)V

    sput-object v0, Landroid/icu/text/DateFormat$BooleanAttribute;->PARSE_ALLOW_NUMERIC:Landroid/icu/text/DateFormat$BooleanAttribute;

    .line 474
    new-instance v0, Landroid/icu/text/DateFormat$BooleanAttribute;

    const/4 v3, 0x2

    const-string v4, "PARSE_MULTIPLE_PATTERNS_FOR_MATCH"

    invoke-direct {v0, v4, v3}, Landroid/icu/text/DateFormat$BooleanAttribute;-><init>(Ljava/lang/String;I)V

    sput-object v0, Landroid/icu/text/DateFormat$BooleanAttribute;->PARSE_MULTIPLE_PATTERNS_FOR_MATCH:Landroid/icu/text/DateFormat$BooleanAttribute;

    .line 479
    new-instance v0, Landroid/icu/text/DateFormat$BooleanAttribute;

    const/4 v4, 0x3

    const-string v5, "PARSE_PARTIAL_LITERAL_MATCH"

    invoke-direct {v0, v5, v4}, Landroid/icu/text/DateFormat$BooleanAttribute;-><init>(Ljava/lang/String;I)V

    sput-object v0, Landroid/icu/text/DateFormat$BooleanAttribute;->PARSE_PARTIAL_LITERAL_MATCH:Landroid/icu/text/DateFormat$BooleanAttribute;

    .line 485
    new-instance v0, Landroid/icu/text/DateFormat$BooleanAttribute;

    const/4 v5, 0x4

    const-string v6, "PARSE_PARTIAL_MATCH"

    invoke-direct {v0, v6, v5}, Landroid/icu/text/DateFormat$BooleanAttribute;-><init>(Ljava/lang/String;I)V

    sput-object v0, Landroid/icu/text/DateFormat$BooleanAttribute;->PARSE_PARTIAL_MATCH:Landroid/icu/text/DateFormat$BooleanAttribute;

    const/4 v0, 0x5

    new-array v0, v0, [Landroid/icu/text/DateFormat$BooleanAttribute;

    .line 460
    sget-object v6, Landroid/icu/text/DateFormat$BooleanAttribute;->PARSE_ALLOW_WHITESPACE:Landroid/icu/text/DateFormat$BooleanAttribute;

    aput-object v6, v0, v1

    sget-object v1, Landroid/icu/text/DateFormat$BooleanAttribute;->PARSE_ALLOW_NUMERIC:Landroid/icu/text/DateFormat$BooleanAttribute;

    aput-object v1, v0, v2

    sget-object v1, Landroid/icu/text/DateFormat$BooleanAttribute;->PARSE_MULTIPLE_PATTERNS_FOR_MATCH:Landroid/icu/text/DateFormat$BooleanAttribute;

    aput-object v1, v0, v3

    sget-object v1, Landroid/icu/text/DateFormat$BooleanAttribute;->PARSE_PARTIAL_LITERAL_MATCH:Landroid/icu/text/DateFormat$BooleanAttribute;

    aput-object v1, v0, v4

    sget-object v1, Landroid/icu/text/DateFormat$BooleanAttribute;->PARSE_PARTIAL_MATCH:Landroid/icu/text/DateFormat$BooleanAttribute;

    aput-object v1, v0, v5

    sput-object v0, Landroid/icu/text/DateFormat$BooleanAttribute;->$VALUES:[Landroid/icu/text/DateFormat$BooleanAttribute;

    return-void
.end method

.method private constructor <init>(Ljava/lang/String;I)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()V"
        }
    .end annotation

    .line 460
    invoke-direct {p0, p1, p2}, Ljava/lang/Enum;-><init>(Ljava/lang/String;I)V

    return-void
.end method

.method public static valueOf(Ljava/lang/String;)Landroid/icu/text/DateFormat$BooleanAttribute;
    .locals 1

    .line 460
    const-class v0, Landroid/icu/text/DateFormat$BooleanAttribute;

    invoke-static {v0, p0}, Ljava/lang/Enum;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;

    move-result-object p0

    check-cast p0, Landroid/icu/text/DateFormat$BooleanAttribute;

    return-object p0
.end method

.method public static values()[Landroid/icu/text/DateFormat$BooleanAttribute;
    .locals 1

    .line 460
    sget-object v0, Landroid/icu/text/DateFormat$BooleanAttribute;->$VALUES:[Landroid/icu/text/DateFormat$BooleanAttribute;

    invoke-virtual {v0}, [Landroid/icu/text/DateFormat$BooleanAttribute;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Landroid/icu/text/DateFormat$BooleanAttribute;

    return-object v0
.end method
