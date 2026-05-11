.class Lcom/smartisanos/launcher/actions/sort/color/b;
.super Lcom/smartisanos/launcher/vb;
.source "IconColor.java"


# instance fields
.field final synthetic hj:Lcom/smartisanos/launcher/data/ItemInfo;


# direct methods
.method constructor <init>(ILcom/smartisanos/launcher/data/ItemInfo;)V
    .locals 0

    .line 1
    iput-object p2, p0, Lcom/smartisanos/launcher/actions/sort/color/b;->hj:Lcom/smartisanos/launcher/data/ItemInfo;

    invoke-direct {p0, p1}, Lcom/smartisanos/launcher/vb;-><init>(I)V

    return-void
.end method


# virtual methods
.method public Vc()V
    .locals 1

    .line 1
    new-instance v0, Lcom/smartisanos/launcher/actions/sort/color/a;

    invoke-direct {v0, p0}, Lcom/smartisanos/launcher/actions/sort/color/a;-><init>(Lcom/smartisanos/launcher/actions/sort/color/b;)V

    invoke-static {v0}, Lcom/smartisanos/launcher/data/A;->e(Ljava/lang/Runnable;)V

    return-void
.end method
