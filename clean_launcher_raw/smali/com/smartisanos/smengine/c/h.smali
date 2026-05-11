.class Lcom/smartisanos/smengine/c/h;
.super Ljava/lang/Object;
.source "ShadowManager.java"

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field final synthetic WD:Ljava/lang/Runnable;

.field final synthetic this$0:Lcom/smartisanos/smengine/c/i;


# direct methods
.method constructor <init>(Lcom/smartisanos/smengine/c/i;Ljava/lang/Runnable;)V
    .locals 0

    .line 1
    iput-object p1, p0, Lcom/smartisanos/smengine/c/h;->this$0:Lcom/smartisanos/smengine/c/i;

    iput-object p2, p0, Lcom/smartisanos/smengine/c/h;->WD:Ljava/lang/Runnable;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 0

    .line 1
    iget-object p0, p0, Lcom/smartisanos/smengine/c/h;->WD:Ljava/lang/Runnable;

    invoke-interface {p0}, Ljava/lang/Runnable;->run()V

    return-void
.end method
