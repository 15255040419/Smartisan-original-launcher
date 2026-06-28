.class Landroid/icu/text/UnicodeSet$IntPropertyFilter;
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
    name = "IntPropertyFilter"
.end annotation


# instance fields
.field prop:I

.field value:I


# direct methods
.method constructor <init>(II)V
    .locals 0

    .line 3132
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 3133
    iput p1, p0, Landroid/icu/text/UnicodeSet$IntPropertyFilter;->prop:I

    .line 3134
    iput p2, p0, Landroid/icu/text/UnicodeSet$IntPropertyFilter;->value:I

    return-void
.end method


# virtual methods
.method public contains(I)Z
    .locals 1

    .line 3138
    iget v0, p0, Landroid/icu/text/UnicodeSet$IntPropertyFilter;->prop:I

    invoke-static {p1, v0}, Landroid/icu/lang/UCharacter;->getIntPropertyValue(II)I

    move-result p1

    iget p0, p0, Landroid/icu/text/UnicodeSet$IntPropertyFilter;->value:I

    if-ne p1, p0, :cond_0

    const/4 p0, 0x1

    goto :goto_0

    :cond_0
    const/4 p0, 0x0

    :goto_0
    return p0
.end method
