.class Landroid/icu/impl/locale/XCldrStub$MultimapIterator;
.super Ljava/lang/Object;
.source "XCldrStub.java"

# interfaces
.implements Ljava/util/Iterator;
.implements Ljava/lang/Iterable;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroid/icu/impl/locale/XCldrStub;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0xa
    name = "MultimapIterator"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "<K:",
        "Ljava/lang/Object;",
        "V:",
        "Ljava/lang/Object;",
        ">",
        "Ljava/lang/Object;",
        "Ljava/util/Iterator<",
        "Ljava/util/Map$Entry<",
        "TK;TV;>;>;",
        "Ljava/lang/Iterable<",
        "Ljava/util/Map$Entry<",
        "TK;TV;>;>;"
    }
.end annotation


# instance fields
.field private final entry:Landroid/icu/impl/locale/XCldrStub$ReusableEntry;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/icu/impl/locale/XCldrStub$ReusableEntry<",
            "TK;TV;>;"
        }
    .end annotation
.end field

.field private final it1:Ljava/util/Iterator;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Iterator<",
            "Ljava/util/Map$Entry<",
            "TK;",
            "Ljava/util/Set<",
            "TV;>;>;>;"
        }
    .end annotation
.end field

.field private it2:Ljava/util/Iterator;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Iterator<",
            "TV;>;"
        }
    .end annotation
.end field


# direct methods
.method private constructor <init>(Ljava/util/Map;)V
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/Map<",
            "TK;",
            "Ljava/util/Set<",
            "TV;>;>;)V"
        }
    .end annotation

    .line 154
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 v0, 0x0

    .line 151
    iput-object v0, p0, Landroid/icu/impl/locale/XCldrStub$MultimapIterator;->it2:Ljava/util/Iterator;

    .line 152
    new-instance v1, Landroid/icu/impl/locale/XCldrStub$ReusableEntry;

    invoke-direct {v1, v0}, Landroid/icu/impl/locale/XCldrStub$ReusableEntry;-><init>(Landroid/icu/impl/locale/XCldrStub$1;)V

    iput-object v1, p0, Landroid/icu/impl/locale/XCldrStub$MultimapIterator;->entry:Landroid/icu/impl/locale/XCldrStub$ReusableEntry;

    .line 155
    invoke-interface {p1}, Ljava/util/Map;->entrySet()Ljava/util/Set;

    move-result-object p1

    invoke-interface {p1}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object p1

    iput-object p1, p0, Landroid/icu/impl/locale/XCldrStub$MultimapIterator;->it1:Ljava/util/Iterator;

    return-void
.end method

.method synthetic constructor <init>(Ljava/util/Map;Landroid/icu/impl/locale/XCldrStub$1;)V
    .locals 0

    .line 149
    invoke-direct {p0, p1}, Landroid/icu/impl/locale/XCldrStub$MultimapIterator;-><init>(Ljava/util/Map;)V

    return-void
.end method


# virtual methods
.method public hasNext()Z
    .locals 1

    .line 159
    iget-object v0, p0, Landroid/icu/impl/locale/XCldrStub$MultimapIterator;->it1:Ljava/util/Iterator;

    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-nez v0, :cond_1

    iget-object p0, p0, Landroid/icu/impl/locale/XCldrStub$MultimapIterator;->it2:Ljava/util/Iterator;

    if-eqz p0, :cond_0

    invoke-interface {p0}, Ljava/util/Iterator;->hasNext()Z

    move-result p0

    if-eqz p0, :cond_0

    goto :goto_0

    :cond_0
    const/4 p0, 0x0

    goto :goto_1

    :cond_1
    :goto_0
    const/4 p0, 0x1

    :goto_1
    return p0
.end method

.method public iterator()Ljava/util/Iterator;
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/Iterator<",
            "Ljava/util/Map$Entry<",
            "TK;TV;>;>;"
        }
    .end annotation

    return-object p0
.end method

.method public bridge synthetic next()Ljava/lang/Object;
    .locals 0

    .line 149
    invoke-virtual {p0}, Landroid/icu/impl/locale/XCldrStub$MultimapIterator;->next()Ljava/util/Map$Entry;

    move-result-object p0

    return-object p0
.end method

.method public next()Ljava/util/Map$Entry;
    .locals 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/Map$Entry<",
            "TK;TV;>;"
        }
    .end annotation

    .line 163
    iget-object v0, p0, Landroid/icu/impl/locale/XCldrStub$MultimapIterator;->it2:Ljava/util/Iterator;

    if-eqz v0, :cond_0

    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 164
    iget-object v0, p0, Landroid/icu/impl/locale/XCldrStub$MultimapIterator;->entry:Landroid/icu/impl/locale/XCldrStub$ReusableEntry;

    iget-object v1, p0, Landroid/icu/impl/locale/XCldrStub$MultimapIterator;->it2:Ljava/util/Iterator;

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    iput-object v1, v0, Landroid/icu/impl/locale/XCldrStub$ReusableEntry;->value:Ljava/lang/Object;

    goto :goto_0

    .line 166
    :cond_0
    iget-object v0, p0, Landroid/icu/impl/locale/XCldrStub$MultimapIterator;->it1:Ljava/util/Iterator;

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/util/Map$Entry;

    .line 167
    iget-object v1, p0, Landroid/icu/impl/locale/XCldrStub$MultimapIterator;->entry:Landroid/icu/impl/locale/XCldrStub$ReusableEntry;

    invoke-interface {v0}, Ljava/util/Map$Entry;->getKey()Ljava/lang/Object;

    move-result-object v2

    iput-object v2, v1, Landroid/icu/impl/locale/XCldrStub$ReusableEntry;->key:Ljava/lang/Object;

    .line 168
    invoke-interface {v0}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/util/Set;

    invoke-interface {v0}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v0

    iput-object v0, p0, Landroid/icu/impl/locale/XCldrStub$MultimapIterator;->it2:Ljava/util/Iterator;

    .line 170
    :goto_0
    iget-object p0, p0, Landroid/icu/impl/locale/XCldrStub$MultimapIterator;->entry:Landroid/icu/impl/locale/XCldrStub$ReusableEntry;

    return-object p0
.end method

.method public remove()V
    .locals 0

    .line 178
    new-instance p0, Ljava/lang/UnsupportedOperationException;

    invoke-direct {p0}, Ljava/lang/UnsupportedOperationException;-><init>()V

    throw p0
.end method
