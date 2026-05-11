.class final Lcom/smartisanos/smengine/da;
.super Ljava/lang/Object;
.source "SceneNode.java"

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field final synthetic this$0:Lcom/smartisanos/smengine/SceneNode;


# direct methods
.method private constructor <init>(Lcom/smartisanos/smengine/SceneNode;)V
    .locals 0

    .line 1
    iput-object p1, p0, Lcom/smartisanos/smengine/da;->this$0:Lcom/smartisanos/smengine/SceneNode;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method synthetic constructor <init>(Lcom/smartisanos/smengine/SceneNode;Lcom/smartisanos/smengine/S;)V
    .locals 0

    .line 2
    invoke-direct {p0, p1}, Lcom/smartisanos/smengine/da;-><init>(Lcom/smartisanos/smengine/SceneNode;)V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 0

    .line 1
    iget-object p0, p0, Lcom/smartisanos/smengine/da;->this$0:Lcom/smartisanos/smengine/SceneNode;

    invoke-virtual {p0}, Lcom/smartisanos/smengine/SceneNode;->performClick()Z

    return-void
.end method
