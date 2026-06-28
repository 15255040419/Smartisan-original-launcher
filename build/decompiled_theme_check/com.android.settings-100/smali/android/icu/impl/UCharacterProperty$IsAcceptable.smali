.class final Landroid/icu/impl/UCharacterProperty$IsAcceptable;
.super Ljava/lang/Object;
.source "UCharacterProperty.java"

# interfaces
.implements Landroid/icu/impl/ICUBinary$Authenticate;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroid/icu/impl/UCharacterProperty;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1a
    name = "IsAcceptable"
.end annotation


# direct methods
.method private constructor <init>()V
    .locals 0

    .line 1285
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method synthetic constructor <init>(Landroid/icu/impl/UCharacterProperty$1;)V
    .locals 0

    .line 1285
    invoke-direct {p0}, Landroid/icu/impl/UCharacterProperty$IsAcceptable;-><init>()V

    return-void
.end method


# virtual methods
.method public isDataVersionAcceptable([B)Z
    .locals 1

    const/4 p0, 0x0

    .line 1289
    aget-byte p1, p1, p0

    const/4 v0, 0x7

    if-ne p1, v0, :cond_0

    const/4 p0, 0x1

    :cond_0
    return p0
.end method
