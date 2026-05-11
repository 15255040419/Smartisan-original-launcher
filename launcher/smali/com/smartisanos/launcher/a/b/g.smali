.class Lcom/smartisanos/launcher/a/b/g;
.super Lcom/smartisanos/smengine/n;
.source "HandleIconSort.java"


# instance fields
.field final synthetic zD:Lcom/smartisanos/launcher/a/b/j;


# direct methods
.method constructor <init>(ILcom/smartisanos/launcher/a/b/j;)V
    .locals 0

    .line 1
    iput-object p2, p0, Lcom/smartisanos/launcher/a/b/g;->zD:Lcom/smartisanos/launcher/a/b/j;

    invoke-direct {p0, p1}, Lcom/smartisanos/smengine/n;-><init>(I)V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 2

    .line 1
    invoke-static {}, Lcom/smartisanos/launcher/a/b/i;->getInstance()Lcom/smartisanos/launcher/a/b/i;

    move-result-object v0

    .line 2
    iget-object p0, p0, Lcom/smartisanos/launcher/a/b/g;->zD:Lcom/smartisanos/launcher/a/b/j;

    invoke-virtual {p0}, Lcom/smartisanos/launcher/a/b/j;->pd()Lcom/smartisanos/launcher/a/b/j;

    move-result-object p0

    const/4 v1, 0x1

    invoke-virtual {v0, v1, p0}, Lcom/smartisanos/launcher/a/b/i;->a(ILcom/smartisanos/launcher/a/b/j;)Z

    return-void
.end method
