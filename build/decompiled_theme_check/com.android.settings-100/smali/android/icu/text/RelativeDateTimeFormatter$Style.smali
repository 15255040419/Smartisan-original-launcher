.class public final enum Landroid/icu/text/RelativeDateTimeFormatter$Style;
.super Ljava/lang/Enum;
.source "RelativeDateTimeFormatter.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroid/icu/text/RelativeDateTimeFormatter;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x4019
    name = "Style"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Enum<",
        "Landroid/icu/text/RelativeDateTimeFormatter$Style;",
        ">;"
    }
.end annotation


# static fields
.field private static final synthetic $VALUES:[Landroid/icu/text/RelativeDateTimeFormatter$Style;

.field private static final INDEX_COUNT:I = 0x3

.field public static final enum LONG:Landroid/icu/text/RelativeDateTimeFormatter$Style;

.field public static final enum NARROW:Landroid/icu/text/RelativeDateTimeFormatter$Style;

.field public static final enum SHORT:Landroid/icu/text/RelativeDateTimeFormatter$Style;


# direct methods
.method static constructor <clinit>()V
    .locals 5

    .line 85
    new-instance v0, Landroid/icu/text/RelativeDateTimeFormatter$Style;

    const/4 v1, 0x0

    const-string v2, "LONG"

    invoke-direct {v0, v2, v1}, Landroid/icu/text/RelativeDateTimeFormatter$Style;-><init>(Ljava/lang/String;I)V

    sput-object v0, Landroid/icu/text/RelativeDateTimeFormatter$Style;->LONG:Landroid/icu/text/RelativeDateTimeFormatter$Style;

    .line 90
    new-instance v0, Landroid/icu/text/RelativeDateTimeFormatter$Style;

    const/4 v2, 0x1

    const-string v3, "SHORT"

    invoke-direct {v0, v3, v2}, Landroid/icu/text/RelativeDateTimeFormatter$Style;-><init>(Ljava/lang/String;I)V

    sput-object v0, Landroid/icu/text/RelativeDateTimeFormatter$Style;->SHORT:Landroid/icu/text/RelativeDateTimeFormatter$Style;

    .line 95
    new-instance v0, Landroid/icu/text/RelativeDateTimeFormatter$Style;

    const/4 v3, 0x2

    const-string v4, "NARROW"

    invoke-direct {v0, v4, v3}, Landroid/icu/text/RelativeDateTimeFormatter$Style;-><init>(Ljava/lang/String;I)V

    sput-object v0, Landroid/icu/text/RelativeDateTimeFormatter$Style;->NARROW:Landroid/icu/text/RelativeDateTimeFormatter$Style;

    const/4 v0, 0x3

    new-array v0, v0, [Landroid/icu/text/RelativeDateTimeFormatter$Style;

    .line 80
    sget-object v4, Landroid/icu/text/RelativeDateTimeFormatter$Style;->LONG:Landroid/icu/text/RelativeDateTimeFormatter$Style;

    aput-object v4, v0, v1

    sget-object v1, Landroid/icu/text/RelativeDateTimeFormatter$Style;->SHORT:Landroid/icu/text/RelativeDateTimeFormatter$Style;

    aput-object v1, v0, v2

    sget-object v1, Landroid/icu/text/RelativeDateTimeFormatter$Style;->NARROW:Landroid/icu/text/RelativeDateTimeFormatter$Style;

    aput-object v1, v0, v3

    sput-object v0, Landroid/icu/text/RelativeDateTimeFormatter$Style;->$VALUES:[Landroid/icu/text/RelativeDateTimeFormatter$Style;

    return-void
.end method

.method private constructor <init>(Ljava/lang/String;I)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()V"
        }
    .end annotation

    .line 80
    invoke-direct {p0, p1, p2}, Ljava/lang/Enum;-><init>(Ljava/lang/String;I)V

    return-void
.end method

.method public static valueOf(Ljava/lang/String;)Landroid/icu/text/RelativeDateTimeFormatter$Style;
    .locals 1

    .line 80
    const-class v0, Landroid/icu/text/RelativeDateTimeFormatter$Style;

    invoke-static {v0, p0}, Ljava/lang/Enum;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;

    move-result-object p0

    check-cast p0, Landroid/icu/text/RelativeDateTimeFormatter$Style;

    return-object p0
.end method

.method public static values()[Landroid/icu/text/RelativeDateTimeFormatter$Style;
    .locals 1

    .line 80
    sget-object v0, Landroid/icu/text/RelativeDateTimeFormatter$Style;->$VALUES:[Landroid/icu/text/RelativeDateTimeFormatter$Style;

    invoke-virtual {v0}, [Landroid/icu/text/RelativeDateTimeFormatter$Style;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Landroid/icu/text/RelativeDateTimeFormatter$Style;

    return-object v0
.end method
