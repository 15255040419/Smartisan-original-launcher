.class Lcom/smartisanos/launcher/view/b/j;
.super Ljava/lang/Object;
.source "FolderPageView.java"

# interfaces
.implements Lcom/smartisanos/smengine/aa;


# instance fields
.field final synthetic this$0:Lcom/smartisanos/launcher/view/b/t;


# direct methods
.method constructor <init>(Lcom/smartisanos/launcher/view/b/t;)V
    .locals 0

    .line 1
    iput-object p1, p0, Lcom/smartisanos/launcher/view/b/j;->this$0:Lcom/smartisanos/launcher/view/b/t;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public b(Lcom/smartisanos/smengine/SceneNode;)V
    .locals 0

    .line 1
    invoke-static {}, Lcom/smartisanos/launcher/view/Eb;->getInstance()Lcom/smartisanos/launcher/view/Eb;

    move-result-object p1

    iget-object p0, p0, Lcom/smartisanos/launcher/view/b/j;->this$0:Lcom/smartisanos/launcher/view/b/t;

    invoke-virtual {p1, p0}, Lcom/smartisanos/launcher/view/Eb;->j(Ljava/lang/Object;)V

    return-void
.end method
