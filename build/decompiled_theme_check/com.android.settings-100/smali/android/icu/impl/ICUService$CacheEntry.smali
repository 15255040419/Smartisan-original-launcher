.class final Landroid/icu/impl/ICUService$CacheEntry;
.super Ljava/lang/Object;
.source "ICUService.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroid/icu/impl/ICUService;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1a
    name = "CacheEntry"
.end annotation


# instance fields
.field final actualDescriptor:Ljava/lang/String;

.field final service:Ljava/lang/Object;


# direct methods
.method constructor <init>(Ljava/lang/String;Ljava/lang/Object;)V
    .locals 0

    .line 532
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 533
    iput-object p1, p0, Landroid/icu/impl/ICUService$CacheEntry;->actualDescriptor:Ljava/lang/String;

    .line 534
    iput-object p2, p0, Landroid/icu/impl/ICUService$CacheEntry;->service:Ljava/lang/Object;

    return-void
.end method
