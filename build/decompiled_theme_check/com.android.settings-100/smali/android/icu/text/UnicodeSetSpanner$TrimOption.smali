.class public final enum Landroid/icu/text/UnicodeSetSpanner$TrimOption;
.super Ljava/lang/Enum;
.source "UnicodeSetSpanner.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroid/icu/text/UnicodeSetSpanner;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x4019
    name = "TrimOption"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Enum<",
        "Landroid/icu/text/UnicodeSetSpanner$TrimOption;",
        ">;"
    }
.end annotation


# static fields
.field private static final synthetic $VALUES:[Landroid/icu/text/UnicodeSetSpanner$TrimOption;

.field public static final enum BOTH:Landroid/icu/text/UnicodeSetSpanner$TrimOption;

.field public static final enum LEADING:Landroid/icu/text/UnicodeSetSpanner$TrimOption;

.field public static final enum TRAILING:Landroid/icu/text/UnicodeSetSpanner$TrimOption;


# direct methods
.method static constructor <clinit>()V
    .locals 5

    .line 288
    new-instance v0, Landroid/icu/text/UnicodeSetSpanner$TrimOption;

    const/4 v1, 0x0

    const-string v2, "LEADING"

    invoke-direct {v0, v2, v1}, Landroid/icu/text/UnicodeSetSpanner$TrimOption;-><init>(Ljava/lang/String;I)V

    sput-object v0, Landroid/icu/text/UnicodeSetSpanner$TrimOption;->LEADING:Landroid/icu/text/UnicodeSetSpanner$TrimOption;

    .line 292
    new-instance v0, Landroid/icu/text/UnicodeSetSpanner$TrimOption;

    const/4 v2, 0x1

    const-string v3, "BOTH"

    invoke-direct {v0, v3, v2}, Landroid/icu/text/UnicodeSetSpanner$TrimOption;-><init>(Ljava/lang/String;I)V

    sput-object v0, Landroid/icu/text/UnicodeSetSpanner$TrimOption;->BOTH:Landroid/icu/text/UnicodeSetSpanner$TrimOption;

    .line 296
    new-instance v0, Landroid/icu/text/UnicodeSetSpanner$TrimOption;

    const/4 v3, 0x2

    const-string v4, "TRAILING"

    invoke-direct {v0, v4, v3}, Landroid/icu/text/UnicodeSetSpanner$TrimOption;-><init>(Ljava/lang/String;I)V

    sput-object v0, Landroid/icu/text/UnicodeSetSpanner$TrimOption;->TRAILING:Landroid/icu/text/UnicodeSetSpanner$TrimOption;

    const/4 v0, 0x3

    new-array v0, v0, [Landroid/icu/text/UnicodeSetSpanner$TrimOption;

    .line 284
    sget-object v4, Landroid/icu/text/UnicodeSetSpanner$TrimOption;->LEADING:Landroid/icu/text/UnicodeSetSpanner$TrimOption;

    aput-object v4, v0, v1

    sget-object v1, Landroid/icu/text/UnicodeSetSpanner$TrimOption;->BOTH:Landroid/icu/text/UnicodeSetSpanner$TrimOption;

    aput-object v1, v0, v2

    sget-object v1, Landroid/icu/text/UnicodeSetSpanner$TrimOption;->TRAILING:Landroid/icu/text/UnicodeSetSpanner$TrimOption;

    aput-object v1, v0, v3

    sput-object v0, Landroid/icu/text/UnicodeSetSpanner$TrimOption;->$VALUES:[Landroid/icu/text/UnicodeSetSpanner$TrimOption;

    return-void
.end method

.method private constructor <init>(Ljava/lang/String;I)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()V"
        }
    .end annotation

    .line 284
    invoke-direct {p0, p1, p2}, Ljava/lang/Enum;-><init>(Ljava/lang/String;I)V

    return-void
.end method

.method public static valueOf(Ljava/lang/String;)Landroid/icu/text/UnicodeSetSpanner$TrimOption;
    .locals 1

    .line 284
    const-class v0, Landroid/icu/text/UnicodeSetSpanner$TrimOption;

    invoke-static {v0, p0}, Ljava/lang/Enum;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;

    move-result-object p0

    check-cast p0, Landroid/icu/text/UnicodeSetSpanner$TrimOption;

    return-object p0
.end method

.method public static values()[Landroid/icu/text/UnicodeSetSpanner$TrimOption;
    .locals 1

    .line 284
    sget-object v0, Landroid/icu/text/UnicodeSetSpanner$TrimOption;->$VALUES:[Landroid/icu/text/UnicodeSetSpanner$TrimOption;

    invoke-virtual {v0}, [Landroid/icu/text/UnicodeSetSpanner$TrimOption;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Landroid/icu/text/UnicodeSetSpanner$TrimOption;

    return-object v0
.end method
