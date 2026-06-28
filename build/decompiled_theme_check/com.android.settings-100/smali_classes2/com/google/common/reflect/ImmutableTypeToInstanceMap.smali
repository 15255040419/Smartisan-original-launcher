.class public final Lcom/google/common/reflect/ImmutableTypeToInstanceMap;
.super Lcom/google/common/collect/ForwardingMap;
.source "ImmutableTypeToInstanceMap.java"

# interfaces
.implements Lcom/google/common/reflect/TypeToInstanceMap;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/google/common/reflect/ImmutableTypeToInstanceMap$Builder;
    }
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "<B:",
        "Ljava/lang/Object;",
        ">",
        "Lcom/google/common/collect/ForwardingMap<",
        "Lcom/google/common/reflect/TypeToken<",
        "+TB;>;TB;>;",
        "Lcom/google/common/reflect/TypeToInstanceMap<",
        "TB;>;"
    }
.end annotation


# instance fields
.field private final delegate:Lcom/google/common/collect/ImmutableMap;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/google/common/collect/ImmutableMap<",
            "Lcom/google/common/reflect/TypeToken<",
            "+TB;>;TB;>;"
        }
    .end annotation
.end field


# direct methods
.method private constructor <init>(Lcom/google/common/collect/ImmutableMap;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/google/common/collect/ImmutableMap<",
            "Lcom/google/common/reflect/TypeToken<",
            "+TB;>;TB;>;)V"
        }
    .end annotation

    .line 99
    invoke-direct {p0}, Lcom/google/common/collect/ForwardingMap;-><init>()V

    .line 100
    iput-object p1, p0, Lcom/google/common/reflect/ImmutableTypeToInstanceMap;->delegate:Lcom/google/common/collect/ImmutableMap;

    return-void
.end method

.method synthetic constructor <init>(Lcom/google/common/collect/ImmutableMap;Lcom/google/common/reflect/ImmutableTypeToInstanceMap$1;)V
    .locals 0

    .line 31
    invoke-direct {p0, p1}, Lcom/google/common/reflect/ImmutableTypeToInstanceMap;-><init>(Lcom/google/common/collect/ImmutableMap;)V

    return-void
.end method

.method public static builder()Lcom/google/common/reflect/ImmutableTypeToInstanceMap$Builder;
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<B:",
            "Ljava/lang/Object;",
            ">()",
            "Lcom/google/common/reflect/ImmutableTypeToInstanceMap$Builder<",
            "TB;>;"
        }
    .end annotation

    .line 41
    new-instance v0, Lcom/google/common/reflect/ImmutableTypeToInstanceMap$Builder;

    const/4 v1, 0x0

    invoke-direct {v0, v1}, Lcom/google/common/reflect/ImmutableTypeToInstanceMap$Builder;-><init>(Lcom/google/common/reflect/ImmutableTypeToInstanceMap$1;)V

    return-object v0
.end method

.method public static of()Lcom/google/common/reflect/ImmutableTypeToInstanceMap;
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<B:",
            "Ljava/lang/Object;",
            ">()",
            "Lcom/google/common/reflect/ImmutableTypeToInstanceMap<",
            "TB;>;"
        }
    .end annotation

    .line 36
    new-instance v0, Lcom/google/common/reflect/ImmutableTypeToInstanceMap;

    invoke-static {}, Lcom/google/common/collect/ImmutableMap;->of()Lcom/google/common/collect/ImmutableMap;

    move-result-object v1

    invoke-direct {v0, v1}, Lcom/google/common/reflect/ImmutableTypeToInstanceMap;-><init>(Lcom/google/common/collect/ImmutableMap;)V

    return-object v0
.end method

.method private trustedGet(Lcom/google/common/reflect/TypeToken;)Ljava/lang/Object;
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T:TB;>(",
            "Lcom/google/common/reflect/TypeToken<",
            "TT;>;)TT;"
        }
    .end annotation

    .line 171
    iget-object p0, p0, Lcom/google/common/reflect/ImmutableTypeToInstanceMap;->delegate:Lcom/google/common/collect/ImmutableMap;

    invoke-virtual {p0, p1}, Lcom/google/common/collect/ImmutableMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p0

    return-object p0
.end method


