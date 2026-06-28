.class public interface abstract Landroid/icu/impl/ICUService$Factory;
.super Ljava/lang/Object;
.source "ICUService.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroid/icu/impl/ICUService;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x609
    name = "Factory"
.end annotation


# virtual methods
.method public abstract create(Landroid/icu/impl/ICUService$Key;Landroid/icu/impl/ICUService;)Ljava/lang/Object;
.end method

.method public abstract getDisplayName(Ljava/lang/String;Landroid/icu/util/ULocale;)Ljava/lang/String;
.end method

.method public abstract updateVisibleIDs(Ljava/util/Map;)V
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Landroid/icu/impl/ICUService$Factory;",
            ">;)V"
        }
    .end annotation
.end method
