.class public final Lcom/smartisanos/launcher/animations/x;
.super Ljava/lang/Object;
.source "CellConvertAnimation.java"


# instance fields
.field private Qj:Lcom/smartisanos/launcher/view/a/g;

.field private km:F


# direct methods
.method public constructor <init>(Lcom/smartisanos/launcher/view/a/g;)V
    .locals 0

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2
    iput-object p1, p0, Lcom/smartisanos/launcher/animations/x;->Qj:Lcom/smartisanos/launcher/view/a/g;

    return-void
.end method


# virtual methods
.method public Od()F
    .locals 0

    .line 1
    iget p0, p0, Lcom/smartisanos/launcher/animations/x;->km:F

    return p0
.end method

.method public a(FZ)V
    .locals 0

    .line 1
    iput p1, p0, Lcom/smartisanos/launcher/animations/x;->km:F

    .line 2
    iget-object p0, p0, Lcom/smartisanos/launcher/animations/x;->Qj:Lcom/smartisanos/launcher/view/a/g;

    if-eqz p0, :cond_0

    if-eqz p2, :cond_0

    .line 3
    invoke-virtual {p0, p1}, Lcom/smartisanos/launcher/view/a/g;->t(F)V

    :cond_0
    return-void
.end method

.method public reset()V
    .locals 1

    const/4 v0, 0x0

    .line 1
    iput v0, p0, Lcom/smartisanos/launcher/animations/x;->km:F

    return-void
.end method
