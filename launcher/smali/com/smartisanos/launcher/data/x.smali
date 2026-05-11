.class Lcom/smartisanos/launcher/data/x;
.super Ljava/lang/Object;
.source "DatabaseHandler.java"

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field final synthetic Kq:Z


# direct methods
.method constructor <init>(Z)V
    .locals 0

    .line 1
    iput-boolean p1, p0, Lcom/smartisanos/launcher/data/x;->Kq:Z

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 3

    .line 1
    invoke-static {}, Lcom/smartisanos/launcher/view/Eb;->getInstance()Lcom/smartisanos/launcher/view/Eb;

    move-result-object v0

    .line 2
    iget-boolean p0, p0, Lcom/smartisanos/launcher/data/x;->Kq:Z

    if-eqz p0, :cond_0

    .line 3
    invoke-static {}, Lcom/smartisanos/launcher/ub;->getInstance()Lcom/smartisanos/launcher/ub;

    move-result-object p0

    const/16 v1, 0x800

    const/4 v2, 0x0

    invoke-virtual {p0, v1, v2}, Lcom/smartisanos/launcher/ub;->e(IZ)V

    .line 4
    invoke-virtual {v0}, Lcom/smartisanos/launcher/view/Eb;->gi()V

    .line 5
    invoke-virtual {v0}, Lcom/smartisanos/launcher/view/Eb;->hi()V

    :cond_0
    return-void
.end method
