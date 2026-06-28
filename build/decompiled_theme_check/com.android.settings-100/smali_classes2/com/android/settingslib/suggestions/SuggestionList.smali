.class public Lcom/android/settingslib/suggestions/SuggestionList;
.super Ljava/lang/Object;
.source "SuggestionList.java"


# instance fields
.field private mSuggestionList:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Lcom/android/settingslib/drawer/Tile;",
            ">;"
        }
    .end annotation
.end field

.field private final mSuggestions:Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map<",
            "Lcom/android/settingslib/suggestions/SuggestionCategory;",
            "Ljava/util/List<",
            "Lcom/android/settingslib/drawer/Tile;",
            ">;>;"
        }
    .end annotation
.end field


# direct methods
.method public constructor <init>()V
    .locals 1

    .line 37
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 38
    new-instance v0, Landroid/util/ArrayMap;

    invoke-direct {v0}, Landroid/util/ArrayMap;-><init>()V

    iput-object v0, p0, Lcom/android/settingslib/suggestions/SuggestionList;->mSuggestions:Ljava/util/Map;

    return-void
.end method

.method private dedupeSuggestions(Ljava/util/List;)V
    .locals 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Lcom/android/settingslib/drawer/Tile;",
            ">;)V"
        }
    .end annotation

    .line 74
    new-instance p0, Landroid/util/ArraySet;

    invoke-direct {p0}, Landroid/util/ArraySet;-><init>()V

    .line 75
    invoke-interface {p1}, Ljava/util/List;->size()I

    move-result v0

    const/4 v1, 0x1

    sub-int/2addr v0, v1

    :goto_0
    if-ltz v0, :cond_1

    .line 76
    invoke-interface {p1, v0}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/android/settingslib/drawer/Tile;

    .line 77
    iget-object v2, v2, Lcom/android/settingslib/drawer/Tile;->intent:Landroid/content/Intent;

    invoke-virtual {v2, v1}, Landroid/content/Intent;->toUri(I)Ljava/lang/String;

    move-result-object v2

    .line 78
    invoke-interface {p0, v2}, Ljava/util/Set;->contains(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_0

    .line 79
    invoke-interface {p1, v0}, Ljava/util/List;->remove(I)Ljava/lang/Object;

    goto :goto_1

    .line 81
    :cond_0
    invoke-interface {p0, v2}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    :goto_1
    add-int/lit8 v0, v0, -0x1

    goto :goto_0

    :cond_1
    return-void
.end method


# virtual methods
.method public addSuggestions(Lcom/android/settingslib/suggestions/SuggestionCategory;Ljava/util/List;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/android/settingslib/suggestions/SuggestionCategory;",
            "Ljava/util/List<",
            "Lcom/android/settingslib/drawer/Tile;",
            ">;)V"
        }
    .end annotation

    .line 42
    iget-object p0, p0, Lcom/android/settingslib/suggestions/SuggestionList;->mSuggestions:Ljava/util/Map;

    invoke-interface {p0, p1, p2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    return-void
.end method

.method public getSuggestions()Ljava/util/List;
    .locals 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List<",
            "Lcom/android/settingslib/drawer/Tile;",
            ">;"
        }
    .end annotation

    .line 46
    iget-object v0, p0, Lcom/android/settingslib/suggestions/SuggestionList;->mSuggestionList:Ljava/util/List;

    if-eqz v0, :cond_0

    return-object v0

    .line 49
    :cond_0
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/android/settingslib/suggestions/SuggestionList;->mSuggestionList:Ljava/util/List;

    .line 50
    iget-object v0, p0, Lcom/android/settingslib/suggestions/SuggestionList;->mSuggestions:Ljava/util/Map;

    invoke-interface {v0}, Ljava/util/Map;->values()Ljava/util/Collection;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/Collection;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_1

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/util/List;

    .line 51
    iget-object v2, p0, Lcom/android/settingslib/suggestions/SuggestionList;->mSuggestionList:Ljava/util/List;

    invoke-interface {v2, v1}, Ljava/util/List;->addAll(Ljava/util/Collection;)Z

    goto :goto_0

    .line 53
    :cond_1
    iget-object v0, p0, Lcom/android/settingslib/suggestions/SuggestionList;->mSuggestionList:Ljava/util/List;

    invoke-direct {p0, v0}, Lcom/android/settingslib/suggestions/SuggestionList;->dedupeSuggestions(Ljava/util/List;)V

    .line 54
    iget-object p0, p0, Lcom/android/settingslib/suggestions/SuggestionList;->mSuggestionList:Ljava/util/List;

    return-object p0
.end method

.method public isExclusiveSuggestionCategory()Z
    .locals 3

    .line 58
    iget-object v0, p0, Lcom/android/settingslib/suggestions/SuggestionList;->mSuggestions:Ljava/util/Map;

    invoke-interface {v0}, Ljava/util/Map;->size()I

    move-result v0

    const/4 v1, 0x0

    const/4 v2, 0x1

    if-eq v0, v2, :cond_0

    return v1

    .line 62
    :cond_0
    iget-object p0, p0, Lcom/android/settingslib/suggestions/SuggestionList;->mSuggestions:Ljava/util/Map;

    invoke-interface {p0}, Ljava/util/Map;->keySet()Ljava/util/Set;

    move-result-object p0

    invoke-interface {p0}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object p0

    :cond_1
    invoke-interface {p0}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_2

    invoke-interface {p0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/settingslib/suggestions/SuggestionCategory;

    .line 63
    iget-boolean v0, v0, Lcom/android/settingslib/suggestions/SuggestionCategory;->exclusive:Z

    if-eqz v0, :cond_1

    return v2

    :cond_2
    return v1
.end method
