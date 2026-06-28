.class final Landroid/icu/impl/ICUResourceBundleReader$IsAcceptable;
.super Ljava/lang/Object;
.source "ICUResourceBundleReader.java"

# interfaces
.implements Landroid/icu/impl/ICUBinary$Authenticate;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroid/icu/impl/ICUResourceBundleReader;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1a
    name = "IsAcceptable"
.end annotation


# direct methods
.method private constructor <init>()V
    .locals 0

    .line 38
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method synthetic constructor <init>(Landroid/icu/impl/ICUResourceBundleReader$1;)V
    .locals 0

    .line 38
    invoke-direct {p0}, Landroid/icu/impl/ICUResourceBundleReader$IsAcceptable;-><init>()V

    return-void
.end method


# virtual methods
.method public isDataVersionAcceptable([B)Z
    .locals 3

    const/4 p0, 0x0

    .line 41
    aget-byte v0, p1, p0

    const/4 v1, 0x1

    if-ne v0, v1, :cond_0

    aget-byte v0, p1, v1

    and-int/lit16 v0, v0, 0xff

    if-ge v0, v1, :cond_1

    :cond_0
    const/4 v0, 0x2

    aget-byte v2, p1, p0

    if-gt v0, v2, :cond_2

    aget-byte p1, p1, p0

    const/4 v0, 0x3

    if-gt p1, v0, :cond_2

    :cond_1
    move p0, v1

    :cond_2
    return p0
.end method
