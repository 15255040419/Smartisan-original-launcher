.class Lcom/smartisanos/launcher/view/fb;
.super Lcom/smartisanos/smengine/a;
.source "FolderCreatorForMultiSelect.java"


# instance fields
.field final synthetic this$0:Lcom/smartisanos/launcher/view/gb;


# direct methods
.method constructor <init>(Lcom/smartisanos/launcher/view/gb;)V
    .locals 0

    .line 1
    iput-object p1, p0, Lcom/smartisanos/launcher/view/fb;->this$0:Lcom/smartisanos/launcher/view/gb;

    invoke-direct {p0}, Lcom/smartisanos/smengine/a;-><init>()V

    return-void
.end method


# virtual methods
.method public onComplete()V
    .locals 1

    .line 1
    iget-object p0, p0, Lcom/smartisanos/launcher/view/fb;->this$0:Lcom/smartisanos/launcher/view/gb;

    const/4 v0, 0x0

    invoke-virtual {p0, v0}, Lcom/smartisanos/smengine/SceneNode;->setVisibility(Z)V

    return-void
.end method
