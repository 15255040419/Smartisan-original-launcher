.class Lcom/smartisanos/launcher/view/b/k;
.super Lcom/smartisanos/smengine/a;
.source "FolderPageView.java"


# instance fields
.field final synthetic Ei:Lcom/smartisanos/launcher/view/a/g;

.field final synthetic this$0:Lcom/smartisanos/launcher/view/b/t;


# direct methods
.method constructor <init>(Lcom/smartisanos/launcher/view/b/t;Lcom/smartisanos/launcher/view/a/g;)V
    .locals 0

    .line 1
    iput-object p1, p0, Lcom/smartisanos/launcher/view/b/k;->this$0:Lcom/smartisanos/launcher/view/b/t;

    iput-object p2, p0, Lcom/smartisanos/launcher/view/b/k;->Ei:Lcom/smartisanos/launcher/view/a/g;

    invoke-direct {p0}, Lcom/smartisanos/smengine/a;-><init>()V

    return-void
.end method


# virtual methods
.method public onComplete()V
    .locals 0

    return-void
.end method

.method public onStart()V
    .locals 1

    .line 1
    iget-object p0, p0, Lcom/smartisanos/launcher/view/b/k;->Ei:Lcom/smartisanos/launcher/view/a/g;

    const/4 v0, 0x0

    invoke-virtual {p0, v0}, Lcom/smartisanos/launcher/view/a/g;->cb(Z)V

    return-void
.end method
