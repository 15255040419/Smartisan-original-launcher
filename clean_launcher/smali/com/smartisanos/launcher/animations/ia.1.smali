.class Lcom/smartisanos/launcher/animations/ia;
.super Lcom/smartisanos/smengine/a;
.source "IconSortAnimation.java"


# instance fields
.field final synthetic this$1:Lcom/smartisanos/launcher/animations/ja;


# direct methods
.method constructor <init>(Lcom/smartisanos/launcher/animations/ja;)V
    .locals 0

    .line 1
    iput-object p1, p0, Lcom/smartisanos/launcher/animations/ia;->this$1:Lcom/smartisanos/launcher/animations/ja;

    invoke-direct {p0}, Lcom/smartisanos/smengine/a;-><init>()V

    return-void
.end method


# virtual methods
.method public onComplete()V
    .locals 1

    .line 1
    iget-object p0, p0, Lcom/smartisanos/launcher/animations/ia;->this$1:Lcom/smartisanos/launcher/animations/ja;

    iget-object p0, p0, Lcom/smartisanos/launcher/animations/ja;->this$0:Lcom/smartisanos/launcher/animations/ma;

    const/4 v0, 0x0

    invoke-static {p0, v0}, Lcom/smartisanos/launcher/animations/ma;->d(Lcom/smartisanos/launcher/animations/ma;Lcom/smartisanos/smengine/g;)Lcom/smartisanos/smengine/g;

    return-void
.end method
