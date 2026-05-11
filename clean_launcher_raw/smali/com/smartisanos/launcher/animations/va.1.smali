.class public Lcom/smartisanos/launcher/animations/va;
.super Ljava/lang/Object;
.source "MultiSelectAllCellBackToPageAnimation.java"


# instance fields
.field public Dn:Z

.field private Mn:Lcom/smartisanos/smengine/g;

.field private Nn:Lcom/smartisanos/launcher/data/LayoutProperty;

.field private dl:Lcom/smartisanos/launcher/view/b/fa;

.field public xn:Ljava/util/List;

.field private zn:Ljava/util/ArrayList;


# direct methods
.method public constructor <init>(Lcom/smartisanos/launcher/view/b/fa;Lcom/smartisanos/smengine/g;Ljava/util/List;Lcom/smartisanos/smengine/a;)V
    .locals 1

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/smartisanos/launcher/animations/va;->zn:Ljava/util/ArrayList;

    const/4 v0, 0x0

    .line 3
    iput-boolean v0, p0, Lcom/smartisanos/launcher/animations/va;->Dn:Z

    const/4 v0, 0x1

    .line 4
    iput-boolean v0, p0, Lcom/smartisanos/launcher/animations/va;->Dn:Z

    .line 5
    iput-object p1, p0, Lcom/smartisanos/launcher/animations/va;->dl:Lcom/smartisanos/launcher/view/b/fa;

    .line 6
    iget-object p1, p0, Lcom/smartisanos/launcher/animations/va;->dl:Lcom/smartisanos/launcher/view/b/fa;

    invoke-virtual {p1}, Lcom/smartisanos/launcher/view/b/fa;->getSinglePageMode()I

    move-result p1

    invoke-static {p1}, Lcom/smartisanos/launcher/data/Constants;->mode(I)Lcom/smartisanos/launcher/data/LayoutProperty;

    move-result-object p1

    iput-object p1, p0, Lcom/smartisanos/launcher/animations/va;->Nn:Lcom/smartisanos/launcher/data/LayoutProperty;

    .line 7
    iput-object p2, p0, Lcom/smartisanos/launcher/animations/va;->Mn:Lcom/smartisanos/smengine/g;

    .line 8
    iput-object p3, p0, Lcom/smartisanos/launcher/animations/va;->xn:Ljava/util/List;

    if-eqz p4, :cond_0

    .line 9
    iget-object p1, p0, Lcom/smartisanos/launcher/animations/va;->Mn:Lcom/smartisanos/smengine/g;

    invoke-virtual {p1, p4}, Lcom/smartisanos/smengine/c;->a(Lcom/smartisanos/smengine/a;)V

    .line 10
    :cond_0
    invoke-virtual {p0}, Lcom/smartisanos/launcher/animations/va;->Zd()V

    return-void
.end method

