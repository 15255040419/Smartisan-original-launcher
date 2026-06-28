.class public Lcom/amap/api/mapcore2d/ak;
.super Ljava/lang/Object;
.source "IPoint.java"


# instance fields
.field a:I

.field b:I


# direct methods
.method public constructor <init>()V
    .locals 0

    .line 5
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method constructor <init>(II)V
    .locals 0

    .line 9
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 10
    iput p1, p0, Lcom/amap/api/mapcore2d/ak;->a:I

    .line 11
    iput p2, p0, Lcom/amap/api/mapcore2d/ak;->b:I

    return-void
.end method
