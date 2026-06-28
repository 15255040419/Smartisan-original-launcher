.class public abstract Landroid/icu/impl/CacheValue;
.super Ljava/lang/Object;
.source "CacheValue.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Landroid/icu/impl/CacheValue$SoftValue;,
        Landroid/icu/impl/CacheValue$StrongValue;,
        Landroid/icu/impl/CacheValue$NullValue;,
        Landroid/icu/impl/CacheValue$Strength;
    }
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "<V:",
        "Ljava/lang/Object;",
        ">",
        "Ljava/lang/Object;"
    }
.end annotation


# static fields
.field private static final NULL_VALUE:Landroid/icu/impl/CacheValue;

.field private static volatile strength:Landroid/icu/impl/CacheValue$Strength;


# direct methods
.method static constructor <clinit>()V
    .locals 2

    .line 53
    sget-object v0, Landroid/icu/impl/CacheValue$Strength;->SOFT:Landroid/icu/impl/CacheValue$Strength;

    sput-object v0, Landroid/icu/impl/CacheValue;->strength:Landroid/icu/impl/CacheValue$Strength;

    .line 56
    new-instance v0, Landroid/icu/impl/CacheValue$NullValue;

    const/4 v1, 0x0

    invoke-direct {v0, v1}, Landroid/icu/impl/CacheValue$NullValue;-><init>(Landroid/icu/impl/CacheValue$1;)V

    sput-object v0, Landroid/icu/impl/CacheValue;->NULL_VALUE:Landroid/icu/impl/CacheValue;

    return-void
.end method

.method public constructor <init>()V
    .locals 0

    .line 36
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static futureInstancesWillBeStrong()Z
    .locals 2

    .line 66
    sget-object v0, Landroid/icu/impl/CacheValue;->strength:Landroid/icu/impl/CacheValue$Strength;

    sget-object v1, Landroid/icu/impl/CacheValue$Strength;->STRONG:Landroid/icu/impl/CacheValue$Strength;

    if-ne v0, v1, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    return v0
.end method

.method public static getInstance(Ljava/lang/Object;)Landroid/icu/impl/CacheValue;
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<V:",
            "Ljava/lang/Object;",
            ">(TV;)",
            "Landroid/icu/impl/CacheValue<",
            "TV;>;"
        }
    .end annotation

    if-nez p0, :cond_0

    .line 76
    sget-object p0, Landroid/icu/impl/CacheValue;->NULL_VALUE:Landroid/icu/impl/CacheValue;

    return-object p0

    .line 78
    :cond_0
    sget-object v0, Landroid/icu/impl/CacheValue;->strength:Landroid/icu/impl/CacheValue$Strength;

    sget-object v1, Landroid/icu/impl/CacheValue$Strength;->STRONG:Landroid/icu/impl/CacheValue$Strength;

    if-ne v0, v1, :cond_1

    new-instance v0, Landroid/icu/impl/CacheValue$StrongValue;

    invoke-direct {v0, p0}, Landroid/icu/impl/CacheValue$StrongValue;-><init>(Ljava/lang/Object;)V

    goto :goto_0

    :cond_1
    new-instance v0, Landroid/icu/impl/CacheValue$SoftValue;

    invoke-direct {v0, p0}, Landroid/icu/impl/CacheValue$SoftValue;-><init>(Ljava/lang/Object;)V

    :goto_0
    return-object v0
.end method

.method public static setStrength(Landroid/icu/impl/CacheValue$Strength;)V
    .locals 0

    .line 61
    sput-object p0, Landroid/icu/impl/CacheValue;->strength:Landroid/icu/impl/CacheValue$Strength;

    return-void
.end method


# virtual methods
.method public abstract get()Ljava/lang/Object;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()TV;"
        }
    .end annotation
.end method

.method public isNull()Z
    .locals 0

    const/4 p0, 0x0

    return p0
.end method

.method public abstract resetIfCleared(Ljava/lang/Object;)Ljava/lang/Object;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(TV;)TV;"
        }
    .end annotation
.end method
