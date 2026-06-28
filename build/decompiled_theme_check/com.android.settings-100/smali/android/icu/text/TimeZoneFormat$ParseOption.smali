.class public final enum Landroid/icu/text/TimeZoneFormat$ParseOption;
.super Ljava/lang/Enum;
.source "TimeZoneFormat.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroid/icu/text/TimeZoneFormat;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x4019
    name = "ParseOption"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Enum<",
        "Landroid/icu/text/TimeZoneFormat$ParseOption;",
        ">;"
    }
.end annotation


# static fields
.field private static final synthetic $VALUES:[Landroid/icu/text/TimeZoneFormat$ParseOption;

.field public static final enum ALL_STYLES:Landroid/icu/text/TimeZoneFormat$ParseOption;

.field public static final enum TZ_DATABASE_ABBREVIATIONS:Landroid/icu/text/TimeZoneFormat$ParseOption;


# direct methods
.method static constructor <clinit>()V
    .locals 4

    .line 282
    new-instance v0, Landroid/icu/text/TimeZoneFormat$ParseOption;

    const/4 v1, 0x0

    const-string v2, "ALL_STYLES"

    invoke-direct {v0, v2, v1}, Landroid/icu/text/TimeZoneFormat$ParseOption;-><init>(Ljava/lang/String;I)V

    sput-object v0, Landroid/icu/text/TimeZoneFormat$ParseOption;->ALL_STYLES:Landroid/icu/text/TimeZoneFormat$ParseOption;

    .line 289
    new-instance v0, Landroid/icu/text/TimeZoneFormat$ParseOption;

    const/4 v2, 0x1

    const-string v3, "TZ_DATABASE_ABBREVIATIONS"

    invoke-direct {v0, v3, v2}, Landroid/icu/text/TimeZoneFormat$ParseOption;-><init>(Ljava/lang/String;I)V

    sput-object v0, Landroid/icu/text/TimeZoneFormat$ParseOption;->TZ_DATABASE_ABBREVIATIONS:Landroid/icu/text/TimeZoneFormat$ParseOption;

    const/4 v0, 0x2

    new-array v0, v0, [Landroid/icu/text/TimeZoneFormat$ParseOption;

    .line 276
    sget-object v3, Landroid/icu/text/TimeZoneFormat$ParseOption;->ALL_STYLES:Landroid/icu/text/TimeZoneFormat$ParseOption;

    aput-object v3, v0, v1

    sget-object v1, Landroid/icu/text/TimeZoneFormat$ParseOption;->TZ_DATABASE_ABBREVIATIONS:Landroid/icu/text/TimeZoneFormat$ParseOption;

    aput-object v1, v0, v2

    sput-object v0, Landroid/icu/text/TimeZoneFormat$ParseOption;->$VALUES:[Landroid/icu/text/TimeZoneFormat$ParseOption;

    return-void
.end method

.method private constructor <init>(Ljava/lang/String;I)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()V"
        }
    .end annotation

    .line 276
    invoke-direct {p0, p1, p2}, Ljava/lang/Enum;-><init>(Ljava/lang/String;I)V

    return-void
.end method

.method public static valueOf(Ljava/lang/String;)Landroid/icu/text/TimeZoneFormat$ParseOption;
    .locals 1

    .line 276
    const-class v0, Landroid/icu/text/TimeZoneFormat$ParseOption;

    invoke-static {v0, p0}, Ljava/lang/Enum;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;

    move-result-object p0

    check-cast p0, Landroid/icu/text/TimeZoneFormat$ParseOption;

    return-object p0
.end method

.method public static values()[Landroid/icu/text/TimeZoneFormat$ParseOption;
    .locals 1

    .line 276
    sget-object v0, Landroid/icu/text/TimeZoneFormat$ParseOption;->$VALUES:[Landroid/icu/text/TimeZoneFormat$ParseOption;

    invoke-virtual {v0}, [Landroid/icu/text/TimeZoneFormat$ParseOption;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Landroid/icu/text/TimeZoneFormat$ParseOption;

    return-object v0
.end method
