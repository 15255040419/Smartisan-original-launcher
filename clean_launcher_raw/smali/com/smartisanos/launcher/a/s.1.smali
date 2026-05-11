.class Lcom/smartisanos/launcher/a/s;
.super Ljava/lang/Object;
.source "DragToDock.java"

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field final synthetic tj:F

.field final synthetic uj:F


# direct methods
.method constructor <init>(FF)V
    .locals 0

    .line 1
    iput p1, p0, Lcom/smartisanos/launcher/a/s;->tj:F

    iput p2, p0, Lcom/smartisanos/launcher/a/s;->uj:F

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 1

    .line 1
    iget v0, p0, Lcom/smartisanos/launcher/a/s;->tj:F

    iget p0, p0, Lcom/smartisanos/launcher/a/s;->uj:F

    invoke-static {v0, p0}, Lcom/smartisanos/launcher/a/t;->d(FF)V

    return-void
.end method
