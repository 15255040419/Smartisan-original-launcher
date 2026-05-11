.class Lcom/smartisanos/smengine/S;
.super Lcom/smartisanos/smengine/n;
.source "SceneNode.java"


# instance fields
.field final synthetic this$0:Lcom/smartisanos/smengine/SceneNode;

.field final synthetic val$action:Ljava/lang/Runnable;


# direct methods
.method constructor <init>(Lcom/smartisanos/smengine/SceneNode;ILjava/lang/Runnable;)V
    .locals 0

    .line 1
    iput-object p1, p0, Lcom/smartisanos/smengine/S;->this$0:Lcom/smartisanos/smengine/SceneNode;

    iput-object p3, p0, Lcom/smartisanos/smengine/S;->val$action:Ljava/lang/Runnable;

    invoke-direct {p0, p2}, Lcom/smartisanos/smengine/n;-><init>(I)V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 0

    .line 1
    iget-object p0, p0, Lcom/smartisanos/smengine/S;->val$action:Ljava/lang/Runnable;

    invoke-interface {p0}, Ljava/lang/Runnable;->run()V

    return-void
.end method
