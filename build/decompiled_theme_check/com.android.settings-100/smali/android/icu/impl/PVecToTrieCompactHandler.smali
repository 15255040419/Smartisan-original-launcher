.class public Landroid/icu/impl/PVecToTrieCompactHandler;
.super Ljava/lang/Object;
.source "PVecToTrieCompactHandler.java"

# interfaces
.implements Landroid/icu/impl/PropsVectors$CompactHandler;


# instance fields
.field public builder:Landroid/icu/impl/IntTrieBuilder;

.field public initialValue:I


# direct methods
.method public constructor <init>()V
    .locals 0

    .line 22
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public setRowIndexForErrorValue(I)V
    .locals 0

    return-void
.end method

.method public setRowIndexForInitialValue(I)V
    .locals 0

    .line 32
    iput p1, p0, Landroid/icu/impl/PVecToTrieCompactHandler;->initialValue:I

    return-void
.end method

.method public setRowIndexForRange(III)V
    .locals 1

    .line 37
    iget-object p0, p0, Landroid/icu/impl/PVecToTrieCompactHandler;->builder:Landroid/icu/impl/IntTrieBuilder;

    const/4 v0, 0x1

    add-int/2addr p2, v0

    invoke-virtual {p0, p1, p2, p3, v0}, Landroid/icu/impl/IntTrieBuilder;->setRange(IIIZ)Z

    return-void
.end method

.method public startRealValues(I)V
    .locals 7

    const v0, 0xffff

    if-gt p1, v0, :cond_0

    .line 46
    new-instance p1, Landroid/icu/impl/IntTrieBuilder;

    const/4 v2, 0x0

    const v3, 0x186a0

    iget v5, p0, Landroid/icu/impl/PVecToTrieCompactHandler;->initialValue:I

    const/4 v6, 0x0

    move-object v1, p1

    move v4, v5

    invoke-direct/range {v1 .. v6}, Landroid/icu/impl/IntTrieBuilder;-><init>([IIIIZ)V

    iput-object p1, p0, Landroid/icu/impl/PVecToTrieCompactHandler;->builder:Landroid/icu/impl/IntTrieBuilder;

    return-void

    .line 44
    :cond_0
    new-instance p0, Ljava/lang/IndexOutOfBoundsException;

    invoke-direct {p0}, Ljava/lang/IndexOutOfBoundsException;-><init>()V

    throw p0
.end method
