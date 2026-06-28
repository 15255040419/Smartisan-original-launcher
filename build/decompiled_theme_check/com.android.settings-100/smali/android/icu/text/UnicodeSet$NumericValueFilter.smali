.class Landroid/icu/text/UnicodeSet$NumericValueFilter;
.super Ljava/lang/Object;
.source "UnicodeSet.java"

# interfaces
.implements Landroid/icu/text/UnicodeSet$Filter;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroid/icu/text/UnicodeSet;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0xa
    name = "NumericValueFilter"
.end annotation


# instance fields
.field value:D


# direct methods
.method constructor <init>(D)V
    .locals 0

    .line 3113
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-wide p1, p0, Landroid/icu/text/UnicodeSet$NumericValueFilter;->value:D

    return-void
.end method


# virtual methods
.method public contains(I)Z
    .locals 2

    .line 3116
    invoke-static {p1}, Landroid/icu/lang/UCharacter;->getUnicodeNumericValue(I)D

    move-result-wide v0

    iget-wide p0, p0, Landroid/icu/text/UnicodeSet$NumericValueFilter;->value:D

    cmpl-double p0, v0, p0

    if-nez p0, :cond_0

    const/4 p0, 0x1

    goto :goto_0

    :cond_0
    const/4 p0, 0x0

    :goto_0
    return p0
.end method
