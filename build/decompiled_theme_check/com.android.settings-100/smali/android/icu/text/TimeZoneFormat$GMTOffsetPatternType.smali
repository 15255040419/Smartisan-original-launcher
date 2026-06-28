.class public final enum Landroid/icu/text/TimeZoneFormat$GMTOffsetPatternType;
.super Ljava/lang/Enum;
.source "TimeZoneFormat.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroid/icu/text/TimeZoneFormat;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x4019
    name = "GMTOffsetPatternType"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Enum<",
        "Landroid/icu/text/TimeZoneFormat$GMTOffsetPatternType;",
        ">;"
    }
.end annotation


# static fields
.field private static final synthetic $VALUES:[Landroid/icu/text/TimeZoneFormat$GMTOffsetPatternType;

.field public static final enum NEGATIVE_H:Landroid/icu/text/TimeZoneFormat$GMTOffsetPatternType;

.field public static final enum NEGATIVE_HM:Landroid/icu/text/TimeZoneFormat$GMTOffsetPatternType;

.field public static final enum NEGATIVE_HMS:Landroid/icu/text/TimeZoneFormat$GMTOffsetPatternType;

.field public static final enum POSITIVE_H:Landroid/icu/text/TimeZoneFormat$GMTOffsetPatternType;

.field public static final enum POSITIVE_HM:Landroid/icu/text/TimeZoneFormat$GMTOffsetPatternType;

.field public static final enum POSITIVE_HMS:Landroid/icu/text/TimeZoneFormat$GMTOffsetPatternType;


# instance fields
.field private _defaultPattern:Ljava/lang/String;

.field private _isPositive:Z

.field private _required:Ljava/lang/String;


# direct methods
.method static constructor <clinit>()V
    .locals 13

    .line 209
    new-instance v6, Landroid/icu/text/TimeZoneFormat$GMTOffsetPatternType;

    const-string v1, "POSITIVE_HM"

    const/4 v2, 0x0

    const-string v3, "+H:mm"

    const-string v4, "Hm"

    const/4 v5, 0x1

    move-object v0, v6

    invoke-direct/range {v0 .. v5}, Landroid/icu/text/TimeZoneFormat$GMTOffsetPatternType;-><init>(Ljava/lang/String;ILjava/lang/String;Ljava/lang/String;Z)V

    sput-object v6, Landroid/icu/text/TimeZoneFormat$GMTOffsetPatternType;->POSITIVE_HM:Landroid/icu/text/TimeZoneFormat$GMTOffsetPatternType;

    .line 213
    new-instance v0, Landroid/icu/text/TimeZoneFormat$GMTOffsetPatternType;

    const-string v8, "POSITIVE_HMS"

    const/4 v9, 0x1

    const-string v10, "+H:mm:ss"

    const-string v11, "Hms"

    const/4 v12, 0x1

    move-object v7, v0

    invoke-direct/range {v7 .. v12}, Landroid/icu/text/TimeZoneFormat$GMTOffsetPatternType;-><init>(Ljava/lang/String;ILjava/lang/String;Ljava/lang/String;Z)V

    sput-object v0, Landroid/icu/text/TimeZoneFormat$GMTOffsetPatternType;->POSITIVE_HMS:Landroid/icu/text/TimeZoneFormat$GMTOffsetPatternType;

    .line 217
    new-instance v0, Landroid/icu/text/TimeZoneFormat$GMTOffsetPatternType;

    const-string v2, "NEGATIVE_HM"

    const/4 v3, 0x2

    const-string v4, "-H:mm"

    const-string v5, "Hm"

    const/4 v6, 0x0

    move-object v1, v0

    invoke-direct/range {v1 .. v6}, Landroid/icu/text/TimeZoneFormat$GMTOffsetPatternType;-><init>(Ljava/lang/String;ILjava/lang/String;Ljava/lang/String;Z)V

    sput-object v0, Landroid/icu/text/TimeZoneFormat$GMTOffsetPatternType;->NEGATIVE_HM:Landroid/icu/text/TimeZoneFormat$GMTOffsetPatternType;

    .line 221
    new-instance v0, Landroid/icu/text/TimeZoneFormat$GMTOffsetPatternType;

    const-string v8, "NEGATIVE_HMS"

    const/4 v9, 0x3

    const-string v10, "-H:mm:ss"

    const-string v11, "Hms"

    const/4 v12, 0x0

    move-object v7, v0

    invoke-direct/range {v7 .. v12}, Landroid/icu/text/TimeZoneFormat$GMTOffsetPatternType;-><init>(Ljava/lang/String;ILjava/lang/String;Ljava/lang/String;Z)V

    sput-object v0, Landroid/icu/text/TimeZoneFormat$GMTOffsetPatternType;->NEGATIVE_HMS:Landroid/icu/text/TimeZoneFormat$GMTOffsetPatternType;

    .line 225
    new-instance v0, Landroid/icu/text/TimeZoneFormat$GMTOffsetPatternType;

    const-string v2, "POSITIVE_H"

    const/4 v3, 0x4

    const-string v4, "+H"

    const-string v5, "H"

    const/4 v6, 0x1

    move-object v1, v0

    invoke-direct/range {v1 .. v6}, Landroid/icu/text/TimeZoneFormat$GMTOffsetPatternType;-><init>(Ljava/lang/String;ILjava/lang/String;Ljava/lang/String;Z)V

    sput-object v0, Landroid/icu/text/TimeZoneFormat$GMTOffsetPatternType;->POSITIVE_H:Landroid/icu/text/TimeZoneFormat$GMTOffsetPatternType;

    .line 229
    new-instance v0, Landroid/icu/text/TimeZoneFormat$GMTOffsetPatternType;

    const-string v8, "NEGATIVE_H"

    const/4 v9, 0x5

    const-string v10, "-H"

    const-string v11, "H"

    move-object v7, v0

    invoke-direct/range {v7 .. v12}, Landroid/icu/text/TimeZoneFormat$GMTOffsetPatternType;-><init>(Ljava/lang/String;ILjava/lang/String;Ljava/lang/String;Z)V

    sput-object v0, Landroid/icu/text/TimeZoneFormat$GMTOffsetPatternType;->NEGATIVE_H:Landroid/icu/text/TimeZoneFormat$GMTOffsetPatternType;

    const/4 v0, 0x6

    new-array v0, v0, [Landroid/icu/text/TimeZoneFormat$GMTOffsetPatternType;

    .line 205
    sget-object v1, Landroid/icu/text/TimeZoneFormat$GMTOffsetPatternType;->POSITIVE_HM:Landroid/icu/text/TimeZoneFormat$GMTOffsetPatternType;

    const/4 v2, 0x0

    aput-object v1, v0, v2

    sget-object v1, Landroid/icu/text/TimeZoneFormat$GMTOffsetPatternType;->POSITIVE_HMS:Landroid/icu/text/TimeZoneFormat$GMTOffsetPatternType;

    const/4 v2, 0x1

    aput-object v1, v0, v2

    sget-object v1, Landroid/icu/text/TimeZoneFormat$GMTOffsetPatternType;->NEGATIVE_HM:Landroid/icu/text/TimeZoneFormat$GMTOffsetPatternType;

    const/4 v2, 0x2

    aput-object v1, v0, v2

    sget-object v1, Landroid/icu/text/TimeZoneFormat$GMTOffsetPatternType;->NEGATIVE_HMS:Landroid/icu/text/TimeZoneFormat$GMTOffsetPatternType;

    const/4 v2, 0x3

    aput-object v1, v0, v2

    sget-object v1, Landroid/icu/text/TimeZoneFormat$GMTOffsetPatternType;->POSITIVE_H:Landroid/icu/text/TimeZoneFormat$GMTOffsetPatternType;

    const/4 v2, 0x4

    aput-object v1, v0, v2

    sget-object v1, Landroid/icu/text/TimeZoneFormat$GMTOffsetPatternType;->NEGATIVE_H:Landroid/icu/text/TimeZoneFormat$GMTOffsetPatternType;

    const/4 v2, 0x5

    aput-object v1, v0, v2

    sput-object v0, Landroid/icu/text/TimeZoneFormat$GMTOffsetPatternType;->$VALUES:[Landroid/icu/text/TimeZoneFormat$GMTOffsetPatternType;

    return-void
.end method

.method private constructor <init>(Ljava/lang/String;ILjava/lang/String;Ljava/lang/String;Z)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            "Z)V"
        }
    .end annotation

    .line 235
    invoke-direct {p0, p1, p2}, Ljava/lang/Enum;-><init>(Ljava/lang/String;I)V

    .line 236
    iput-object p3, p0, Landroid/icu/text/TimeZoneFormat$GMTOffsetPatternType;->_defaultPattern:Ljava/lang/String;

    .line 237
    iput-object p4, p0, Landroid/icu/text/TimeZoneFormat$GMTOffsetPatternType;->_required:Ljava/lang/String;

    .line 238
    iput-boolean p5, p0, Landroid/icu/text/TimeZoneFormat$GMTOffsetPatternType;->_isPositive:Z

    return-void
.end method

.method static synthetic access$100(Landroid/icu/text/TimeZoneFormat$GMTOffsetPatternType;)Ljava/lang/String;
    .locals 0

    .line 205
    invoke-direct {p0}, Landroid/icu/text/TimeZoneFormat$GMTOffsetPatternType;->defaultPattern()Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method

.method static synthetic access$200(Landroid/icu/text/TimeZoneFormat$GMTOffsetPatternType;)Ljava/lang/String;
    .locals 0

    .line 205
    invoke-direct {p0}, Landroid/icu/text/TimeZoneFormat$GMTOffsetPatternType;->required()Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method

.method static synthetic access$300(Landroid/icu/text/TimeZoneFormat$GMTOffsetPatternType;)Z
    .locals 0

    .line 205
    invoke-direct {p0}, Landroid/icu/text/TimeZoneFormat$GMTOffsetPatternType;->isPositive()Z

    move-result p0

    return p0
.end method

.method private defaultPattern()Ljava/lang/String;
    .locals 0

    .line 242
    iget-object p0, p0, Landroid/icu/text/TimeZoneFormat$GMTOffsetPatternType;->_defaultPattern:Ljava/lang/String;

    return-object p0
.end method

.method private isPositive()Z
    .locals 0

    .line 250
    iget-boolean p0, p0, Landroid/icu/text/TimeZoneFormat$GMTOffsetPatternType;->_isPositive:Z

    return p0
.end method

.method private required()Ljava/lang/String;
    .locals 0

    .line 246
    iget-object p0, p0, Landroid/icu/text/TimeZoneFormat$GMTOffsetPatternType;->_required:Ljava/lang/String;

    return-object p0
.end method

.method public static valueOf(Ljava/lang/String;)Landroid/icu/text/TimeZoneFormat$GMTOffsetPatternType;
    .locals 1

    .line 205
    const-class v0, Landroid/icu/text/TimeZoneFormat$GMTOffsetPatternType;

    invoke-static {v0, p0}, Ljava/lang/Enum;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;

    move-result-object p0

    check-cast p0, Landroid/icu/text/TimeZoneFormat$GMTOffsetPatternType;

    return-object p0
.end method

.method public static values()[Landroid/icu/text/TimeZoneFormat$GMTOffsetPatternType;
    .locals 1

    .line 205
    sget-object v0, Landroid/icu/text/TimeZoneFormat$GMTOffsetPatternType;->$VALUES:[Landroid/icu/text/TimeZoneFormat$GMTOffsetPatternType;

    invoke-virtual {v0}, [Landroid/icu/text/TimeZoneFormat$GMTOffsetPatternType;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Landroid/icu/text/TimeZoneFormat$GMTOffsetPatternType;

    return-object v0
.end method
