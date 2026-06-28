.class final Landroid/icu/impl/ICUBinary$DatPackageReader$IsAcceptable;
.super Ljava/lang/Object;
.source "ICUBinary.java"

# interfaces
.implements Landroid/icu/impl/ICUBinary$Authenticate;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroid/icu/impl/ICUBinary$DatPackageReader;
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

.method synthetic constructor <init>(Landroid/icu/impl/ICUBinary$1;)V
    .locals 0

    .line 45
    invoke-direct {p0}, Landroid/icu/impl/ICUBinary$DatPackageReader$IsAcceptable;-><init>()V

    return-void
.end method


# virtual methods
.method public isDataVersionAcceptable([B)Z
    .locals 1

    const/4 p0, 0x0

    .line 48
    aget-byte p1, p1, p0

    const/4 v0, 0x1

    if-ne p1, v0, :cond_0

    move p0, v0

    :cond_0
    return p0
.end method
