.class Landroid/icu/impl/ZoneMeta$CustomTimeZoneCache;
.super Landroid/icu/impl/SoftCache;
.source "ZoneMeta.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroid/icu/impl/ZoneMeta;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0xa
    name = "CustomTimeZoneCache"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Landroid/icu/impl/SoftCache<",
        "Ljava/lang/Integer;",
        "Landroid/icu/util/SimpleTimeZone;",
        "[I>;"
    }
.end annotation


# static fields
.field static final synthetic $assertionsDisabled:Z


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .line 589
    const-class v0, Landroid/icu/impl/ZoneMeta;

    return-void
.end method

.method private constructor <init>()V
    .locals 0

    .line 589
    invoke-direct {p0}, Landroid/icu/impl/SoftCache;-><init>()V

    return-void
.end method

.method synthetic constructor <init>(Landroid/icu/impl/ZoneMeta$1;)V
    .locals 0

    .line 589
    invoke-direct {p0}, Landroid/icu/impl/ZoneMeta$CustomTimeZoneCache;-><init>()V

    return-void
.end method


# virtual methods
.method protected createInstance(Ljava/lang/Integer;[I)Landroid/icu/util/SimpleTimeZone;
    .locals 6

    const/4 p0, 0x1

    .line 601
    aget p1, p2, p0

    const/4 v0, 0x2

    aget v1, p2, v0

    const/4 v2, 0x3

    aget v3, p2, v2

    const/4 v4, 0x0

    aget v5, p2, v4

    if-gez v5, :cond_0

    move v5, p0

    goto :goto_0

    :cond_0
    move v5, v4

    :goto_0
    invoke-static {p1, v1, v3, v5}, Landroid/icu/impl/ZoneMeta;->formatCustomID(IIIZ)Ljava/lang/String;

    move-result-object p1

    .line 602
    aget v1, p2, v4

    aget p0, p2, p0

    mul-int/lit8 p0, p0, 0x3c

    aget v0, p2, v0

    add-int/2addr p0, v0

    mul-int/lit8 p0, p0, 0x3c

    aget p2, p2, v2

    add-int/2addr p0, p2

    mul-int/2addr v1, p0

    mul-int/lit16 v1, v1, 0x3e8

    .line 603
    new-instance p0, Landroid/icu/util/SimpleTimeZone;

    invoke-direct {p0, v1, p1}, Landroid/icu/util/SimpleTimeZone;-><init>(ILjava/lang/String;)V

    .line 604
    invoke-virtual {p0}, Landroid/icu/util/SimpleTimeZone;->freeze()Landroid/icu/util/TimeZone;

    return-object p0
.end method

.method protected bridge synthetic createInstance(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;
    .locals 0

    .line 589
    check-cast p1, Ljava/lang/Integer;

    check-cast p2, [I

    invoke-virtual {p0, p1, p2}, Landroid/icu/impl/ZoneMeta$CustomTimeZoneCache;->createInstance(Ljava/lang/Integer;[I)Landroid/icu/util/SimpleTimeZone;

    move-result-object p0

    return-object p0
.end method
