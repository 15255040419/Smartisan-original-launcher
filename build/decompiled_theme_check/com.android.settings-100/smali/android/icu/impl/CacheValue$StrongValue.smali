.class final Landroid/icu/impl/CacheValue$StrongValue;
.super Landroid/icu/impl/CacheValue;
.source "CacheValue.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroid/icu/impl/CacheValue;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1a
    name = "StrongValue"
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


# instance fields
.field private value:Ljava/lang/Object;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "TV;"
        }
    .end annotation
.end field


# direct methods
.method constructor <init>(Ljava/lang/Object;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(TV;)V"
        }
    .end annotation

    .line 122
    invoke-direct {p0}, Landroid/icu/impl/CacheValue;-><init>()V

    iput-object p1, p0, Landroid/icu/impl/CacheValue$StrongValue;->value:Ljava/lang/Object;

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

    .line 124
    iget-object p0, p0, Landroid/icu/impl/CacheValue$StrongValue;->value:Ljava/lang/Object;

    return-object p0
.end method

.method public resetIfCleared(Ljava/lang/Object;)Ljava/lang/Object;
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(TV;)TV;"
        }
    .end annotation

    .line 129
    iget-object p0, p0, Landroid/icu/impl/CacheValue$StrongValue;->value:Ljava/lang/Object;

    return-object p0
.end method
