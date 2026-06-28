.class final enum Landroid/icu/impl/number/Parse$SeparatorType;
.super Ljava/lang/Enum;
.source "Parse.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroid/icu/impl/number/Parse;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x401a
    name = "SeparatorType"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Enum<",
        "Landroid/icu/impl/number/Parse$SeparatorType;",
        ">;"
    }
.end annotation


# static fields
.field private static final synthetic $VALUES:[Landroid/icu/impl/number/Parse$SeparatorType;

.field public static final enum COMMA_LIKE:Landroid/icu/impl/number/Parse$SeparatorType;

.field public static final enum OTHER_GROUPING:Landroid/icu/impl/number/Parse$SeparatorType;

.field public static final enum PERIOD_LIKE:Landroid/icu/impl/number/Parse$SeparatorType;

.field public static final enum UNKNOWN:Landroid/icu/impl/number/Parse$SeparatorType;


# direct methods
.method static constructor <clinit>()V
    .locals 6

    .line 165
    new-instance v0, Landroid/icu/impl/number/Parse$SeparatorType;

    const/4 v1, 0x0

    const-string v2, "COMMA_LIKE"

    invoke-direct {v0, v2, v1}, Landroid/icu/impl/number/Parse$SeparatorType;-><init>(Ljava/lang/String;I)V

    sput-object v0, Landroid/icu/impl/number/Parse$SeparatorType;->COMMA_LIKE:Landroid/icu/impl/number/Parse$SeparatorType;

    .line 166
    new-instance v0, Landroid/icu/impl/number/Parse$SeparatorType;

    const/4 v2, 0x1

    const-string v3, "PERIOD_LIKE"

    invoke-direct {v0, v3, v2}, Landroid/icu/impl/number/Parse$SeparatorType;-><init>(Ljava/lang/String;I)V

    sput-object v0, Landroid/icu/impl/number/Parse$SeparatorType;->PERIOD_LIKE:Landroid/icu/impl/number/Parse$SeparatorType;

    .line 167
    new-instance v0, Landroid/icu/impl/number/Parse$SeparatorType;

    const/4 v3, 0x2

    const-string v4, "OTHER_GROUPING"

    invoke-direct {v0, v4, v3}, Landroid/icu/impl/number/Parse$SeparatorType;-><init>(Ljava/lang/String;I)V

    sput-object v0, Landroid/icu/impl/number/Parse$SeparatorType;->OTHER_GROUPING:Landroid/icu/impl/number/Parse$SeparatorType;

    .line 168
    new-instance v0, Landroid/icu/impl/number/Parse$SeparatorType;

    const/4 v4, 0x3

    const-string v5, "UNKNOWN"

    invoke-direct {v0, v5, v4}, Landroid/icu/impl/number/Parse$SeparatorType;-><init>(Ljava/lang/String;I)V

    sput-object v0, Landroid/icu/impl/number/Parse$SeparatorType;->UNKNOWN:Landroid/icu/impl/number/Parse$SeparatorType;

    const/4 v0, 0x4

    new-array v0, v0, [Landroid/icu/impl/number/Parse$SeparatorType;

    .line 164
    sget-object v5, Landroid/icu/impl/number/Parse$SeparatorType;->COMMA_LIKE:Landroid/icu/impl/number/Parse$SeparatorType;

    aput-object v5, v0, v1

    sget-object v1, Landroid/icu/impl/number/Parse$SeparatorType;->PERIOD_LIKE:Landroid/icu/impl/number/Parse$SeparatorType;

    aput-object v1, v0, v2

    sget-object v1, Landroid/icu/impl/number/Parse$SeparatorType;->OTHER_GROUPING:Landroid/icu/impl/number/Parse$SeparatorType;

    aput-object v1, v0, v3

    sget-object v1, Landroid/icu/impl/number/Parse$SeparatorType;->UNKNOWN:Landroid/icu/impl/number/Parse$SeparatorType;

    aput-object v1, v0, v4

    sput-object v0, Landroid/icu/impl/number/Parse$SeparatorType;->$VALUES:[Landroid/icu/impl/number/Parse$SeparatorType;

    return-void
.end method

.method private constructor <init>(Ljava/lang/String;I)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()V"
        }
    .end annotation

    .line 164
    invoke-direct {p0, p1, p2}, Ljava/lang/Enum;-><init>(Ljava/lang/String;I)V

    return-void
.end method

.method static fromCp(ILandroid/icu/impl/number/Parse$ParseMode;)Landroid/icu/impl/number/Parse$SeparatorType;
    .locals 1

    .line 171
    sget-object v0, Landroid/icu/impl/number/Parse$ParseMode;->FAST:Landroid/icu/impl/number/Parse$ParseMode;

    if-ne p1, v0, :cond_0

    .line 172
    sget-object p0, Landroid/icu/impl/number/Parse$SeparatorType;->UNKNOWN:Landroid/icu/impl/number/Parse$SeparatorType;

    return-object p0

    .line 173
    :cond_0
    sget-object v0, Landroid/icu/impl/number/Parse$ParseMode;->STRICT:Landroid/icu/impl/number/Parse$ParseMode;

    if-ne p1, v0, :cond_4

    .line 174
    invoke-static {}, Landroid/icu/impl/number/Parse;->access$000()Landroid/icu/text/UnicodeSet;

    move-result-object p1

    invoke-virtual {p1, p0}, Landroid/icu/text/UnicodeSet;->contains(I)Z

    move-result p1

    if-eqz p1, :cond_1

    sget-object p0, Landroid/icu/impl/number/Parse$SeparatorType;->COMMA_LIKE:Landroid/icu/impl/number/Parse$SeparatorType;

    return-object p0

    .line 175
    :cond_1
    invoke-static {}, Landroid/icu/impl/number/Parse;->access$100()Landroid/icu/text/UnicodeSet;

    move-result-object p1

    invoke-virtual {p1, p0}, Landroid/icu/text/UnicodeSet;->contains(I)Z

    move-result p1

    if-eqz p1, :cond_2

    sget-object p0, Landroid/icu/impl/number/Parse$SeparatorType;->PERIOD_LIKE:Landroid/icu/impl/number/Parse$SeparatorType;

    return-object p0

    .line 176
    :cond_2
    invoke-static {}, Landroid/icu/impl/number/Parse;->access$200()Landroid/icu/text/UnicodeSet;

    move-result-object p1

    invoke-virtual {p1, p0}, Landroid/icu/text/UnicodeSet;->contains(I)Z

    move-result p0

    if-eqz p0, :cond_3

    sget-object p0, Landroid/icu/impl/number/Parse$SeparatorType;->OTHER_GROUPING:Landroid/icu/impl/number/Parse$SeparatorType;

    return-object p0

    .line 177
    :cond_3
    sget-object p0, Landroid/icu/impl/number/Parse$SeparatorType;->UNKNOWN:Landroid/icu/impl/number/Parse$SeparatorType;

    return-object p0

    .line 179
    :cond_4
    invoke-static {}, Landroid/icu/impl/number/Parse;->access$300()Landroid/icu/text/UnicodeSet;

    move-result-object p1

    invoke-virtual {p1, p0}, Landroid/icu/text/UnicodeSet;->contains(I)Z

    move-result p1

    if-eqz p1, :cond_5

    sget-object p0, Landroid/icu/impl/number/Parse$SeparatorType;->COMMA_LIKE:Landroid/icu/impl/number/Parse$SeparatorType;

    return-object p0

    .line 180
    :cond_5
    invoke-static {}, Landroid/icu/impl/number/Parse;->access$400()Landroid/icu/text/UnicodeSet;

    move-result-object p1

    invoke-virtual {p1, p0}, Landroid/icu/text/UnicodeSet;->contains(I)Z

    move-result p1

    if-eqz p1, :cond_6

    sget-object p0, Landroid/icu/impl/number/Parse$SeparatorType;->PERIOD_LIKE:Landroid/icu/impl/number/Parse$SeparatorType;

    return-object p0

    .line 181
    :cond_6
    invoke-static {}, Landroid/icu/impl/number/Parse;->access$200()Landroid/icu/text/UnicodeSet;

    move-result-object p1

    invoke-virtual {p1, p0}, Landroid/icu/text/UnicodeSet;->contains(I)Z

    move-result p0

    if-eqz p0, :cond_7

    sget-object p0, Landroid/icu/impl/number/Parse$SeparatorType;->OTHER_GROUPING:Landroid/icu/impl/number/Parse$SeparatorType;

    return-object p0

    .line 182
    :cond_7
    sget-object p0, Landroid/icu/impl/number/Parse$SeparatorType;->UNKNOWN:Landroid/icu/impl/number/Parse$SeparatorType;

    return-object p0
.end method

.method public static valueOf(Ljava/lang/String;)Landroid/icu/impl/number/Parse$SeparatorType;
    .locals 1

    .line 164
    const-class v0, Landroid/icu/impl/number/Parse$SeparatorType;

    invoke-static {v0, p0}, Ljava/lang/Enum;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;

    move-result-object p0

    check-cast p0, Landroid/icu/impl/number/Parse$SeparatorType;

    return-object p0
.end method

.method public static values()[Landroid/icu/impl/number/Parse$SeparatorType;
    .locals 1

    .line 164
    sget-object v0, Landroid/icu/impl/number/Parse$SeparatorType;->$VALUES:[Landroid/icu/impl/number/Parse$SeparatorType;

    invoke-virtual {v0}, [Landroid/icu/impl/number/Parse$SeparatorType;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Landroid/icu/impl/number/Parse$SeparatorType;

    return-object v0
.end method
