.class Lcom/smartisanos/launcher/Ab;
.super Ljava/lang/Object;
.source "ToastManager.java"

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field final synthetic nj:I

.field final synthetic oj:I


# direct methods
.method constructor <init>(II)V
    .locals 0

    .line 1
    iput p1, p0, Lcom/smartisanos/launcher/Ab;->nj:I

    iput p2, p0, Lcom/smartisanos/launcher/Ab;->oj:I

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 1

    .line 1
    iget v0, p0, Lcom/smartisanos/launcher/Ab;->nj:I

    iget p0, p0, Lcom/smartisanos/launcher/Ab;->oj:I

    invoke-static {v0, p0}, Lcom/smartisanos/launcher/Bb;->h(II)V

    return-void
.end method
