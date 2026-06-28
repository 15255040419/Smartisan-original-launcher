.class public final enum Landroid/icu/text/RelativeDateTimeFormatter$Direction;
.super Ljava/lang/Enum;
.source "RelativeDateTimeFormatter.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroid/icu/text/RelativeDateTimeFormatter;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x4019
    name = "Direction"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Enum<",
        "Landroid/icu/text/RelativeDateTimeFormatter$Direction;",
        ">;"
    }
.end annotation


# static fields
.field private static final synthetic $VALUES:[Landroid/icu/text/RelativeDateTimeFormatter$Direction;

.field public static final enum LAST:Landroid/icu/text/RelativeDateTimeFormatter$Direction;

.field public static final enum LAST_2:Landroid/icu/text/RelativeDateTimeFormatter$Direction;

.field public static final enum NEXT:Landroid/icu/text/RelativeDateTimeFormatter$Direction;

.field public static final enum NEXT_2:Landroid/icu/text/RelativeDateTimeFormatter$Direction;

.field public static final enum PLAIN:Landroid/icu/text/RelativeDateTimeFormatter$Direction;

.field public static final enum THIS:Landroid/icu/text/RelativeDateTimeFormatter$Direction;


# direct methods
.method static constructor <clinit>()V
    .locals 8

    .line 232
    new-instance v0, Landroid/icu/text/RelativeDateTimeFormatter$Direction;

    const/4 v1, 0x0

    const-string v2, "LAST_2"

    invoke-direct {v0, v2, v1}, Landroid/icu/text/RelativeDateTimeFormatter$Direction;-><init>(Ljava/lang/String;I)V

    sput-object v0, Landroid/icu/text/RelativeDateTimeFormatter$Direction;->LAST_2:Landroid/icu/text/RelativeDateTimeFormatter$Direction;

    .line 237
    new-instance v0, Landroid/icu/text/RelativeDateTimeFormatter$Direction;

    const/4 v2, 0x1

    const-string v3, "LAST"

    invoke-direct {v0, v3, v2}, Landroid/icu/text/RelativeDateTimeFormatter$Direction;-><init>(Ljava/lang/String;I)V

    sput-object v0, Landroid/icu/text/RelativeDateTimeFormatter$Direction;->LAST:Landroid/icu/text/RelativeDateTimeFormatter$Direction;

    .line 242
    new-instance v0, Landroid/icu/text/RelativeDateTimeFormatter$Direction;

    const/4 v3, 0x2

    const-string v4, "THIS"

    invoke-direct {v0, v4, v3}, Landroid/icu/text/RelativeDateTimeFormatter$Direction;-><init>(Ljava/lang/String;I)V

    sput-object v0, Landroid/icu/text/RelativeDateTimeFormatter$Direction;->THIS:Landroid/icu/text/RelativeDateTimeFormatter$Direction;

    .line 247
    new-instance v0, Landroid/icu/text/RelativeDateTimeFormatter$Direction;

    const/4 v4, 0x3

    const-string v5, "NEXT"

    invoke-direct {v0, v5, v4}, Landroid/icu/text/RelativeDateTimeFormatter$Direction;-><init>(Ljava/lang/String;I)V

    sput-object v0, Landroid/icu/text/RelativeDateTimeFormatter$Direction;->NEXT:Landroid/icu/text/RelativeDateTimeFormatter$Direction;

    .line 252
    new-instance v0, Landroid/icu/text/RelativeDateTimeFormatter$Direction;

    const/4 v5, 0x4

    const-string v6, "NEXT_2"

    invoke-direct {v0, v6, v5}, Landroid/icu/text/RelativeDateTimeFormatter$Direction;-><init>(Ljava/lang/String;I)V

    sput-object v0, Landroid/icu/text/RelativeDateTimeFormatter$Direction;->NEXT_2:Landroid/icu/text/RelativeDateTimeFormatter$Direction;

    .line 257
    new-instance v0, Landroid/icu/text/RelativeDateTimeFormatter$Direction;

    const/4 v6, 0x5

    const-string v7, "PLAIN"

    invoke-direct {v0, v7, v6}, Landroid/icu/text/RelativeDateTimeFormatter$Direction;-><init>(Ljava/lang/String;I)V

    sput-object v0, Landroid/icu/text/RelativeDateTimeFormatter$Direction;->PLAIN:Landroid/icu/text/RelativeDateTimeFormatter$Direction;

    const/4 v0, 0x6

    new-array v0, v0, [Landroid/icu/text/RelativeDateTimeFormatter$Direction;

    .line 228
    sget-object v7, Landroid/icu/text/RelativeDateTimeFormatter$Direction;->LAST_2:Landroid/icu/text/RelativeDateTimeFormatter$Direction;

    aput-object v7, v0, v1

    sget-object v1, Landroid/icu/text/RelativeDateTimeFormatter$Direction;->LAST:Landroid/icu/text/RelativeDateTimeFormatter$Direction;

    aput-object v1, v0, v2

    sget-object v1, Landroid/icu/text/RelativeDateTimeFormatter$Direction;->THIS:Landroid/icu/text/RelativeDateTimeFormatter$Direction;

    aput-object v1, v0, v3

    sget-object v1, Landroid/icu/text/RelativeDateTimeFormatter$Direction;->NEXT:Landroid/icu/text/RelativeDateTimeFormatter$Direction;

    aput-object v1, v0, v4

    sget-object v1, Landroid/icu/text/RelativeDateTimeFormatter$Direction;->NEXT_2:Landroid/icu/text/RelativeDateTimeFormatter$Direction;

    aput-object v1, v0, v5

    sget-object v1, Landroid/icu/text/RelativeDateTimeFormatter$Direction;->PLAIN:Landroid/icu/text/RelativeDateTimeFormatter$Direction;

    aput-object v1, v0, v6

    sput-object v0, Landroid/icu/text/RelativeDateTimeFormatter$Direction;->$VALUES:[Landroid/icu/text/RelativeDateTimeFormatter$Direction;

    return-void
.end method

.method private constructor <init>(Ljava/lang/String;I)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()V"
        }
    .end annotation

    .line 228
    invoke-direct {p0, p1, p2}, Ljava/lang/Enum;-><init>(Ljava/lang/String;I)V

    return-void
.end method

.method public static valueOf(Ljava/lang/String;)Landroid/icu/text/RelativeDateTimeFormatter$Direction;
    .locals 1

    .line 228
    const-class v0, Landroid/icu/text/RelativeDateTimeFormatter$Direction;

    invoke-static {v0, p0}, Ljava/lang/Enum;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;

    move-result-object p0

    check-cast p0, Landroid/icu/text/RelativeDateTimeFormatter$Direction;

    return-object p0
.end method

.method public static values()[Landroid/icu/text/RelativeDateTimeFormatter$Direction;
    .locals 1

    .line 228
    sget-object v0, Landroid/icu/text/RelativeDateTimeFormatter$Direction;->$VALUES:[Landroid/icu/text/RelativeDateTimeFormatter$Direction;

    invoke-virtual {v0}, [Landroid/icu/text/RelativeDateTimeFormatter$Direction;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Landroid/icu/text/RelativeDateTimeFormatter$Direction;

    return-object v0
.end method
