.class public Lcom/smartisanos/launcher/view/nb;
.super Ljava/lang/Object;
.source "LayerManager.java"


# static fields
.field private static Ww:Lcom/smartisanos/launcher/view/nb;


# instance fields
.field private Rw:Ljava/util/ArrayList;

.field private Sw:Ljava/util/ArrayList;

.field private Tw:Ljava/util/ArrayList;

.field private Uw:Ljava/util/ArrayList;

.field private Vw:Z


# direct methods
.method private constructor <init>()V
    .locals 4

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 v0, 0x1

    .line 2
    iput-boolean v0, p0, Lcom/smartisanos/launcher/view/nb;->Vw:Z

    .line 3
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/smartisanos/launcher/view/nb;->Rw:Ljava/util/ArrayList;

    const/4 v0, 0x0

    move v1, v0

    :goto_0
    const/4 v2, 0x6

    if-ge v1, v2, :cond_0

    .line 4
    new-instance v2, Lcom/smartisanos/launcher/view/jb;

    invoke-direct {v2, p0}, Lcom/smartisanos/launcher/view/jb;-><init>(Lcom/smartisanos/launcher/view/nb;)V

    .line 5
    invoke-virtual {v2, v1}, Lcom/smartisanos/launcher/view/jb;->sa(I)V

    .line 6
    iget-object v3, p0, Lcom/smartisanos/launcher/view/nb;->Rw:Ljava/util/ArrayList;

    invoke-virtual {v3, v2}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    .line 7
    :cond_0
    new-instance v1, Ljava/util/ArrayList;

    invoke-direct {v1}, Ljava/util/ArrayList;-><init>()V

    iput-object v1, p0, Lcom/smartisanos/launcher/view/nb;->Sw:Ljava/util/ArrayList;

    move v1, v0

    :goto_1
    const/4 v2, 0x4

    if-ge v1, v2, :cond_1

    .line 8
    new-instance v2, Lcom/smartisanos/launcher/view/lb;

    invoke-direct {v2, p0}, Lcom/smartisanos/launcher/view/lb;-><init>(Lcom/smartisanos/launcher/view/nb;)V

    .line 9
    invoke-virtual {v2, v1}, Lcom/smartisanos/launcher/view/lb;->sa(I)V

    .line 10
    iget-object v3, p0, Lcom/smartisanos/launcher/view/nb;->Sw:Ljava/util/ArrayList;

    invoke-virtual {v3, v2}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    add-int/lit8 v1, v1, 0x1

    goto :goto_1

    .line 11
    :cond_1
    new-instance v1, Ljava/util/ArrayList;

    invoke-direct {v1}, Ljava/util/ArrayList;-><init>()V

    iput-object v1, p0, Lcom/smartisanos/launcher/view/nb;->Tw:Ljava/util/ArrayList;

    move v1, v0

    :goto_2
    const/4 v2, 0x2

    if-ge v1, v2, :cond_2

    .line 12
    new-instance v2, Lcom/smartisanos/launcher/view/kb;

    invoke-direct {v2, p0}, Lcom/smartisanos/launcher/view/kb;-><init>(Lcom/smartisanos/launcher/view/nb;)V

    .line 13
    invoke-virtual {v2, v1}, Lcom/smartisanos/launcher/view/kb;->sa(I)V

    .line 14
    iget-object v3, p0, Lcom/smartisanos/launcher/view/nb;->Tw:Ljava/util/ArrayList;

    invoke-virtual {v3, v2}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    add-int/lit8 v1, v1, 0x1

    goto :goto_2

    .line 15
    :cond_2
    new-instance v1, Ljava/util/ArrayList;

    invoke-direct {v1}, Ljava/util/ArrayList;-><init>()V

    iput-object v1, p0, Lcom/smartisanos/launcher/view/nb;->Uw:Ljava/util/ArrayList;

    :goto_3
    if-ge v0, v2, :cond_3

    .line 16
    new-instance v1, Lcom/smartisanos/launcher/view/mb;

    invoke-direct {v1, p0}, Lcom/smartisanos/launcher/view/mb;-><init>(Lcom/smartisanos/launcher/view/nb;)V

    .line 17
    invoke-virtual {v1, v0}, Lcom/smartisanos/launcher/view/mb;->sa(I)V

    .line 18
    iget-object v3, p0, Lcom/smartisanos/launcher/view/nb;->Uw:Ljava/util/ArrayList;

    invoke-virtual {v3, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    add-int/lit8 v0, v0, 0x1

    goto :goto_3

    :cond_3
    return-void
.end method

.method public static getInstance()Lcom/smartisanos/launcher/view/nb;
    .locals 1

    .line 1
    sget-object v0, Lcom/smartisanos/launcher/view/nb;->Ww:Lcom/smartisanos/launcher/view/nb;

    if-nez v0, :cond_0

    .line 2
    new-instance v0, Lcom/smartisanos/launcher/view/nb;

    invoke-direct {v0}, Lcom/smartisanos/launcher/view/nb;-><init>()V

    sput-object v0, Lcom/smartisanos/launcher/view/nb;->Ww:Lcom/smartisanos/launcher/view/nb;

    .line 3
    :cond_0
    sget-object v0, Lcom/smartisanos/launcher/view/nb;->Ww:Lcom/smartisanos/launcher/view/nb;

    return-object v0
.end method


# virtual methods
.method public kh()Z
    .locals 0

    .line 1
    iget-boolean p0, p0, Lcom/smartisanos/launcher/view/nb;->Vw:Z

    return p0
.end method

.method public ta(I)Lcom/smartisanos/launcher/view/jb;
    .locals 0

    .line 1
    iget-object p0, p0, Lcom/smartisanos/launcher/view/nb;->Rw:Ljava/util/ArrayList;

    invoke-virtual {p0, p1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Lcom/smartisanos/launcher/view/jb;

    return-object p0
.end method

.method public ua(I)Lcom/smartisanos/launcher/view/kb;
    .locals 0

    .line 1
    iget-object p0, p0, Lcom/smartisanos/launcher/view/nb;->Tw:Ljava/util/ArrayList;

    invoke-virtual {p0, p1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Lcom/smartisanos/launcher/view/kb;

    return-object p0
.end method

.method public va(I)Lcom/smartisanos/launcher/view/lb;
    .locals 0

    .line 1
    iget-object p0, p0, Lcom/smartisanos/launcher/view/nb;->Sw:Ljava/util/ArrayList;

    invoke-virtual {p0, p1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Lcom/smartisanos/launcher/view/lb;

    return-object p0
.end method

.method public wa(I)Lcom/smartisanos/launcher/view/mb;
    .locals 0

    .line 1
    iget-object p0, p0, Lcom/smartisanos/launcher/view/nb;->Uw:Ljava/util/ArrayList;

    invoke-virtual {p0, p1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Lcom/smartisanos/launcher/view/mb;

    return-object p0
.end method
