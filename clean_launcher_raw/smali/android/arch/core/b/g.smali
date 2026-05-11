.class abstract Landroid/arch/core/b/g;
.super Ljava/lang/Object;
.source "SafeIterableMap.java"

# interfaces
.implements Ljava/util/Iterator;
.implements Landroid/arch/core/b/h;


# instance fields
.field A:Landroid/arch/core/b/e;

.field mNext:Landroid/arch/core/b/e;


# direct methods
.method constructor <init>(Landroid/arch/core/b/e;Landroid/arch/core/b/e;)V
    .locals 0

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2
    iput-object p2, p0, Landroid/arch/core/b/g;->A:Landroid/arch/core/b/e;

    .line 3
    iput-object p1, p0, Landroid/arch/core/b/g;->mNext:Landroid/arch/core/b/e;

    return-void
.end method

.method private nextNode()Landroid/arch/core/b/e;
    .locals 2

    .line 1
    iget-object v0, p0, Landroid/arch/core/b/g;->mNext:Landroid/arch/core/b/e;

    iget-object v1, p0, Landroid/arch/core/b/g;->A:Landroid/arch/core/b/e;

    if-eq v0, v1, :cond_1

    if-nez v1, :cond_0

    goto :goto_0

    .line 2
    :cond_0
    invoke-virtual {p0, v0}, Landroid/arch/core/b/g;->c(Landroid/arch/core/b/e;)Landroid/arch/core/b/e;

    move-result-object p0

    return-object p0

    :cond_1
    :goto_0
    const/4 p0, 0x0

    return-object p0
.end method


# virtual methods
.method public a(Landroid/arch/core/b/e;)V
    .locals 1

    .line 1
    iget-object v0, p0, Landroid/arch/core/b/g;->A:Landroid/arch/core/b/e;

    if-ne v0, p1, :cond_0

    iget-object v0, p0, Landroid/arch/core/b/g;->mNext:Landroid/arch/core/b/e;

    if-ne p1, v0, :cond_0

    const/4 v0, 0x0

    .line 2
    iput-object v0, p0, Landroid/arch/core/b/g;->mNext:Landroid/arch/core/b/e;

    .line 3
    iput-object v0, p0, Landroid/arch/core/b/g;->A:Landroid/arch/core/b/e;

    .line 4
    :cond_0
    iget-object v0, p0, Landroid/arch/core/b/g;->A:Landroid/arch/core/b/e;

    if-ne v0, p1, :cond_1

    .line 5
    invoke-virtual {p0, v0}, Landroid/arch/core/b/g;->b(Landroid/arch/core/b/e;)Landroid/arch/core/b/e;

    move-result-object v0

    iput-object v0, p0, Landroid/arch/core/b/g;->A:Landroid/arch/core/b/e;

    .line 6
    :cond_1
    iget-object v0, p0, Landroid/arch/core/b/g;->mNext:Landroid/arch/core/b/e;

    if-ne v0, p1, :cond_2

    .line 7
    invoke-direct {p0}, Landroid/arch/core/b/g;->nextNode()Landroid/arch/core/b/e;

    move-result-object p1

    iput-object p1, p0, Landroid/arch/core/b/g;->mNext:Landroid/arch/core/b/e;

    :cond_2
    return-void
.end method

.method abstract b(Landroid/arch/core/b/e;)Landroid/arch/core/b/e;
.end method

.method abstract c(Landroid/arch/core/b/e;)Landroid/arch/core/b/e;
.end method

.method public hasNext()Z
    .locals 0

    .line 1
    iget-object p0, p0, Landroid/arch/core/b/g;->mNext:Landroid/arch/core/b/e;

    if-eqz p0, :cond_0

    const/4 p0, 0x1

    goto :goto_0

    :cond_0
    const/4 p0, 0x0

    :goto_0
    return p0
.end method

.method public bridge synthetic next()Ljava/lang/Object;
    .locals 0

    .line 1
    invoke-virtual {p0}, Landroid/arch/core/b/g;->next()Ljava/util/Map$Entry;

    move-result-object p0

    return-object p0
.end method

.method public next()Ljava/util/Map$Entry;
    .locals 2

    .line 2
    iget-object v0, p0, Landroid/arch/core/b/g;->mNext:Landroid/arch/core/b/e;

    .line 3
    invoke-direct {p0}, Landroid/arch/core/b/g;->nextNode()Landroid/arch/core/b/e;

    move-result-object v1

    iput-object v1, p0, Landroid/arch/core/b/g;->mNext:Landroid/arch/core/b/e;

    return-object v0
.end method
