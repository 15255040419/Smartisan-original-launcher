.class Landroid/arch/core/b/f;
.super Ljava/lang/Object;
.source "SafeIterableMap.java"

# interfaces
.implements Ljava/util/Iterator;
.implements Landroid/arch/core/b/h;


# instance fields
.field private mCurrent:Landroid/arch/core/b/e;

.field final synthetic this$0:Landroid/arch/core/b/i;

.field private u:Z


# direct methods
.method private constructor <init>(Landroid/arch/core/b/i;)V
    .locals 0

    .line 1
    iput-object p1, p0, Landroid/arch/core/b/f;->this$0:Landroid/arch/core/b/i;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 p1, 0x1

    .line 2
    iput-boolean p1, p0, Landroid/arch/core/b/f;->u:Z

    return-void
.end method

.method synthetic constructor <init>(Landroid/arch/core/b/i;Landroid/arch/core/b/b;)V
    .locals 0

    .line 3
    invoke-direct {p0, p1}, Landroid/arch/core/b/f;-><init>(Landroid/arch/core/b/i;)V

    return-void
.end method


# virtual methods
.method public a(Landroid/arch/core/b/e;)V
    .locals 1

    .line 1
    iget-object v0, p0, Landroid/arch/core/b/f;->mCurrent:Landroid/arch/core/b/e;

    if-ne p1, v0, :cond_1

    .line 2
    iget-object p1, v0, Landroid/arch/core/b/e;->q:Landroid/arch/core/b/e;

    iput-object p1, p0, Landroid/arch/core/b/f;->mCurrent:Landroid/arch/core/b/e;

    .line 3
    iget-object p1, p0, Landroid/arch/core/b/f;->mCurrent:Landroid/arch/core/b/e;

    if-nez p1, :cond_0

    const/4 p1, 0x1

    goto :goto_0

    :cond_0
    const/4 p1, 0x0

    :goto_0
    iput-boolean p1, p0, Landroid/arch/core/b/f;->u:Z

    :cond_1
    return-void
.end method

.method public hasNext()Z
    .locals 3

    .line 1
    iget-boolean v0, p0, Landroid/arch/core/b/f;->u:Z

    const/4 v1, 0x1

    const/4 v2, 0x0

    if-eqz v0, :cond_1

    .line 2
    iget-object p0, p0, Landroid/arch/core/b/f;->this$0:Landroid/arch/core/b/i;

    invoke-static {p0}, Landroid/arch/core/b/i;->a(Landroid/arch/core/b/i;)Landroid/arch/core/b/e;

    move-result-object p0

    if-eqz p0, :cond_0

    goto :goto_0

    :cond_0
    move v1, v2

    :goto_0
    return v1

    .line 3
    :cond_1
    iget-object p0, p0, Landroid/arch/core/b/f;->mCurrent:Landroid/arch/core/b/e;

    if-eqz p0, :cond_2

    iget-object p0, p0, Landroid/arch/core/b/e;->mNext:Landroid/arch/core/b/e;

    if-eqz p0, :cond_2

    goto :goto_1

    :cond_2
    move v1, v2

    :goto_1
    return v1
.end method

.method public bridge synthetic next()Ljava/lang/Object;
    .locals 0

    .line 1
    invoke-virtual {p0}, Landroid/arch/core/b/f;->next()Ljava/util/Map$Entry;

    move-result-object p0

    return-object p0
.end method

.method public next()Ljava/util/Map$Entry;
    .locals 1

    .line 2
    iget-boolean v0, p0, Landroid/arch/core/b/f;->u:Z

    if-eqz v0, :cond_0

    const/4 v0, 0x0

    .line 3
    iput-boolean v0, p0, Landroid/arch/core/b/f;->u:Z

    .line 4
    iget-object v0, p0, Landroid/arch/core/b/f;->this$0:Landroid/arch/core/b/i;

    invoke-static {v0}, Landroid/arch/core/b/i;->a(Landroid/arch/core/b/i;)Landroid/arch/core/b/e;

    move-result-object v0

    iput-object v0, p0, Landroid/arch/core/b/f;->mCurrent:Landroid/arch/core/b/e;

    goto :goto_1

    .line 5
    :cond_0
    iget-object v0, p0, Landroid/arch/core/b/f;->mCurrent:Landroid/arch/core/b/e;

    if-eqz v0, :cond_1

    iget-object v0, v0, Landroid/arch/core/b/e;->mNext:Landroid/arch/core/b/e;

    goto :goto_0

    :cond_1
    const/4 v0, 0x0

    :goto_0
    iput-object v0, p0, Landroid/arch/core/b/f;->mCurrent:Landroid/arch/core/b/e;

    .line 6
    :goto_1
    iget-object p0, p0, Landroid/arch/core/b/f;->mCurrent:Landroid/arch/core/b/e;

    return-object p0
.end method
