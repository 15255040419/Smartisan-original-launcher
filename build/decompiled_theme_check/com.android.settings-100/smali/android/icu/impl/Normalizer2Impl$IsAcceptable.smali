.class final Landroid/icu/impl/Normalizer2Impl$IsAcceptable;
.super Ljava/lang/Object;
.source "Normalizer2Impl.java"

# interfaces
.implements Landroid/icu/impl/ICUBinary$Authenticate;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroid/icu/impl/Normalizer2Impl;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1a
    name = "IsAcceptable"
.end annotation


# direct methods
.method private constructor <init>()V
    .locals 0

    .line 422
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method synthetic constructor <init>(Landroid/icu/impl/Normalizer2Impl$1;)V
    .locals 0

    .line 422
    invoke-direct {p0}, Landroid/icu/impl/Normalizer2Impl$IsAcceptable;-><init>()V

    return-void
.end method


# virtual methods
.method public isDataVersionAcceptable([B)Z
    .locals 1

    const/4 p0, 0x0

    .line 425
    aget-byte p1, p1, p0

    const/4 v0, 0x3

    if-ne p1, v0, :cond_0

    const/4 p0, 0x1

    :cond_0
    return p0
.end method
