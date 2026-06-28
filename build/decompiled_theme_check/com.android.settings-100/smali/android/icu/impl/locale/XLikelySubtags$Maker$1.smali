.class Landroid/icu/impl/locale/XLikelySubtags$Maker$1;
.super Landroid/icu/impl/locale/XLikelySubtags$Maker;
.source "XLikelySubtags.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroid/icu/impl/locale/XLikelySubtags$Maker;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# direct methods
.method constructor <init>()V
    .locals 0

    .line 49
    invoke-direct {p0}, Landroid/icu/impl/locale/XLikelySubtags$Maker;-><init>()V

    return-void
.end method


# virtual methods
.method public bridge synthetic make()Ljava/lang/Object;
    .locals 0

    .line 49
    invoke-virtual {p0}, Landroid/icu/impl/locale/XLikelySubtags$Maker$1;->make()Ljava/util/Map;

    move-result-object p0

    return-object p0
.end method

.method public make()Ljava/util/Map;
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/Map<",
            "Ljava/lang/Object;",
            "Ljava/lang/Object;",
            ">;"
        }
    .end annotation

    .line 52
    new-instance p0, Ljava/util/HashMap;

    invoke-direct {p0}, Ljava/util/HashMap;-><init>()V

    return-object p0
.end method
