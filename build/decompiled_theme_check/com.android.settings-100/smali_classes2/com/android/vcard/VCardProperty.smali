.class public Lcom/android/vcard/VCardProperty;
.super Ljava/lang/Object;
.source "VCardProperty.java"


# static fields
.field private static final LOG_TAG:Ljava/lang/String; = "vCard"


# instance fields
.field private mByteValue:[B

.field private mGroupList:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field private mName:Ljava/lang/String;

.field private mParameterMap:Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Ljava/util/Collection<",
            "Ljava/lang/String;",
            ">;>;"
        }
    .end annotation
.end field

.field private mRawValue:Ljava/lang/String;

.field private mValueList:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method public constructor <init>()V
    .locals 1

    .line 60
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 65
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    iput-object v0, p0, Lcom/android/vcard/VCardProperty;->mParameterMap:Ljava/util/Map;

    return-void
.end method


# virtual methods
.method public addGroup(Ljava/lang/String;)V
    .locals 1

    .line 81
    iget-object v0, p0, Lcom/android/vcard/VCardProperty;->mGroupList:Ljava/util/List;

    if-nez v0, :cond_0

    .line 82
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/android/vcard/VCardProperty;->mGroupList:Ljava/util/List;

    .line 84
    :cond_0
    iget-object p0, p0, Lcom/android/vcard/VCardProperty;->mGroupList:Ljava/util/List;

    invoke-interface {p0, p1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    return-void
.end method

.method public addParameter(Ljava/lang/String;Ljava/lang/String;)V
    .locals 1

    .line 94
    iget-object v0, p0, Lcom/android/vcard/VCardProperty;->mParameterMap:Ljava/util/Map;

    invoke-interface {v0, p1}, Ljava/util/Map;->containsKey(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_1

    const-string v0, "TYPE"

    .line 95
    invoke-virtual {p1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 96
    new-instance v0, Ljava/util/HashSet;

    invoke-direct {v0}, Ljava/util/HashSet;-><init>()V

    goto :goto_0

    .line 98
    :cond_0
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    .line 100
    :goto_0
    iget-object p0, p0, Lcom/android/vcard/VCardProperty;->mParameterMap:Ljava/util/Map;

    invoke-interface {p0, p1, v0}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    goto :goto_1

    .line 102
    :cond_1
    iget-object p0, p0, Lcom/android/vcard/VCardProperty;->mParameterMap:Ljava/util/Map;

    invoke-interface {p0, p1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p0

    move-object v0, p0

    check-cast v0, Ljava/util/Collection;

    .line 104
    :goto_1
    invoke-interface {v0, p2}, Ljava/util/Collection;->add(Ljava/lang/Object;)Z

    return-void
.end method

.method public addValues(Ljava/util/List;)V
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Ljava/lang/String;",
            ">;)V"
        }
    .end annotation

    .line 131
    iget-object v0, p0, Lcom/android/vcard/VCardProperty;->mValueList:Ljava/util/List;

    if-nez v0, :cond_0

    .line 132
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0, p1}, Ljava/util/ArrayList;-><init>(Ljava/util/Collection;)V

    iput-object v0, p0, Lcom/android/vcard/VCardProperty;->mValueList:Ljava/util/List;

    goto :goto_0

    .line 134
    :cond_0
    invoke-interface {v0, p1}, Ljava/util/List;->addAll(Ljava/util/Collection;)Z

    :goto_0
    return-void
.end method

.method public varargs addValues([Ljava/lang/String;)V
    .locals 1

    .line 123
    iget-object v0, p0, Lcom/android/vcard/VCardProperty;->mValueList:Ljava/util/List;

    if-nez v0, :cond_0

    .line 124
    invoke-static {p1}, Ljava/util/Arrays;->asList([Ljava/lang/Object;)Ljava/util/List;

    move-result-object p1

    iput-object p1, p0, Lcom/android/vcard/VCardProperty;->mValueList:Ljava/util/List;

    goto :goto_0

    .line 126
    :cond_0
    invoke-static {p1}, Ljava/util/Arrays;->asList([Ljava/lang/Object;)Ljava/util/List;

    move-result-object p0

    invoke-interface {v0, p0}, Ljava/util/List;->addAll(Ljava/util/Collection;)Z

    :goto_0
    return-void
.end method

.method public getByteValue()[B
    .locals 0

    .line 167
    iget-object p0, p0, Lcom/android/vcard/VCardProperty;->mByteValue:[B

    return-object p0
.end method

.method public getGroupList()Ljava/util/List;
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation

    .line 147
    iget-object p0, p0, Lcom/android/vcard/VCardProperty;->mGroupList:Ljava/util/List;

    return-object p0
.end method

.method public getName()Ljava/lang/String;
    .locals 0

    .line 143
    iget-object p0, p0, Lcom/android/vcard/VCardProperty;->mName:Ljava/lang/String;

    return-object p0
.end method

.method public getParameterMap()Ljava/util/Map;
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Ljava/util/Collection<",
            "Ljava/lang/String;",
            ">;>;"
        }
    .end annotation

    .line 151
    iget-object p0, p0, Lcom/android/vcard/VCardProperty;->mParameterMap:Ljava/util/Map;

    return-object p0
.end method

.method public getParameters(Ljava/lang/String;)Ljava/util/Collection;
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            ")",
            "Ljava/util/Collection<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation

    .line 155
    iget-object p0, p0, Lcom/android/vcard/VCardProperty;->mParameterMap:Ljava/util/Map;

    invoke-interface {p0, p1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Ljava/util/Collection;

    return-object p0
.end method

.method public getRawValue()Ljava/lang/String;
    .locals 0

    .line 159
    iget-object p0, p0, Lcom/android/vcard/VCardProperty;->mRawValue:Ljava/lang/String;

    return-object p0
.end method

.method public getValueList()Ljava/util/List;
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation

    .line 163
    iget-object p0, p0, Lcom/android/vcard/VCardProperty;->mValueList:Ljava/util/List;

    return-object p0
.end method

.method public setByteValue([B)V
    .locals 0

    .line 139
    iput-object p1, p0, Lcom/android/vcard/VCardProperty;->mByteValue:[B

    return-void
.end method

.method public setName(Ljava/lang/String;)V
    .locals 3

    .line 73
    iget-object v0, p0, Lcom/android/vcard/VCardProperty;->mName:Ljava/lang/String;

    if-eqz v0, :cond_0

    const/4 v1, 0x2

    new-array v1, v1, [Ljava/lang/Object;

    const/4 v2, 0x0

    aput-object v0, v1, v2

    const/4 v0, 0x1

    aput-object p1, v1, v0

    const-string v0, "Property name is re-defined (existing: %s, requested: %s"

    .line 74
    invoke-static {v0, v1}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    const-string v1, "vCard"

    invoke-static {v1, v0}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 77
    :cond_0
    iput-object p1, p0, Lcom/android/vcard/VCardProperty;->mName:Ljava/lang/String;

    return-void
.end method

.method public setParameter(Ljava/lang/String;Ljava/lang/String;)V
    .locals 1

    .line 88
    iget-object v0, p0, Lcom/android/vcard/VCardProperty;->mParameterMap:Ljava/util/Map;

    invoke-interface {v0}, Ljava/util/Map;->clear()V

    .line 89
    invoke-virtual {p0, p1, p2}, Lcom/android/vcard/VCardProperty;->addParameter(Ljava/lang/String;Ljava/lang/String;)V

    return-void
.end method

.method public setRawValue(Ljava/lang/String;)V
    .locals 0

    .line 108
    iput-object p1, p0, Lcom/android/vcard/VCardProperty;->mRawValue:Ljava/lang/String;

    return-void
.end method

.method public setValues(Ljava/util/List;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Ljava/lang/String;",
            ">;)V"
        }
    .end annotation

    .line 119
    iput-object p1, p0, Lcom/android/vcard/VCardProperty;->mValueList:Ljava/util/List;

    return-void
.end method

.method public varargs setValues([Ljava/lang/String;)V
    .locals 0

    .line 115
    invoke-static {p1}, Ljava/util/Arrays;->asList([Ljava/lang/Object;)Ljava/util/List;

    move-result-object p1

    iput-object p1, p0, Lcom/android/vcard/VCardProperty;->mValueList:Ljava/util/List;

    return-void
.end method
