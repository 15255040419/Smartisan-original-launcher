.class public final enum Landroid/icu/impl/TimeZoneGenericNames$GenericNameType;
.super Ljava/lang/Enum;
.source "TimeZoneGenericNames.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroid/icu/impl/TimeZoneGenericNames;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x4019
    name = "GenericNameType"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Enum<",
        "Landroid/icu/impl/TimeZoneGenericNames$GenericNameType;",
        ">;"
    }
.end annotation


# static fields
.field private static final synthetic $VALUES:[Landroid/icu/impl/TimeZoneGenericNames$GenericNameType;

.field public static final enum LOCATION:Landroid/icu/impl/TimeZoneGenericNames$GenericNameType;

.field public static final enum LONG:Landroid/icu/impl/TimeZoneGenericNames$GenericNameType;

.field public static final enum SHORT:Landroid/icu/impl/TimeZoneGenericNames$GenericNameType;


# instance fields
.field _fallbackTypeOf:[Ljava/lang/String;


# direct methods
.method static constructor <clinit>()V
    .locals 6

    .line 60
    new-instance v0, Landroid/icu/impl/TimeZoneGenericNames$GenericNameType;

    const-string v1, "SHORT"

    const-string v2, "LONG"

    filled-new-array {v2, v1}, [Ljava/lang/String;

    move-result-object v3

    const/4 v4, 0x0

    const-string v5, "LOCATION"

    invoke-direct {v0, v5, v4, v3}, Landroid/icu/impl/TimeZoneGenericNames$GenericNameType;-><init>(Ljava/lang/String;I[Ljava/lang/String;)V

    sput-object v0, Landroid/icu/impl/TimeZoneGenericNames$GenericNameType;->LOCATION:Landroid/icu/impl/TimeZoneGenericNames$GenericNameType;

    .line 61
    new-instance v0, Landroid/icu/impl/TimeZoneGenericNames$GenericNameType;

    new-array v3, v4, [Ljava/lang/String;

    const/4 v5, 0x1

    invoke-direct {v0, v2, v5, v3}, Landroid/icu/impl/TimeZoneGenericNames$GenericNameType;-><init>(Ljava/lang/String;I[Ljava/lang/String;)V

    sput-object v0, Landroid/icu/impl/TimeZoneGenericNames$GenericNameType;->LONG:Landroid/icu/impl/TimeZoneGenericNames$GenericNameType;

    .line 62
    new-instance v0, Landroid/icu/impl/TimeZoneGenericNames$GenericNameType;

    new-array v2, v4, [Ljava/lang/String;

    const/4 v3, 0x2

    invoke-direct {v0, v1, v3, v2}, Landroid/icu/impl/TimeZoneGenericNames$GenericNameType;-><init>(Ljava/lang/String;I[Ljava/lang/String;)V

    sput-object v0, Landroid/icu/impl/TimeZoneGenericNames$GenericNameType;->SHORT:Landroid/icu/impl/TimeZoneGenericNames$GenericNameType;

    const/4 v0, 0x3

    new-array v0, v0, [Landroid/icu/impl/TimeZoneGenericNames$GenericNameType;

    .line 59
    sget-object v1, Landroid/icu/impl/TimeZoneGenericNames$GenericNameType;->LOCATION:Landroid/icu/impl/TimeZoneGenericNames$GenericNameType;

    aput-object v1, v0, v4

    sget-object v1, Landroid/icu/impl/TimeZoneGenericNames$GenericNameType;->LONG:Landroid/icu/impl/TimeZoneGenericNames$GenericNameType;

    aput-object v1, v0, v5

    sget-object v1, Landroid/icu/impl/TimeZoneGenericNames$GenericNameType;->SHORT:Landroid/icu/impl/TimeZoneGenericNames$GenericNameType;

    aput-object v1, v0, v3

    sput-object v0, Landroid/icu/impl/TimeZoneGenericNames$GenericNameType;->$VALUES:[Landroid/icu/impl/TimeZoneGenericNames$GenericNameType;

    return-void
.end method

.method private varargs constructor <init>(Ljava/lang/String;I[Ljava/lang/String;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "([",
            "Ljava/lang/String;",
            ")V"
        }
    .end annotation

    .line 65
    invoke-direct {p0, p1, p2}, Ljava/lang/Enum;-><init>(Ljava/lang/String;I)V

    .line 66
    iput-object p3, p0, Landroid/icu/impl/TimeZoneGenericNames$GenericNameType;->_fallbackTypeOf:[Ljava/lang/String;

    return-void
.end method

.method public static valueOf(Ljava/lang/String;)Landroid/icu/impl/TimeZoneGenericNames$GenericNameType;
    .locals 1

    .line 59
    const-class v0, Landroid/icu/impl/TimeZoneGenericNames$GenericNameType;

    invoke-static {v0, p0}, Ljava/lang/Enum;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;

    move-result-object p0

    check-cast p0, Landroid/icu/impl/TimeZoneGenericNames$GenericNameType;

    return-object p0
.end method

.method public static values()[Landroid/icu/impl/TimeZoneGenericNames$GenericNameType;
    .locals 1

    .line 59
    sget-object v0, Landroid/icu/impl/TimeZoneGenericNames$GenericNameType;->$VALUES:[Landroid/icu/impl/TimeZoneGenericNames$GenericNameType;

    invoke-virtual {v0}, [Landroid/icu/impl/TimeZoneGenericNames$GenericNameType;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Landroid/icu/impl/TimeZoneGenericNames$GenericNameType;

    return-object v0
.end method


# virtual methods
.method public isFallbackTypeOf(Landroid/icu/impl/TimeZoneGenericNames$GenericNameType;)Z
    .locals 4

    .line 70
    invoke-virtual {p1}, Landroid/icu/impl/TimeZoneGenericNames$GenericNameType;->toString()Ljava/lang/String;

    move-result-object p1

    .line 71
    iget-object p0, p0, Landroid/icu/impl/TimeZoneGenericNames$GenericNameType;->_fallbackTypeOf:[Ljava/lang/String;

    array-length v0, p0

    const/4 v1, 0x0

    move v2, v1

    :goto_0
    if-ge v2, v0, :cond_1

    aget-object v3, p0, v2

    .line 72
    invoke-virtual {v3, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_0

    const/4 p0, 0x1

    return p0

    :cond_0
    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    :cond_1
    return v1
.end method
