.class final Landroid/icu/text/Collator$ASCII;
.super Ljava/lang/Object;
.source "Collator.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroid/icu/text/Collator;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1a
    name = "ASCII"
.end annotation


# direct methods
.method private constructor <init>()V
    .locals 0

    .line 603
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method static equalIgnoreCase(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Z
    .locals 7

    .line 605
    invoke-interface {p0}, Ljava/lang/CharSequence;->length()I

    move-result v0

    .line 606
    invoke-interface {p1}, Ljava/lang/CharSequence;->length()I

    move-result v1

    const/4 v2, 0x0

    if-eq v0, v1, :cond_0

    return v2

    :cond_0
    move v1, v2

    :goto_0
    if-ge v1, v0, :cond_4

    .line 608
    invoke-interface {p0, v1}, Ljava/lang/CharSequence;->charAt(I)C

    move-result v3

    .line 609
    invoke-interface {p1, v1}, Ljava/lang/CharSequence;->charAt(I)C

    move-result v4

    if-ne v3, v4, :cond_1

    goto :goto_1

    :cond_1
    const/16 v5, 0x5a

    const/16 v6, 0x41

    if-gt v6, v3, :cond_2

    if-gt v3, v5, :cond_2

    add-int/lit8 v3, v3, 0x20

    if-ne v3, v4, :cond_3

    goto :goto_1

    :cond_2
    if-gt v6, v4, :cond_3

    if-gt v4, v5, :cond_3

    add-int/lit8 v4, v4, 0x20

    if-ne v4, v3, :cond_3

    :goto_1
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    :cond_3
    return v2

    :cond_4
    const/4 p0, 0x1

    return p0
.end method