# virtual methods
.method protected bridge synthetic delegate()Ljava/lang/Object;
    .locals 0

    .line 30
    invoke-virtual {p0}, Lcom/google/common/reflect/ImmutableTypeToInstanceMap;->delegate()Ljava/util/Map;

    move-result-object p0

    return-object p0
.end method

.method protected delegate()Ljava/util/Map;
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/Map<",
            "Lcom/google/common/reflect/TypeToken<",
            "+TB;>;TB;>;"
        }
    .end annotation

    .line 166
    iget-object p0, p0, Lcom/google/common/reflect/ImmutableTypeToInstanceMap;->delegate:Lcom/google/common/collect/ImmutableMap;

    return-object p0
.end method

.method public getInstance(Lcom/google/common/reflect/TypeToken;)Ljava/lang/Object;
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T:TB;>(",
            "Lcom/google/common/reflect/TypeToken<",
            "TT;>;)TT;"
        }
    .end annotation

    .line 105
    invoke-virtual {p1}, Lcom/google/common/reflect/TypeToken;->rejectTypeVariables()Lcom/google/common/reflect/TypeToken;

    move-result-object p1

    invoke-direct {p0, p1}, Lcom/google/common/reflect/ImmutableTypeToInstanceMap;->trustedGet(Lcom/google/common/reflect/TypeToken;)Ljava/lang/Object;

    move-result-object p0

    return-object p0
.end method

.method public getInstance(Ljava/lang/Class;)Ljava/lang/Object;
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T:TB;>(",
            "Ljava/lang/Class<",
            "TT;>;)TT;"
        }
    .end annotation

    .line 110
    invoke-static {p1}, Lcom/google/common/reflect/TypeToken;->of(Ljava/lang/Class;)Lcom/google/common/reflect/TypeToken;

    move-result-object p1

    invoke-direct {p0, p1}, Lcom/google/common/reflect/ImmutableTypeToInstanceMap;->trustedGet(Lcom/google/common/reflect/TypeToken;)Ljava/lang/Object;

    move-result-object p0

    return-object p0
.end method

.method public put(Lcom/google/common/reflect/TypeToken;Ljava/lang/Object;)Ljava/lang/Object;
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/google/common/reflect/TypeToken<",
            "+TB;>;TB;)TB;"
        }
    .end annotation

    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    .line 149
    new-instance p0, Ljava/lang/UnsupportedOperationException;

    invoke-direct {p0}, Ljava/lang/UnsupportedOperationException;-><init>()V

    throw p0
.end method

.method public bridge synthetic put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;
    .locals 0
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    .line 30
    check-cast p1, Lcom/google/common/reflect/TypeToken;

    invoke-virtual {p0, p1, p2}, Lcom/google/common/reflect/ImmutableTypeToInstanceMap;->put(Lcom/google/common/reflect/TypeToken;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p0

    return-object p0
.end method

.method public putAll(Ljava/util/Map;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/Map<",
            "+",
            "Lcom/google/common/reflect/TypeToken<",
            "+TB;>;+TB;>;)V"
        }
    .end annotation

    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    .line 161
    new-instance p0, Ljava/lang/UnsupportedOperationException;

    invoke-direct {p0}, Ljava/lang/UnsupportedOperationException;-><init>()V

    throw p0
.end method

.method public putInstance(Lcom/google/common/reflect/TypeToken;Ljava/lang/Object;)Ljava/lang/Object;
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T:TB;>(",
            "Lcom/google/common/reflect/TypeToken<",
            "TT;>;TT;)TT;"
        }
    .end annotation

    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    .line 123
    new-instance p0, Ljava/lang/UnsupportedOperationException;

    invoke-direct {p0}, Ljava/lang/UnsupportedOperationException;-><init>()V

    throw p0
.end method

.method public putInstance(Ljava/lang/Class;Ljava/lang/Object;)Ljava/lang/Object;
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T:TB;>(",
            "Ljava/lang/Class<",
            "TT;>;TT;)TT;"
        }
    .end annotation

    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    .line 136
    new-instance p0, Ljava/lang/UnsupportedOperationException;

    invoke-direct {p0}, Ljava/lang/UnsupportedOperationException;-><init>()V

    throw p0
.end method
