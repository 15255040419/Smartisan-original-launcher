.class Lcom/smartisanos/launcher/animations/Sa;
.super Lcom/smartisanos/smengine/n;
.source "RootViewAnimation.java"


# instance fields
.field final synthetic CD:Z


# direct methods
.method constructor <init>(IZ)V
    .locals 0

    .line 1
    iput-boolean p2, p0, Lcom/smartisanos/launcher/animations/Sa;->CD:Z

    invoke-direct {p0, p1}, Lcom/smartisanos/smengine/n;-><init>(I)V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 0

    .line 1
    iget-boolean p0, p0, Lcom/smartisanos/launcher/animations/Sa;->CD:Z

    if-eqz p0, :cond_0

    .line 2
    invoke-static {}, Lcom/smartisanos/launcher/animations/ab;->access$200()V

    goto :goto_0

    .line 3
    :cond_0
    invoke-static {}, Lcom/smartisanos/launcher/animations/ab;->access$300()V

    :goto_0
    return-void
.end method
