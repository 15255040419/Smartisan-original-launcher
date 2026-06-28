.class final Landroid/icu/text/RBBIDataWrapper$IsAcceptable;
.super Ljava/lang/Object;
.source "RBBIDataWrapper.java"

# interfaces
.implements Landroid/icu/impl/ICUBinary$Authenticate;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroid/icu/text/RBBIDataWrapper;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1a
    name = "IsAcceptable"
.end annotation


# direct methods
.method private constructor <init>()V
    .locals 0

    .line 45
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method synthetic constructor <init>(Landroid/icu/text/RBBIDataWrapper$1;)V
    .locals 0

    .line 45
    invoke-direct {p0}, Landroid/icu/text/RBBIDataWrapper$IsAcceptable;-><init>()V

    return-void
.end method


# virtual methods
.method public isDataVersionAcceptable([B)Z
    .locals 3

    const/4 p0, 0x0

    .line 48
    aget-byte v0, p1, p0

    shl-int/lit8 v0, v0, 0x18

    const/4 v1, 0x1

    aget-byte v2, p1, v1

    shl-int/lit8 v2, v2, 0x10

    add-int/2addr v0, v2

    const/4 v2, 0x2

    aget-byte v2, p1, v2

    shl-int/lit8 v2, v2, 0x8

    add-int/2addr v0, v2

    const/4 v2, 0x3

    aget-byte p1, p1, v2

    add-int/2addr v0, p1

    const/high16 p1, 0x4000000

    if-ne v0, p1, :cond_0

    move p0, v1

    :cond_0
    return p0
.end method
