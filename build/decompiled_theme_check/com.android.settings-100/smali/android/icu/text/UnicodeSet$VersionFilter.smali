.class Landroid/icu/text/UnicodeSet$VersionFilter;
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
    name = "VersionFilter"
.end annotation


# instance fields
.field version:Landroid/icu/util/VersionInfo;


# direct methods
.method constructor <init>(Landroid/icu/util/VersionInfo;)V
    .locals 0

    .line 3156
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Landroid/icu/text/UnicodeSet$VersionFilter;->version:Landroid/icu/util/VersionInfo;

    return-void
.end method


# virtual methods
.method public contains(I)Z
    .locals 1

    .line 3159
    invoke-static {p1}, Landroid/icu/lang/UCharacter;->getAge(I)Landroid/icu/util/VersionInfo;

    move-result-object p1

    .line 3162
    invoke-static {}, Landroid/icu/text/UnicodeSet;->access$000()Landroid/icu/util/VersionInfo;

    move-result-object v0

    invoke-static {p1, v0}, Landroid/icu/impl/Utility;->sameObjects(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_0

    iget-object p0, p0, Landroid/icu/text/UnicodeSet$VersionFilter;->version:Landroid/icu/util/VersionInfo;

    .line 3163
    invoke-virtual {p1, p0}, Landroid/icu/util/VersionInfo;->compareTo(Landroid/icu/util/VersionInfo;)I

    move-result p0

    if-gtz p0, :cond_0

    const/4 p0, 0x1

    goto :goto_0

    :cond_0
    const/4 p0, 0x0

    :goto_0
    return p0
.end method
