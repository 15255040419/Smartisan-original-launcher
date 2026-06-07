.class public La/l/c;
.super La/l/b;
.source "LifecycleRegistry.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        La/l/c$b;
    }
.end annotation


# instance fields
.field public a:La/b/a/b/a;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "La/b/a/b/a<",
            "Landroidx/lifecycle/LifecycleObserver;",
            "La/l/c$b;",
            ">;"
        }
    .end annotation
.end field

.field public b:La/l/b$b;

.field public final c:Ljava/lang/ref/WeakReference;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/lang/ref/WeakReference<",
            "Landroidx/lifecycle/LifecycleOwner;",
            ">;"
        }
    .end annotation
.end field

.field public d:I

.field public e:Z

.field public f:Z

.field public g:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList<",
            "La/l/b$b;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method public constructor <init>(Landroidx/lifecycle/LifecycleOwner;)V
    .locals 1

    .line 1
    invoke-direct {p0}, La/l/b;-><init>()V

    .line 2
    new-instance v0, La/b/a/b/a;

    invoke-direct {v0}, La/b/a/b/a;-><init>()V

    iput-object v0, p0, La/l/c;->a:La/b/a/b/a;

    const/4 v0, 0x0

    .line 3
    iput v0, p0, La/l/c;->d:I

    .line 4
    iput-boolean v0, p0, La/l/c;->e:Z

    .line 5
    iput-boolean v0, p0, La/l/c;->f:Z

    .line 6
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, La/l/c;->g:Ljava/util/ArrayList;

    .line 7
    new-instance v0, Ljava/lang/ref/WeakReference;

    invoke-direct {v0, p1}, Ljava/lang/ref/WeakReference;-><init>(Ljava/lang/Object;)V

    iput-object v0, p0, La/l/c;->c:Ljava/lang/ref/WeakReference;

    .line 8
    sget-object p1, La/l/b$b;->b:La/l/b$b;

    iput-object p1, p0, La/l/c;->b:La/l/b$b;

    return-void
.end method

.method public static a(La/l/b$b;La/l/b$b;)La/l/b$b;
    .locals 1

    if-eqz p1, :cond_0

    .line 31
    invoke-virtual {p1, p0}, Ljava/lang/Enum;->compareTo(Ljava/lang/Enum;)I

    move-result v0

    if-gez v0, :cond_0

    move-object p0, p1

    :cond_0
    return-object p0
.end method

