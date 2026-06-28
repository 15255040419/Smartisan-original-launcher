.class final Landroid/icu/text/SpoofChecker$SpoofData$IsAcceptable;
.super Ljava/lang/Object;
.source "SpoofChecker.java"

# interfaces
.implements Landroid/icu/impl/ICUBinary$Authenticate;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroid/icu/text/SpoofChecker$SpoofData;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1a
    name = "IsAcceptable"
.end annotation


# direct methods
.method private constructor <init>()V
    .locals 0

    .line 1678
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method synthetic constructor <init>(Landroid/icu/text/SpoofChecker$1;)V
    .locals 0

    .line 1678
    invoke-direct {p0}, Landroid/icu/text/SpoofChecker$SpoofData$IsAcceptable;-><init>()V

    return-void
.end method


# virtual methods
.method public isDataVersionAcceptable([B)Z
    .locals 3

    const/4 p0, 0x0

    .line 1681
    aget-byte v0, p1, p0

    const/4 v1, 0x1

    const/4 v2, 0x2

    if-eq v0, v2, :cond_0

    aget-byte v0, p1, v1

    if-nez v0, :cond_0

    aget-byte v0, p1, v2

    if-nez v0, :cond_0

    const/4 v0, 0x3

    aget-byte p1, p1, v0

    if-eqz p1, :cond_1

    :cond_0
    move p0, v1

    :cond_1
    return p0
.end method