.method private Bw()V
    .locals 4

    const/4 v0, 0x0

    move v1, v0

    .line 1
    :goto_0
    iget-object v2, p0, Lcom/smartisanos/launcher/animations/va;->xn:Ljava/util/List;

    invoke-interface {v2}, Ljava/util/List;->size()I

    move-result v2

    if-ge v1, v2, :cond_0

    .line 2
    iget-object v2, p0, Lcom/smartisanos/launcher/animations/va;->xn:Ljava/util/List;

    invoke-interface {v2, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/smartisanos/launcher/view/a/g;

    .line 3
    new-instance v3, Lcom/smartisanos/launcher/animations/ta;

    invoke-direct {v3, p0, v2}, Lcom/smartisanos/launcher/animations/ta;-><init>(Lcom/smartisanos/launcher/animations/va;Lcom/smartisanos/launcher/view/a/g;)V

    .line 4
    invoke-virtual {v3}, Lcom/smartisanos/launcher/animations/ta;->Xd()V

    .line 5
    iget-object v2, p0, Lcom/smartisanos/launcher/animations/va;->zn:Ljava/util/ArrayList;

    invoke-virtual {v2, v3}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    :cond_0
    move v1, v0

    .line 6
    :goto_1
    iget-object v2, p0, Lcom/smartisanos/launcher/animations/va;->zn:Ljava/util/ArrayList;

    invoke-virtual {v2}, Ljava/util/ArrayList;->size()I

    move-result v2

    if-ge v1, v2, :cond_1

    .line 7
    iget-object v2, p0, Lcom/smartisanos/launcher/animations/va;->zn:Ljava/util/ArrayList;

    invoke-virtual {v2, v1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/smartisanos/launcher/animations/ta;

    .line 8
    iget-object v3, v2, Lcom/smartisanos/launcher/animations/ta;->vn:Ljava/util/ArrayList;

    invoke-virtual {v3, v0}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/smartisanos/launcher/animations/ua;

    .line 9
    invoke-static {v2}, Lcom/smartisanos/launcher/animations/ta;->a(Lcom/smartisanos/launcher/animations/ta;)Lcom/smartisanos/launcher/view/a/g;

    move-result-object v2

    invoke-direct {p0, v3, v2}, Lcom/smartisanos/launcher/animations/va;->a(Lcom/smartisanos/launcher/animations/ua;Lcom/smartisanos/launcher/view/a/g;)V

    add-int/lit8 v1, v1, 0x1

    goto :goto_1

    :cond_1
    return-void
.end method

.method static synthetic a(Lcom/smartisanos/launcher/animations/va;)Lcom/smartisanos/launcher/view/b/fa;
    .locals 0

    .line 1
    iget-object p0, p0, Lcom/smartisanos/launcher/animations/va;->dl:Lcom/smartisanos/launcher/view/b/fa;

    return-object p0
.end method

.method private a(Lcom/smartisanos/launcher/animations/ua;Lcom/smartisanos/launcher/view/a/g;)V
    .locals 9

    .line 2
    new-instance v8, Lcom/smartisanos/smengine/oa;

    invoke-direct {v8, p2}, Lcom/smartisanos/smengine/oa;-><init>(Lcom/smartisanos/smengine/SceneNode;)V

    .line 3
    iget p2, p1, Lcom/smartisanos/launcher/animations/ua;->Em:I

    invoke-virtual {v8, p2}, Lcom/smartisanos/smengine/c;->Ja(I)V

    .line 4
    iget p2, p1, Lcom/smartisanos/launcher/animations/ua;->Cm:F

    invoke-virtual {v8, p2}, Lcom/smartisanos/smengine/c;->p(F)V

    .line 5
    iget-object p2, p1, Lcom/smartisanos/launcher/animations/ua;->um:Lcom/smartisanos/smengine/a/j;

    iget v2, p2, Lcom/smartisanos/smengine/a/j;->x:F

    iget v3, p2, Lcom/smartisanos/smengine/a/j;->y:F

    iget v4, p2, Lcom/smartisanos/smengine/a/j;->z:F

    iget-object p2, p1, Lcom/smartisanos/launcher/animations/ua;->vm:Lcom/smartisanos/smengine/a/j;

    iget v5, p2, Lcom/smartisanos/smengine/a/j;->x:F

    iget v6, p2, Lcom/smartisanos/smengine/a/j;->y:F

    iget v7, p2, Lcom/smartisanos/smengine/a/j;->z:F

    const/4 v1, 0x0

    move-object v0, v8

    invoke-virtual/range {v0 .. v7}, Lcom/smartisanos/smengine/oa;->a(IFFFFFF)V

    .line 6
    iget-object p0, p0, Lcom/smartisanos/launcher/animations/va;->Mn:Lcom/smartisanos/smengine/g;

    iget p1, p1, Lcom/smartisanos/launcher/animations/ua;->Dm:F

    invoke-virtual {p0, p1, v8}, Lcom/smartisanos/smengine/g;->a(FLcom/smartisanos/smengine/c;)V

    return-void
.end method


# virtual methods
.method public Yd()Lcom/smartisanos/smengine/g;
    .locals 0

    .line 1
    iget-object p0, p0, Lcom/smartisanos/launcher/animations/va;->Mn:Lcom/smartisanos/smengine/g;

    return-object p0
.end method

.method public Zd()V
    .locals 0

    .line 1
    invoke-direct {p0}, Lcom/smartisanos/launcher/animations/va;->Bw()V

    return-void
.end method

.method public clear()V
    .locals 2

    const/4 v0, 0x0

    .line 1
    iput-object v0, p0, Lcom/smartisanos/launcher/animations/va;->dl:Lcom/smartisanos/launcher/view/b/fa;

    .line 2
    iget-object v1, p0, Lcom/smartisanos/launcher/animations/va;->xn:Ljava/util/List;

    if-eqz v1, :cond_0

    .line 3
    invoke-interface {v1}, Ljava/util/List;->clear()V

    .line 4
    iput-object v0, p0, Lcom/smartisanos/launcher/animations/va;->xn:Ljava/util/List;

    .line 5
    :cond_0
    iput-object v0, p0, Lcom/smartisanos/launcher/animations/va;->Mn:Lcom/smartisanos/smengine/g;

    .line 6
    iget-object v1, p0, Lcom/smartisanos/launcher/animations/va;->zn:Ljava/util/ArrayList;

    if-eqz v1, :cond_1

    .line 7
    invoke-virtual {v1}, Ljava/util/ArrayList;->clear()V

    .line 8
    iput-object v0, p0, Lcom/smartisanos/launcher/animations/va;->zn:Ljava/util/ArrayList;

    .line 9
    :cond_1
    iput-object v0, p0, Lcom/smartisanos/launcher/animations/va;->Nn:Lcom/smartisanos/launcher/data/LayoutProperty;

    return-void
.end method
