.class Landroid/icu/impl/Normalizer2Impl$1;
.super Ljava/lang/Object;
.source "Normalizer2Impl.java"

# interfaces
.implements Landroid/icu/impl/Trie2$ValueMapper;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroid/icu/impl/Normalizer2Impl;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# direct methods
.method constructor <init>()V
    .locals 0

    .line 553
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public map(I)I
    .locals 0

    const/high16 p0, -0x80000000

    and-int/2addr p0, p1

    return p0
.end method
