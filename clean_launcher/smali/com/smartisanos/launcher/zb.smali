.class Lcom/smartisanos/launcher/zb;
.super Ljava/lang/Object;
.source "ToastManager.java"

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field final synthetic nj:Ljava/lang/String;

.field final synthetic oj:I


# direct methods
.method constructor <init>(Ljava/lang/String;I)V
    .locals 0

    .line 1
    iput-object p1, p0, Lcom/smartisanos/launcher/zb;->nj:Ljava/lang/String;

    iput p2, p0, Lcom/smartisanos/launcher/zb;->oj:I

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/smartisanos/launcher/zb;->nj:Ljava/lang/String;

    iget p0, p0, Lcom/smartisanos/launcher/zb;->oj:I

    invoke-static {v0, p0}, Lcom/smartisanos/launcher/Bb;->g(Ljava/lang/String;I)V

    return-void
.end method
