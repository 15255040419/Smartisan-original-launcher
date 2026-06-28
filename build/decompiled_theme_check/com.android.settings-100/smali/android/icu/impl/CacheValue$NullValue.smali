.class final Landroid/icu/impl/CacheValue$NullValue;
.super Landroid/icu/impl/CacheValue;
.source "CacheValue.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroid/icu/impl/CacheValue;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1a
    name = "NullValue"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "<V:",
        "Ljava/lang/Object;",
        ">",
        "Landroid/icu/impl/CacheValue<",
        "TV;>;"
    }
.end annotation


# direct methods
.method private constructor <init>()V
    .locals 0

    .line 105
    invoke-direct {p0}, Landroid/icu/impl/CacheValue;-><init>()V

    return-void
.end method

.method synthetic constructor <init>(Landroid/icu/impl/CacheValue$1;)V
    .locals 0

    .line 105
    invoke-direct {p0}, Landroid/icu/impl/CacheValue$NullValue;-><init>()V

    return-void
.end method


# virtual methods
.method public get()Ljava/lang/Object;
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()TV;"
        }
    .end annotation

    const/4 p0, 0x0

    return-object p0
.end method

.method public isNull()Z
    .locals 0

    const/4 p0, 0x1

    return p0
.end method

.method public resetIfCleared(Ljava/lang/Object;)Ljava/lang/Object;
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(TV;)TV;"
        }
    .end annotation

    if-nez p1, :cond_0

    const/4 p0, 0x0

    return-object p0

    .line 113
    :cond_0
    new-instance p0, Landroid/icu/util/ICUException;

    const-string/jumbo p1, "resetting a null value to a non-null value"

    invoke-direct {p0, p1}, Landroid/icu/util/ICUException;-><init>(Ljava/lang/String;)V

    throw p0
.end method