.method public static b(La/l/b$a;)La/l/b$b;
    .locals 3

    .line 13
    sget-object v0, La/l/c$a;->a:[I

    invoke-virtual {p0}, Ljava/lang/Enum;->ordinal()I

    move-result v1

    aget v0, v0, v1

    packed-switch v0, :pswitch_data_0

    .line 14
    new-instance v0, Ljava/lang/IllegalArgumentException;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Unexpected event value "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-direct {v0, p0}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 15
    :pswitch_0
    sget-object p0, La/l/b$b;->a:La/l/b$b;

    return-object p0

    .line 16
    :pswitch_1
    sget-object p0, La/l/b$b;->e:La/l/b$b;

    return-object p0

    .line 17
    :pswitch_2
    sget-object p0, La/l/b$b;->d:La/l/b$b;

    return-object p0

    .line 18
    :pswitch_3
    sget-object p0, La/l/b$b;->c:La/l/b$b;

    return-object p0

    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_3
        :pswitch_3
        :pswitch_2
        :pswitch_2
        :pswitch_1
        :pswitch_0
    .end packed-switch
.end method

.method public static d(La/l/b$b;)La/l/b$a;
    .locals 3

    .line 1
    sget-object v0, La/l/c$a;->b:[I

    invoke-virtual {p0}, Ljava/lang/Enum;->ordinal()I

    move-result v1

    aget v0, v0, v1

    const/4 v1, 0x1

    if-eq v0, v1, :cond_4

    const/4 v1, 0x2

    if-eq v0, v1, :cond_3

    const/4 v1, 0x3

    if-eq v0, v1, :cond_2

    const/4 v1, 0x4

    if-eq v0, v1, :cond_1

    const/4 v1, 0x5

    if-eq v0, v1, :cond_0

    .line 2
    new-instance v0, Ljava/lang/IllegalArgumentException;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Unexpected state value "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-direct {v0, p0}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 3
    :cond_0
    new-instance p0, Ljava/lang/IllegalArgumentException;

    invoke-direct {p0}, Ljava/lang/IllegalArgumentException;-><init>()V

    throw p0

    .line 4
    :cond_1
    sget-object p0, La/l/b$a;->ON_PAUSE:La/l/b$a;

    return-object p0

    .line 5
    :cond_2
    sget-object p0, La/l/b$a;->ON_STOP:La/l/b$a;

    return-object p0

    .line 6
    :cond_3
    sget-object p0, La/l/b$a;->ON_DESTROY:La/l/b$a;

    return-object p0

    .line 7
    :cond_4
    new-instance p0, Ljava/lang/IllegalArgumentException;

    invoke-direct {p0}, Ljava/lang/IllegalArgumentException;-><init>()V

    throw p0
.end method

.method public static e(La/l/b$b;)La/l/b$a;
    .locals 3

    .line 1
    sget-object v0, La/l/c$a;->b:[I

    invoke-virtual {p0}, Ljava/lang/Enum;->ordinal()I

    move-result v1

    aget v0, v0, v1

    const/4 v1, 0x1

    if-eq v0, v1, :cond_4

    const/4 v1, 0x2

    if-eq v0, v1, :cond_3

    const/4 v1, 0x3

    if-eq v0, v1, :cond_2

    const/4 v1, 0x4

    if-eq v0, v1, :cond_1

    const/4 v1, 0x5

    if-ne v0, v1, :cond_0

    goto :goto_0

    .line 2
    :cond_0
    new-instance v0, Ljava/lang/IllegalArgumentException;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Unexpected state value "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-direct {v0, p0}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 3
    :cond_1
    new-instance p0, Ljava/lang/IllegalArgumentException;

    invoke-direct {p0}, Ljava/lang/IllegalArgumentException;-><init>()V

    throw p0

    .line 4
    :cond_2
    sget-object p0, La/l/b$a;->ON_RESUME:La/l/b$a;

    return-object p0

    .line 5
    :cond_3
    sget-object p0, La/l/b$a;->ON_START:La/l/b$a;

    return-object p0

    .line 6
    :cond_4
    :goto_0
    sget-object p0, La/l/b$a;->ON_CREATE:La/l/b$a;

    return-object p0
.end method


# virtual methods
.method public a()La/l/b$b;
    .locals 1

    .line 19
    iget-object v0, p0, La/l/c;->b:La/l/b$b;

    return-object v0
.end method

.method public a(La/l/b$a;)V
    .locals 0

    .line 2
    invoke-static {p1}, La/l/c;->b(La/l/b$a;)La/l/b$b;

    move-result-object p1

    .line 3
    invoke-virtual {p0, p1}, La/l/c;->b(La/l/b$b;)V

    return-void
.end method

.method public a(La/l/b$b;)V
    .locals 0

    .line 1
    invoke-virtual {p0, p1}, La/l/c;->b(La/l/b$b;)V

    return-void
.end method

.method public a(Landroidx/lifecycle/LifecycleObserver;)V
    .locals 6

    .line 4
    iget-object v0, p0, La/l/c;->b:La/l/b$b;

    sget-object v1, La/l/b$b;->a:La/l/b$b;

    if-ne v0, v1, :cond_0

    goto :goto_0

    :cond_0
    sget-object v1, La/l/b$b;->b:La/l/b$b;

    .line 5
    :goto_0
    new-instance v0, La/l/c$b;

    invoke-direct {v0, p1, v1}, La/l/c$b;-><init>(Landroidx/lifecycle/LifecycleObserver;La/l/b$b;)V

    .line 6
    iget-object v1, p0, La/l/c;->a:La/b/a/b/a;

    invoke-virtual {v1, p1, v0}, La/b/a/b/a;->b(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, La/l/c$b;

    if-eqz v1, :cond_1

    return-void

    .line 7
    :cond_1
    iget-object v1, p0, La/l/c;->c:Ljava/lang/ref/WeakReference;

    invoke-virtual {v1}, Ljava/lang/ref/WeakReference;->get()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroidx/lifecycle/LifecycleOwner;

    if-nez v1, :cond_2

    return-void

    .line 8
    :cond_2
    iget v2, p0, La/l/c;->d:I

    const/4 v3, 0x1

    if-nez v2, :cond_4

    iget-boolean v2, p0, La/l/c;->e:Z

    if-eqz v2, :cond_3

    goto :goto_1

    :cond_3
    const/4 v2, 0x0

    goto :goto_2

    :cond_4
    :goto_1
    move v2, v3

    .line 9
    :goto_2
    invoke-virtual {p0, p1}, La/l/c;->c(Landroidx/lifecycle/LifecycleObserver;)La/l/b$b;

    move-result-object v4

    .line 10
    iget v5, p0, La/l/c;->d:I

    add-int/2addr v5, v3

    iput v5, p0, La/l/c;->d:I

    .line 11
    :goto_3
    iget-object v5, v0, La/l/c$b;->a:La/l/b$b;

    invoke-virtual {v5, v4}, Ljava/lang/Enum;->compareTo(Ljava/lang/Enum;)I

    move-result v4

    if-gez v4, :cond_5

    iget-object v4, p0, La/l/c;->a:La/b/a/b/a;

    .line 12
    invoke-virtual {v4, p1}, La/b/a/b/a;->contains(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_5

    .line 13
    iget-object v4, v0, La/l/c$b;->a:La/l/b$b;

    invoke-virtual {p0, v4}, La/l/c;->c(La/l/b$b;)V

    .line 14
    iget-object v4, v0, La/l/c$b;->a:La/l/b$b;

    invoke-static {v4}, La/l/c;->e(La/l/b$b;)La/l/b$a;

    move-result-object v4

    invoke-virtual {v0, v1, v4}, La/l/c$b;->a(Landroidx/lifecycle/LifecycleOwner;La/l/b$a;)V

    .line 15
    invoke-virtual {p0}, La/l/c;->c()V

    .line 16
    invoke-virtual {p0, p1}, La/l/c;->c(Landroidx/lifecycle/LifecycleObserver;)La/l/b$b;

    move-result-object v4

    goto :goto_3

    :cond_5
    if-nez v2, :cond_6

    .line 17
    invoke-virtual {p0}, La/l/c;->d()V

    .line 18
    :cond_6
    iget p1, p0, La/l/c;->d:I

    sub-int/2addr p1, v3

    iput p1, p0, La/l/c;->d:I

    return-void
.end method

.method public final a(Landroidx/lifecycle/LifecycleOwner;)V
    .locals 5

    .line 20
    iget-object v0, p0, La/l/c;->a:La/b/a/b/a;

    .line 21
    invoke-virtual {v0}, Landroidx/arch/core/internal/SafeIterableMap;->descendingIterator()Ljava/util/Iterator;

    move-result-object v0

    .line 22
    :cond_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_1

    iget-boolean v1, p0, La/l/c;->f:Z

    if-nez v1, :cond_1

    .line 23
    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/util/Map$Entry;

    .line 24
    invoke-interface {v1}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, La/l/c$b;

    .line 25
    :goto_0
    iget-object v3, v2, La/l/c$b;->a:La/l/b$b;

    iget-object v4, p0, La/l/c;->b:La/l/b$b;

    invoke-virtual {v3, v4}, Ljava/lang/Enum;->compareTo(Ljava/lang/Enum;)I

    move-result v3

    if-lez v3, :cond_0

    iget-boolean v3, p0, La/l/c;->f:Z

    if-nez v3, :cond_0

    iget-object v3, p0, La/l/c;->a:La/b/a/b/a;

    .line 26
    invoke-interface {v1}, Ljava/util/Map$Entry;->getKey()Ljava/lang/Object;

    move-result-object v4

    invoke-virtual {v3, v4}, La/b/a/b/a;->contains(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_0

    .line 27
    iget-object v3, v2, La/l/c$b;->a:La/l/b$b;

    invoke-static {v3}, La/l/c;->d(La/l/b$b;)La/l/b$a;

    move-result-object v3

    .line 28
    invoke-static {v3}, La/l/c;->b(La/l/b$a;)La/l/b$b;

    move-result-object v4

    invoke-virtual {p0, v4}, La/l/c;->c(La/l/b$b;)V

    .line 29
    invoke-virtual {v2, p1, v3}, La/l/c$b;->a(Landroidx/lifecycle/LifecycleOwner;La/l/b$a;)V

    .line 30
    invoke-virtual {p0}, La/l/c;->c()V

    goto :goto_0

    :cond_1
    return-void
.end method

.method public final b(La/l/b$b;)V
    .locals 1

    .line 1
    iget-object v0, p0, La/l/c;->b:La/l/b$b;

    if-ne v0, p1, :cond_0

    return-void

    .line 2
    :cond_0
    iput-object p1, p0, La/l/c;->b:La/l/b$b;

    .line 3
    iget-boolean p1, p0, La/l/c;->e:Z

    const/4 v0, 0x1

    if-nez p1, :cond_2

    iget p1, p0, La/l/c;->d:I

    if-eqz p1, :cond_1

    goto :goto_0

    .line 4
    :cond_1
    iput-boolean v0, p0, La/l/c;->e:Z

    .line 5
    invoke-virtual {p0}, La/l/c;->d()V

    const/4 p1, 0x0

    .line 6
    iput-boolean p1, p0, La/l/c;->e:Z

    return-void

    .line 7
    :cond_2
    :goto_0
    iput-boolean v0, p0, La/l/c;->f:Z

    return-void
.end method

.method public b(Landroidx/lifecycle/LifecycleObserver;)V
    .locals 1

    .line 12
    iget-object v0, p0, La/l/c;->a:La/b/a/b/a;

    invoke-virtual {v0, p1}, La/b/a/b/a;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    return-void
.end method

.method public final b(Landroidx/lifecycle/LifecycleOwner;)V
    .locals 5

    .line 19
    iget-object v0, p0, La/l/c;->a:La/b/a/b/a;

    .line 20
    invoke-virtual {v0}, Landroidx/arch/core/internal/SafeIterableMap;->b()Landroidx/arch/core/internal/SafeIterableMap$d;

    move-result-object v0

    .line 21
    :cond_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_1

    iget-boolean v1, p0, La/l/c;->f:Z

    if-nez v1, :cond_1

    .line 22
    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/util/Map$Entry;

    .line 23
    invoke-interface {v1}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, La/l/c$b;

    .line 24
    :goto_0
    iget-object v3, v2, La/l/c$b;->a:La/l/b$b;

    iget-object v4, p0, La/l/c;->b:La/l/b$b;

    invoke-virtual {v3, v4}, Ljava/lang/Enum;->compareTo(Ljava/lang/Enum;)I

    move-result v3

    if-gez v3, :cond_0

    iget-boolean v3, p0, La/l/c;->f:Z

    if-nez v3, :cond_0

    iget-object v3, p0, La/l/c;->a:La/b/a/b/a;

    .line 25
    invoke-interface {v1}, Ljava/util/Map$Entry;->getKey()Ljava/lang/Object;

    move-result-object v4

    invoke-virtual {v3, v4}, La/b/a/b/a;->contains(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_0

    .line 26
    iget-object v3, v2, La/l/c$b;->a:La/l/b$b;

    invoke-virtual {p0, v3}, La/l/c;->c(La/l/b$b;)V

    .line 27
    iget-object v3, v2, La/l/c$b;->a:La/l/b$b;

    invoke-static {v3}, La/l/c;->e(La/l/b$b;)La/l/b$a;

    move-result-object v3

    invoke-virtual {v2, p1, v3}, La/l/c$b;->a(Landroidx/lifecycle/LifecycleOwner;La/l/b$a;)V

    .line 28
    invoke-virtual {p0}, La/l/c;->c()V

    goto :goto_0

    :cond_1
    return-void
.end method

.method public final b()Z
    .locals 3

    .line 8
    iget-object v0, p0, La/l/c;->a:La/b/a/b/a;

    invoke-virtual {v0}, Landroidx/arch/core/internal/SafeIterableMap;->size()I

    move-result v0

    const/4 v1, 0x1

    if-nez v0, :cond_0

    return v1

    .line 9
    :cond_0
    iget-object v0, p0, La/l/c;->a:La/b/a/b/a;

    invoke-virtual {v0}, Landroidx/arch/core/internal/SafeIterableMap;->a()Ljava/util/Map$Entry;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, La/l/c$b;

    iget-object v0, v0, La/l/c$b;->a:La/l/b$b;

    .line 10
    iget-object v2, p0, La/l/c;->a:La/b/a/b/a;

    invoke-virtual {v2}, Landroidx/arch/core/internal/SafeIterableMap;->c()Ljava/util/Map$Entry;

    move-result-object v2

    invoke-interface {v2}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, La/l/c$b;

    iget-object v2, v2, La/l/c$b;->a:La/l/b$b;

    if-ne v0, v2, :cond_1

    .line 11
    iget-object v0, p0, La/l/c;->b:La/l/b$b;

    if-ne v0, v2, :cond_1

    goto :goto_0

    :cond_1
    const/4 v1, 0x0

    :goto_0
    return v1
.end method

.method public final c(Landroidx/lifecycle/LifecycleObserver;)La/l/b$b;
    .locals 2

    .line 1
    iget-object v0, p0, La/l/c;->a:La/b/a/b/a;

    invoke-virtual {v0, p1}, La/b/a/b/a;->b(Ljava/lang/Object;)Ljava/util/Map$Entry;

    move-result-object p1

    const/4 v0, 0x0

    if-eqz p1, :cond_0

    .line 2
    invoke-interface {p1}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object p1

    check-cast p1, La/l/c$b;

    iget-object p1, p1, La/l/c$b;->a:La/l/b$b;

    goto :goto_0

    :cond_0
    move-object p1, v0

    .line 3
    :goto_0
    iget-object v1, p0, La/l/c;->g:Ljava/util/ArrayList;

    invoke-virtual {v1}, Ljava/util/ArrayList;->isEmpty()Z

    move-result v1

    if-nez v1, :cond_1

    iget-object v0, p0, La/l/c;->g:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v1

    add-int/lit8 v1, v1, -0x1

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, La/l/b$b;

    .line 4
    :cond_1
    iget-object v1, p0, La/l/c;->b:La/l/b$b;

    invoke-static {v1, p1}, La/l/c;->a(La/l/b$b;La/l/b$b;)La/l/b$b;

    move-result-object p1

    invoke-static {p1, v0}, La/l/c;->a(La/l/b$b;La/l/b$b;)La/l/b$b;

    move-result-object p1

    return-object p1
.end method

.method public final c()V
    .locals 2

    .line 5
    iget-object v0, p0, La/l/c;->g:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v1

    add-int/lit8 v1, v1, -0x1

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->remove(I)Ljava/lang/Object;

    return-void
.end method

.method public final c(La/l/b$b;)V
    .locals 1

    .line 6
    iget-object v0, p0, La/l/c;->g:Ljava/util/ArrayList;

    invoke-virtual {v0, p1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    return-void
.end method

.method public final d()V
    .locals 3

    .line 8
    iget-object v0, p0, La/l/c;->c:Ljava/lang/ref/WeakReference;

    invoke-virtual {v0}, Ljava/lang/ref/WeakReference;->get()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroidx/lifecycle/LifecycleOwner;

    if-nez v0, :cond_0

    const-string v0, "LifecycleRegistry"

    const-string v1, "LifecycleOwner is garbage collected, you shouldn\'t try dispatch new events from it."

    .line 9
    invoke-static {v0, v1}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    return-void

    .line 10
    :cond_0
    :goto_0
    invoke-virtual {p0}, La/l/c;->b()Z

    move-result v1

    const/4 v2, 0x0

    if-nez v1, :cond_2

    .line 11
    iput-boolean v2, p0, La/l/c;->f:Z

    .line 12
    iget-object v1, p0, La/l/c;->b:La/l/b$b;

    iget-object v2, p0, La/l/c;->a:La/b/a/b/a;

    invoke-virtual {v2}, Landroidx/arch/core/internal/SafeIterableMap;->a()Ljava/util/Map$Entry;

    move-result-object v2

    invoke-interface {v2}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, La/l/c$b;

    iget-object v2, v2, La/l/c$b;->a:La/l/b$b;

    invoke-virtual {v1, v2}, Ljava/lang/Enum;->compareTo(Ljava/lang/Enum;)I

    move-result v1

    if-gez v1, :cond_1

    .line 13
    invoke-virtual {p0, v0}, La/l/c;->a(Landroidx/lifecycle/LifecycleOwner;)V

    .line 14
    :cond_1
    iget-object v1, p0, La/l/c;->a:La/b/a/b/a;

    invoke-virtual {v1}, Landroidx/arch/core/internal/SafeIterableMap;->c()Ljava/util/Map$Entry;

    move-result-object v1

    .line 15
    iget-boolean v2, p0, La/l/c;->f:Z

    if-nez v2, :cond_0

    if-eqz v1, :cond_0

    iget-object v2, p0, La/l/c;->b:La/l/b$b;

    .line 16
    invoke-interface {v1}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, La/l/c$b;

    iget-object v1, v1, La/l/c$b;->a:La/l/b$b;

    invoke-virtual {v2, v1}, Ljava/lang/Enum;->compareTo(Ljava/lang/Enum;)I

    move-result v1

    if-lez v1, :cond_0

    .line 17
    invoke-virtual {p0, v0}, La/l/c;->b(Landroidx/lifecycle/LifecycleOwner;)V

    goto :goto_0

    .line 18
    :cond_2
    iput-boolean v2, p0, La/l/c;->f:Z

    return-void
.end method
