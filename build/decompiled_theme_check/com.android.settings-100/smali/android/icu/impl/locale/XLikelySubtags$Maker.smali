.class abstract Landroid/icu/impl/locale/XLikelySubtags$Maker;
.super Ljava/lang/Object;
.source "XLikelySubtags.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroid/icu/impl/locale/XLikelySubtags;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x408
    name = "Maker"
.end annotation


# static fields
.field static final HASHMAP:Landroid/icu/impl/locale/XLikelySubtags$Maker;

.field static final TREEMAP:Landroid/icu/impl/locale/XLikelySubtags$Maker;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .line 49
    new-instance v0, Landroid/icu/impl/locale/XLikelySubtags$Maker$1;

    invoke-direct {v0}, Landroid/icu/impl/locale/XLikelySubtags$Maker$1;-><init>()V

    sput-object v0, Landroid/icu/impl/locale/XLikelySubtags$Maker;->HASHMAP:Landroid/icu/impl/locale/XLikelySubtags$Maker;

    .line 56
    new-instance v0, Landroid/icu/impl/locale/XLikelySubtags$Maker$2;

    invoke-direct {v0}, Landroid/icu/impl/locale/XLikelySubtags$Maker$2;-><init>()V

    sput-object v0, Landroid/icu/impl/locale/XLikelySubtags$Maker;->TREEMAP:Landroid/icu/impl/locale/XLikelySubtags$Maker;

    return-void
.end method

.method constructor <init>()V
    .locals 0

    .line 38
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public getSubtable(Ljava/util/Map;Ljava/lang/Object;)Ljava/lang/Object;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<K:",
            "Ljava/lang/Object;",
            "V:",
            "Ljava/lang/Object;",
            ">(",
            "Ljava/util/Map<",
            "TK;TV;>;TK;)TV;"
        }
    .end annotation

    .line 42
    invoke-interface {p1, p2}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    if-nez v0, :cond_0

    .line 44
    invoke-virtual {p0}, Landroid/icu/impl/locale/XLikelySubtags$Maker;->make()Ljava/lang/Object;

    move-result-object v0

    invoke-interface {p1, p2, v0}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    :cond_0
    return-object v0
.end method

.method abstract make()Ljava/lang/Object;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<V:",
            "Ljava/lang/Object;",
            ">()TV;"
        }
    .end annotation
.end method
