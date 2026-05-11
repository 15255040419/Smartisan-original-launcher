.class public Lcom/smartisanos/launcher/qa;
.super Ljava/lang/Object;
.source "Flags.java"


# static fields
.field private static final Jh:Ljava/util/Map;

.field public static final Kh:I

.field private static final log:Lcom/smartisanos/launcher/va;

.field private static mInstance:Lcom/smartisanos/launcher/qa;


# instance fields
.field private Ih:Ljava/util/HashMap;

.field private volatile mPrivateFlags:I


# direct methods
.method static constructor <clinit>()V
    .locals 3

    .line 1
    const-class v0, Lcom/smartisanos/launcher/qa;

    invoke-static {v0}, Lcom/smartisanos/launcher/va;->e(Ljava/lang/Class;)Lcom/smartisanos/launcher/va;

    move-result-object v0

    sput-object v0, Lcom/smartisanos/launcher/qa;->log:Lcom/smartisanos/launcher/va;

    .line 2
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    sput-object v0, Lcom/smartisanos/launcher/qa;->Jh:Ljava/util/Map;

    .line 3
    sget-object v0, Lcom/smartisanos/launcher/qa;->Jh:Ljava/util/Map;

    const/4 v1, 0x1

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    const-string v2, "FLAG_SHOWING"

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 4
    sget-object v0, Lcom/smartisanos/launcher/qa;->Jh:Ljava/util/Map;

    const/4 v1, 0x2

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    const-string v2, "FLAG_MARK_DATA_CHANGED"

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 5
    sget-object v0, Lcom/smartisanos/launcher/qa;->Jh:Ljava/util/Map;

    const/4 v1, 0x4

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    const-string v2, "FLAG_DRAG_TO_TRASH"

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 6
    new-instance v0, Ljava/util/ArrayList;

    sget-object v1, Lcom/smartisanos/launcher/qa;->Jh:Ljava/util/Map;

    invoke-interface {v1}, Ljava/util/Map;->keySet()Ljava/util/Set;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/util/ArrayList;-><init>(Ljava/util/Collection;)V

    .line 7
    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v0

    const/4 v1, 0x0

    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_0

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/lang/Integer;

    .line 8
    invoke-virtual {v2}, Ljava/lang/Integer;->intValue()I

    move-result v2

    or-int/2addr v1, v2

    goto :goto_0

    .line 9
    :cond_0
    sput v1, Lcom/smartisanos/launcher/qa;->Kh:I

    return-void
.end method

.method public constructor <init>()V
    .locals 1

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    iput-object v0, p0, Lcom/smartisanos/launcher/qa;->Ih:Ljava/util/HashMap;

    const/4 v0, 0x0

    .line 3
    iput v0, p0, Lcom/smartisanos/launcher/qa;->mPrivateFlags:I

    return-void
.end method

.method private a(Ljava/util/HashMap;I)V
    .locals 2

    if-eqz p2, :cond_1

    .line 1
    invoke-virtual {p1}, Ljava/util/HashMap;->size()I

    move-result p0

    if-lez p0, :cond_1

    .line 2
    new-instance p0, Ljava/util/ArrayList;

    invoke-virtual {p1}, Ljava/util/HashMap;->keySet()Ljava/util/Set;

    move-result-object v0

    invoke-direct {p0, v0}, Ljava/util/ArrayList;-><init>(Ljava/util/Collection;)V

    .line 3
    invoke-interface {p0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object p0

    :cond_0
    :goto_0
    invoke-interface {p0}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_1

    invoke-interface {p0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/smartisanos/launcher/pa;

    .line 4
    invoke-virtual {p1, v0}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/Integer;

    invoke-virtual {v1}, Ljava/lang/Integer;->intValue()I

    move-result v1

    and-int/2addr v1, p2

    if-ne v1, p2, :cond_0

    .line 5
    invoke-interface {v0, p2}, Lcom/smartisanos/launcher/pa;->i(I)V

    goto :goto_0

    :cond_1
    return-void
.end method

.method public static getInstance()Lcom/smartisanos/launcher/qa;
    .locals 1

    .line 1
    sget-object v0, Lcom/smartisanos/launcher/qa;->mInstance:Lcom/smartisanos/launcher/qa;

    if-nez v0, :cond_0

    .line 2
    new-instance v0, Lcom/smartisanos/launcher/qa;

    invoke-direct {v0}, Lcom/smartisanos/launcher/qa;-><init>()V

    sput-object v0, Lcom/smartisanos/launcher/qa;->mInstance:Lcom/smartisanos/launcher/qa;

    .line 3
    :cond_0
    sget-object v0, Lcom/smartisanos/launcher/qa;->mInstance:Lcom/smartisanos/launcher/qa;

    return-object v0
.end method


# virtual methods
.method public I(I)Z
    .locals 0

    .line 1
    iget p0, p0, Lcom/smartisanos/launcher/qa;->mPrivateFlags:I

    and-int/2addr p0, p1

    if-ne p0, p1, :cond_0

    const/4 p0, 0x1

    goto :goto_0

    :cond_0
    const/4 p0, 0x0

    :goto_0
    return p0
.end method

.method public c(IZ)V
    .locals 4

    .line 1
    invoke-virtual {p0, p1}, Lcom/smartisanos/launcher/qa;->I(I)Z

    move-result v0

    if-ne v0, p2, :cond_0

    return-void

    .line 2
    :cond_0
    sget-boolean v0, Lcom/smartisanos/launcher/va;->DBG:Z

    if-eqz v0, :cond_1

    .line 3
    sget-object v0, Lcom/smartisanos/launcher/qa;->Jh:Ljava/util/Map;

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    invoke-interface {v0, v1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    .line 4
    sget-object v1, Lcom/smartisanos/launcher/qa;->log:Lcom/smartisanos/launcher/va;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "updateFlag value ["

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v0, "], ["

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, p2}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    const-string v0, "]"

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v1, v0}, Lcom/smartisanos/launcher/va;->info(Ljava/lang/String;)V

    :cond_1
    if-eqz p2, :cond_2

    .line 5
    iget p2, p0, Lcom/smartisanos/launcher/qa;->mPrivateFlags:I

    or-int/2addr p2, p1

    iput p2, p0, Lcom/smartisanos/launcher/qa;->mPrivateFlags:I

    goto :goto_0

    .line 6
    :cond_2
    iget p2, p0, Lcom/smartisanos/launcher/qa;->mPrivateFlags:I

    not-int v0, p1

    and-int/2addr p2, v0

    iput p2, p0, Lcom/smartisanos/launcher/qa;->mPrivateFlags:I

    .line 7
    :goto_0
    iget-object p2, p0, Lcom/smartisanos/launcher/qa;->Ih:Ljava/util/HashMap;

    invoke-direct {p0, p2, p1}, Lcom/smartisanos/launcher/qa;->a(Ljava/util/HashMap;I)V

    return-void
.end method
